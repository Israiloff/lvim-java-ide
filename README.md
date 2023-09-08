# [LunarVim](https://www.lunarvim.org/) configurations.

This project aims to convert [LunarVim](https://www.lunarvim.org/) to the fully usable Java IDE. It enables debugging, refactoring and other Java language related features.

## Requirements

- [Sdkman](https://sdkman.io/)

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

2. Run lvim and install 

- Java test plugin

```bash
:MasonInstall java-test
```

- Java debug adapter plugin


```bash
:MasonInstall java-debug-adapter
```

3. Exit from lvim and clear cache

```bash
lvim +LvimUpdate +LvimCacheReset +q
```

4. Run lvim and install synchronize plugins

```bash
Lazy sync
```
