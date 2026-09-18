# AGENTS.md
Every working directory contains an AGENTS.md: directory's purpose, structure, and rules. Root AGENTS.md also covers project-wide details (stack, global rules). Update the affected AGENTS.md when its instructions become outdated or changed. Pair each AGENTS.md with a CLAUDE.md containing only: @AGENTS.md

## Rules
Include README.md in every folder where you have AGENTS.md. It's similar to AGENTS.md, but for humans. Humans do not know the full context of this repo, therefore when writing README.md you must keep things brief, and understandable without knowing the full context of the repo. Include things like a short explanation on the purpose or what it does (similar to TLDR), and a more detailed (but still brief) overview of the folder, and if applicable - the contents, structure (unless the structure is handled at the root instruction files), etc.

Keep all AGENTS.md up to date.

Use `./tmp` folder for temporary files, such as session-storage, including those that you wish not to get committed.

## Structure & Naming Conventions
Unless instructed otherwise, do not fabricate folder/file names, function names, etc; instead, identify the closest standards or naming conventions for the given project, and stick to it. Prioritize modern standards and frameworks. Check with the user anytime you select a standard to follow (let them make the selection). You may deviate from the set standard if the project naturally shifted directions, but you must check with the user anytime you deviate from the original standard, getting user approval first.

Example:
  - If this project is based on k8s, observe k8s standards, including best practices, naming conventions, folder structure, community accepted standards. If this project is based on FluxCD, since FluxCD is based on k8s, observe FluxCD standards first, with fallback to k8s. If you're working with a fork of FluxCd, then observe that fork first, with upstream fallback to FluxCD, then to k8s.
  - If you're working in PHP, determine the closest framework. If you're building a WP plugin, stick to WordPress. If it's a close decision between Laravel and WordPress, choose Laravel because it's more modern. But always try to determine a popular modern standard.