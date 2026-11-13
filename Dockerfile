FROM python:3.12-slim AS build
WORKDIR /src
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Adresse nur für DIESEN Build setzen -- zensical.toml bleibt auf der Pages-Adresse stehen.
# Das Image wird am Server-Root ausgeliefert, deshalb auch die Sprachlinks
# (extra.alternate am Ende vom zensical.toml) ohne /voltfracht-wiki/-Präfix setzen.
ARG SITE_URL=https://voltfracht-wiki.sgio.app/
RUN sed -i "s|^site_url = .*|site_url = \"${SITE_URL}\"|" zensical.toml \
 && grep -qF "site_url = \"${SITE_URL}\"" zensical.toml \
 && sed -i "s|link = \"/voltfracht-wiki/|link = \"/|g" zensical.toml \
 && zensical build --clean

FROM nginx:alpine
COPY --from=build /src/site /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80