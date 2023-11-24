# Kawaii-gcc 让GCC变得可爱
让你的GCC编译器变得可爱！

本项目通过修改GCC的输出信息的本地化文件的方式让GCC变得可爱。

欢迎贡献更多有趣的内容。

## 依赖
- GNU GCC
- GNU Gettext

## 如何使用？
### Linux (以Ubuntu为例)

> [中文版使用教程视频-Bilibili](https://www.bilibili.com/video/BV1gC4y1P7t3/)
>
> [日语版使用教程视频-Bilibili](https://www.bilibili.com/video/BV1Wg4y1X74a/)
>
> [日语版使用教程视频-YouTube](https://youtu.be/ASWBU8HhvY0)

- 安装中文 (如果没有安装)

    ```bash
    sudo apt-get install language-pack-zh-hans language-pack-zh-hans-base
    ```

- 安装 `gcc` ,  `gettext` 和 `g++`.

    ```bash
    sudo apt-get install gcc gettext g++
    ```

- 安装 `gcc locales`

    通过以下命令检查你的`gcc`版本号

    ```bash
    gcc -v
    ```

    我这里是12.3.0.所以我的主版本号是12，安装`gcc-12-locales`

    ```bash
    sudo apt-get install gcc-12-locales
    ```

- 找到你的语言文件的路径。默认会在 `/usr/share/locale/zh_CN/LC_MESSAGES/gcc.mo`. 不过你也有可能找不到该文件或者找到名为`gcc-12.mo`的文件。如果已有相关文件，备份之。 (eg. `sudo mv gcc-12.mo gcc-12.mo.bak`) 如果没有相关文件，无需担心，什么都不需要做。

- 通过以下命令下载仓库中的`mo` 文件然后将其复制到刚才的路径去。

    ```bash
     sudo wget https://github.com/Bill-Haku/kawaii-gcc/raw/main/prebuilt/gcc-zh.mo -O /usr/share/locale/zh_CN/LC_MESSAGES/gcc-12.mo
    ```

    关于文件名：

    - 如果你在上个步骤找到了相关文件，请直接使用原本的名字。
    - 如果没有，首先使用 `gcc-<主版本号>.mo` 。如果发现不起作用，将其重命名为 `gcc.mo`.

- 修改环境变量以将终端语言改为中文：

    ```bash
    vim ~/.bashrc
    
    # Add the following lines
    export LANG="zh_CN.UTF-8"
    export LANGUAGE="zh_CN.UTF-8"
    # Save it in Vim

    source ~/.bashrc
    ```

- 现在你的GCC已经变得可爱了。

    你可以使用附带的 `test.cc` 来试试效果。

    ```bash
    gcc test.cc -Wall
    # -Wall 表示让GCC输出所有警告信息
    ```

### macOS & Windows

暂未实现。欢迎贡献。

## 特别鸣谢

本项目的灵感来自[`gcc-hentai`](https://github.com/Mosklia/gcc-hentai)项目。为了将其推广到日语区，我创建了本仓库、制作了日语版并修改完善了使用说明的诸多细节，最后制作了完全日语的宣传视频发布在YouTube，不料却在Bilibili获得了关注。十分感谢原作者的分享和开源精神。
