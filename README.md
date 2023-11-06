# [LunarVim](https://www.lunarvim.org/) configurations.

This project aims to convert [LunarVim](https://www.lunarvim.org/) to the fully usable Java IDE. It enables debugging, refactoring and other Java language related features.

## Requirements

- Installed [Sdkman](https://sdkman.io/)

- [Java 17+](https://sdkman.io/jdks) installed via [Sdkman](https://sdkman.io/) 

```bash
sdk install java 20.0.2-oracle
```

- [Maven](https://sdkman.io/sdks#maven) installed via [Sdkman](https://sdkman.io/)

```bash
sdk install maven
```

## Installation

1. Clone [this configs](https://github.com/Israiloff/lvim-java-ide) into **~/.config/lvim/** folder.

```bash
git clone https://github.com/Israiloff/lvim-java-ide.git ~/.config/lvim/
```

2. Clone and pack [jdtls](https://github.com/eclipse-jdtls/eclipse.jdt.ls)

```bash
git clone https://github.com/eclipse-jdtls/eclipse.jdt.ls.git ~/projects/nvim/jdtls/
cd ~/projects/nvim/jdtls/
./mvnw clean verify -DskipTests=true
```

3. Clone, pack and install [java debug](https://github.com/microsoft/java-debug)

```bash
git clone https://github.com/microsoft/vscode-java-test ~/projects/nvim/java-test/
cd ~/projects/nvim/java-debug/
./mvnw clean install
```

4. Clone and pack [java test](https://github.com/microsoft/vscode-java-test)

```bash
git clone https://github.com/microsoft/vscode-java-test.git
cd ~/projects/nvim/java-test/
npm run build-plugin
```

5. Download [Lombok](https://projectlombok.org/)

```bash
wget https://projectlombok.org/downloads/lombok.jar ~/projects/nvim/
```

6. Update Lvim and clear cache

```bash
lvim +LvimUpdate +LvimCacheReset +q
```
