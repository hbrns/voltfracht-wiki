# Contributing to VoltFracht Wiki

Thank you for contributing to the VoltFracht Wiki.

The goal of this project is to create a high-quality, accurate, and
community-maintained knowledge base for the VoltFracht game.

## Code of Conduct

Be respectful and constructive in all discussions and contributions.

Contributors are expected to:

- Focus on facts and verifiable information
- Discuss disagreements professionally
- Avoid personal attacks or harassment
- Respect the work of other contributors

## Licensing

Unless explicitly stated otherwise, all contributions are licensed under:

**Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)**

By submitting content, you agree that your contribution may be modified,
redistributed, translated, and reused under this license.

### Contributor Responsibility

You must only submit content that:

- You created yourself, or
- You have the legal right to contribute

Do not copy content from copyrighted websites, books, wikis, videos, or other
sources without permission.

## Language Policy

The wiki is maintained in both German and English.

When possible:

- Create both language versions of new pages.
- Keep information synchronized between languages.
- Clearly indicate if a translation is incomplete.

Recommended structure:

```text
docs/
├── de/
└── en/
```

## Content Standards

Contributions should be:

- Accurate
- Reproducible
- Game-version aware
- Neutral and factual
- Well-structured

Prefer:

- Tables
- Lists
- Screenshots
- Examples
- References to game mechanics

Avoid:

- Speculation presented as fact
- Unverified rumors
- Outdated information
- Excessive personal opinions

Style:

- Source pages are in [Markdown](https://en.wikipedia.org/wiki/Markdown) (.md)
  format
- Line length: 80 characters

## AI-Assisted Contributions

AI-assisted contributions are welcome.

Examples include:

- Mistral AI
- GitHub Copilot
- ChatGPT
- Claude
- Gemini
- Other AI assistants

The human contributor remains fully responsible for:

- Accuracy
- Technical correctness
- Copyright compliance
- Final review

AI-generated content must be reviewed before submission.

### Commit Attribution

Contributors may optionally acknowledge AI assistance in commit messages:

```text
docs: update deals page

AI-Assisted-By: Mistral AI
Reviewed-By: Your Full Name <your.email.address@example.com>
```

or

```text
AI-Assisted-By: Mistral AI
```

AI systems are considered tools and are not recognized as repository maintainers
or decision makers.

## Git Workflow

1. Create a feature branch.
2. Make focused changes.
3. Verify local site generation.
4. Commit with a message following the
   [Conventional Commits v1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)
   specification.
5. Open a Pull Request.

Commit messages MUST follow the format:

```text
type(scope): description
```

Where:
- `type` is required and indicates the kind of change
  (e.g., `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`)
- `(scope)` may be provided after a type. A scope must consist of a noun
  describing a section of the codebase surrounded by parenthesis, e.g.,
  fix(assets):
- The colon `: ` and space after the type are required
- `description` is a concise, imperative-style summary of the change

Examples:

```text
feat: add advanced orders guide
fix: correct truck power table
docs: update hall capacities
chore: update build configuration
refactor: reorganize truck data structure
```

For detailed rules and additional types, see the
[Conventional Commits specification](https://www.conventionalcommits.org/en/v1.0.0/).

## Pull Request Guidelines

A Pull Request should:

- Address a single topic whenever possible
- Include a clear description
- Link related issues when applicable
- Use descriptive commit messages

Before submitting, verify:

- Markdown renders correctly
- Internal links work
- Images load correctly
- Language navigation works
- No obvious factual errors are present

## Images and Media

Preferred formats:

- SVG for diagrams
- PNG for screenshots
- WEBP where appropriate

Use optimized images whenever possible.

Only upload media that can legally be redistributed.

## Maintainer Decisions

Repository maintainers may:

- Request revisions
- Edit submissions
- Reject unsuitable contributions
- Remove inaccurate information

These actions are performed to maintain quality and consistency across the wiki.

Thank you for helping improve the VoltFracht Wiki.
