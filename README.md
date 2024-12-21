# argqu 🤖

<div align="center">
  <img src="./docs/static/img/argqu_banner.png" alt="argqu Banner" width="100%" />
</div>

<div align="center">

  📖 [Documentation](https://github.com/argqu/Argqu) 
</div>

## 🌍 README Translations

[中文说明](./README_CN.md) | [日本語の説明](./README_JA.md) | [한국어 설명](./README_KOR.md) | [Français](./README_FR.md) 

## ✨ Features

-   🛠️ Full-featured Discord, Twitter and Telegram connectors
-   🔗 Support for every model (Llama, Grok, OpenAI, Anthropic, etc.)
-   👥 Multi-agent and room support
-   📚 Easily ingest and interact with your documents
-   💾 Retrievable memory and document store

## 🎯 Use Cases

-   🤖 Chatbots
-   🕵️ Autonomous Agents
-   🧠 Trading

## 🚀 Quick Start

### Prerequisites

-   [Python 2.7+](https://www.python.org/downloads/)
-   [Node.js 23+](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
-   [pnpm](https://pnpm.io/installation)

> **Note for Windows Users:** [WSL 2](https://learn.microsoft.com/en-us/windows/wsl/install-manual) is required.

### Use the Starter (Recommended)

```bash
git clone https://github.com/argqu/argqu-starter.git
cd argqu-starter
cp .env.example .env
pnpm i && pnpm build && pnpm start
```

Then read the [Documentation](https://argqu.github.io/argqu/) to learn how to customize your argqu.

### Manually Start argqu (Only recommended if you know what you are doing)

```bash
# Clone the repository
git clone https://github.com/argqu/argqu.git

# Checkout the latest release
# This project iterates fast, so we recommend checking out the latest release
git checkout $(git describe --tags --abbrev=0)
```

### Start argqu with Gitpod

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/argqu/argqu/tree/main)

### Edit the .env file

Copy .env.example to .env and fill in the appropriate values.

```
cp .env.example .env
```

Note: .env is optional. If your planning to run multiple distinct agents, you can pass secrets through the character JSON

### Automatically Start argqu

This will run everything to setup the project and start the bot with the default character.

```bash
sh scripts/start.sh
```

### Edit the character file

1. Open `packages/core/src/defaultCharacter.ts` to modify the default character. Uncomment and edit.

2. To load custom characters:
    - Use `pnpm start --characters="path/to/your/character.json"`
    - Multiple character files can be loaded simultaneously
3. Connect with X (Twitter)
    - change `"clients": []` to `"clients": ["twitter"]` in the character file to connect with X

### Manually Start argqu

```bash
pnpm i
pnpm build
pnpm start

# The project iterates fast, sometimes you need to clean the project if you are coming back to the project
pnpm clean
```

#### Additional Requirements

You may need to install Sharp. If you see an error when starting up, try installing it with the following command:

```
pnpm install --include=optional sharp
```

### Community & contact

-   [GitHub Issues](https://github.com/argqu/argqu/issues). Best for: bugs you encounter using argqu, and feature proposals.
-   [Discord](https://discord.gg/argqu). Best for: sharing your applications and hanging out with the community.

## Contributors

<a href="https://github.com/argqu/argqu/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=argqu/argqu" />
</a>

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=argqu/argqu&type=Date)](https://star-history.com/#argqu/argqu&Date)
