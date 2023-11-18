# Kawaii-gcc かわいいGCC
Make your GCC compiler kawaii~!

This project makes the output messages from GCC compiler looks kawaii by editing the localization file of GCC.

Everyone is welcomed to add more fun messages!

## Dependences
- GNU GCC
- GNU Gettext

## How to use it?
### Linux (in an Ubuntu example)

- Install Japanese for your terminal (if not installed)

    ```bash
    sudo apt-get install language-pack-ja language-pack-gnome-ja language-pack-ja-base language-pack-gnome-ja-base
    ```

- Install `gcc` and `gettext`.

    ```bash
    sudo apt-get install gcc gettext
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

- Use the following command to clone the project from GitHub and compile the `po` file in the project and copy it to the path.

    ```bash
    git clone https://github.com/Bill-Haku/kawaii-gcc
    cd kawaii-gcc
    msgfmt gcc.po -o gcc.mo && sudo cp gcc.mo /usr/share/locale/ja/LC_MESSAGES/gcc-12.mo
    ```

    Regarding to the file name:

    - If you found an existed file in the last step, use the existed file name.
    - if not, try `gcc-<MAIN VERSION NUMBER>.mo` first, and if it doesn't work, rename it to `gcc.mo`.

- Change terminal environmental variables into Japanese:

    ```bash
    vim ~/.bashrc
    
    # Add the following lines
    export LANG="ja.UTF-8"
export LANGUAGE="ja.UTF-8"
    # Save it in Vim

    source ~/.bashrc
    ```

- Now your GCC has become kawaii~!

    You can have a try with the `test.cc` provided in the project.

    ```bash
    gcc test.cc -Wall
    ```

### macOS & Windows

Not implemented yet. Contribution welcomed!
