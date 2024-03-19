# [LunarVim](https://www.lunarvim.org/) configurations.

This project aims to convert [LunarVim](https://www.lunarvim.org/) to the fully usable Java IDE. It enables debugging, refactoring and other Java language related features.

## Requirements

- [Java 21+](https://openjdk.org/projects/jdk/21/) 
- [Maven](https://maven.apache.org/download.cgi)

## Installation

1. Clone [this configs](https://github.com/Israiloff/lvim-java-ide) into **$HOME/.config/lvim/** folder.

```bash
git clone https://github.com/Israiloff/lvim-java-ide.git $HOME/.config/lvim/
```

2. Clone and pack [jdtls](https://github.com/eclipse-jdtls/eclipse.jdt.ls)

```bash
git clone https://github.com/eclipse-jdtls/eclipse.jdt.ls.git $HOME/projects/nvim/jdtls/
cd $HOME/projects/nvim/jdtls/
./mvnw clean verify -DskipTests=true
```

3. Clone, pack and install [java debug](https://github.com/microsoft/java-debug)

```bash
git clone https://github.com/microsoft/java-debug.git $HOME/projects/nvim/java-debug/
cd $HOME/projects/nvim/java-debug/
./mvnw clean install
```

4. Clone and pack [java test](https://github.com/microsoft/vscode-java-test)

```bash
git clone https://github.com/microsoft/vscode-java-test.git $HOME/projects/nvim/java-test/
cd $HOME/projects/nvim/java-test/
npm run build-plugin
```

5. Clone and pack [lemminx](https://github.com/eclipse/lemminx) for XML support

```bash
git clone https://github.com/eclipse/lemminx.git $HOME/projects/nvim/lemminx/
cd $HOME/projects/nvim/lemminx/
./mvnw clean verify -DskipTests
```

6. Download [Lombok](https://projectlombok.org/)

```bash
curl -L https://projectlombok.org/downloads/lombok.jar -o $HOME/projects/nvim/lombok.jar
```

7. Update Lvim and clear cache

```bash
lvim +LvimUpdate +LvimCacheReset +q
```

## Plugins and Tools

### Copilot
Copilot is a plugin for LunarVim that uses OpenAI's Codex to provide code completions and suggestions. 
Completions `(alt+l)` are available in insert mode and suggestions are available in normal mode in which-key menu.

To use it, follow these steps:
- Run `:Copilot setup` and enter your Copilot account credentials.
- Enable the plugin by running `:Copilot enable`

### Open AI. Chat GPT-4
Chat GPT is a plugin for LunarVim that uses OpenAI's GPT-4 to provide code completions and suggestions.

To use it you need to have an OpenAI API key. Set the `OPENAI_API_KEY` environment variable in your shell and run `:ChatGPT enable` in LunarVim.


```shell
echo "export OPENAI_API_KEY=YOUR_PERSONAL_OPENAI_API_KEY" >> $HOME/.zshrc
```

All features are available in the which-key menu.

## Gallery

### Java code
![Java](https://github.com/Israiloff/lvim-java-ide-resources/blob/master/vim_java_code.png)
