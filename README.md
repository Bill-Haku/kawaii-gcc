# Kawaii-gcc かわいいGCC

![GitHub Repo stars](https://img.shields.io/github/stars/Bill-Haku/kawaii-gcc) ![GitHub contributors](https://img.shields.io/github/contributors/Bill-Haku/kawaii-gcc) ![GitHub License](https://img.shields.io/github/license/Bill-Haku/kawaii-gcc)

Make your GCC compiler kawaii~!

This project makes the output messages from GCC compiler looks kawaii by editing the localization file of GCC.

Everyone is welcomed to contribute and add more kawaii messages!

[中文版](./README-zh.md)（更改为中文时请优先阅读）

## How to use it?
### Linux (in an Ubuntu example)

> [Demo Video on YouTube(Japanese)](https://youtu.be/ASWBU8HhvY0)

- Install Japanese for your terminal (if not installed)

    ```bash
    sudo apt-get install language-pack-ja language-pack-gnome-ja language-pack-ja-base language-pack-gnome-ja-base
    ```

- Install `gcc` ,  `gettext` and `g++`.

    ```bash
    sudo apt-get install gcc gettext g++
    ```

- Install `gcc locales`

    Check your gcc main version number by:

    ```bash
    gcc -v
    ```

    It is 12.3.0 on my end. So the main version number is 12.

    ```bash
    sudo apt-get install gcc-12-locales
    ```

- Find your gcc language file. Defaultly, it should be found in `/usr/share/locale/ja/LC_MESSAGES/gcc.mo`. However, it is also possible that you cannot find the file or the file is named as `gcc-12.mo`. If there's a related file, back up it. (eg. `sudo mv gcc-12.mo gcc-12.mo.bak`) Don't worry if there's no such file, you need to do nothing.

- Use the following command to download the `mo` file in the project and copy it to the path.

    ```bash
    sudo wget https://github.com/Bill-Haku/kawaii-gcc/raw/main/prebuilt/gcc.mo -O /usr/share/locale/ja/LC_MESSAGES/gcc-12.mo
    ```

    > The `gcc.po` is the localization file for ja_JP, and the `gcc-zh.po` is the localization file for zh_CN. See the [Chinese version README](./README-zh.md) document for more details.

    You can also rebuild the binary file by yourself:

    ```bash
    msgfmt gcc.po -o gcc.mo
    sudo cp gcc.mo /usr/share/locale/ja/LC_MESSAGES/gcc-12.mo
    ```

    Regarding to the file name:

    - If you found an existed file in the last step, use the existed file name.
    - if not, try `gcc-<MAIN VERSION NUMBER>.mo` first, and if it doesn't work, rename it to `gcc.mo`.

- Change terminal environmental variables into Japanese:

    ```bash
    vim ~/.bashrc
    
    # Add the following lines
    export LANG="ja_JP.UTF-8"
    export LANGUAGE="ja_JP.UTF-8"
    # Save it in Vim

    source ~/.bashrc
    ```

- Now your GCC has become kawaii~!

    You can have a try with the `test.cc` provided in the project.

    ```bash
    gcc test.cc -Wall
    # -Wall makes GCC output all the warning messages.
    ```

### Windows

- Install [Cygwin](https://www.cygwin.com)

    - Download and run [setup-x86_64.exe](https://www.cygwin.com/setup-x86_64.exe)

    - Choose `Install from Internet` at the step of `Select Packages`.

    - At the step of `Select Packages`, Set `View` as `Category` and search and select the versions of `gcc-core`, `gcc-g++` and `gettext` under the ALL/Devel panel.

- Suppose your `Cygwin` install directory is `<DIR>` (Defaultly it should be `C:\cygwin`), add the directory `<DIR>\bin` to the Environment Variable `Path`. If there's `mingw` in the `Path`, delete it or move it under the `<DIR>\bin`. Add another Environment Variable `LANG`, and set the value of it into `ja_JP.UTF-8`.

- Move the `gcc.mo` file in the `./prebuilt` directory of this repository to `<DIR>\usr\share\locale\ja\LC_MESSAGES`, keep naming it as `gcc.mo`. Backuping the existed `gcc.mo` file is suggested.

### macOS

You can refer to [this Issue](https://github.com/Bill-Haku/kawaii-gcc/issues/38) and install it using OrbStack.
## Star History

![Star History Chart](https://api.star-history.com/svg?repos=Bill-Haku/kawaii-gcc&type=Date)

## Special Thanks

This project is inspired by [`gcc-hentai`](https://github.com/Mosklia/gcc-hentai). It was a Chinese project, and I created this repo to make a Japanese version and share it to Japanese users. I added the new text, edited and completed some details in the use instructions, and made a video in Japanese to share it. The video got unexpected attention in Chinese users on Bilibili, so I added contents of Chinese in it. Thanks for the sharing and the open-source spirit of the original authors.
