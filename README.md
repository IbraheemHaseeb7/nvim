# Personal Neovim setup with Lua

## Packages Used

- autoclose
- harpoon
- lsp
- mason
- numbertoggle
- telescope
- treesitter
- undotree

## Pre-Requisites

### Windows
Make sure to have these packages installed in your windows system

- gcc (Download here)
- unzip
- ripgrep

**NOTE**
You cannot download `unzip` and `ripgrep` on your windows machine, for this you first need to have `choco` installed which you can download from this command given below.

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Then simply download these packages using these commands below. Make sure to open your terminal with Administrator rights.

`choco install unzip`

`choco install ripgrep`

## Customizing

- You can change your default leader to whatever you want in `lua/config/remap.lua`
- Select whichever LSP you want to use, by default it will setup for Lua, Python, Javascript, Typescript

## Final Steps

At first, you may see a whole bunch of errors and you start thinking what even in the hell is that? Hol'up, I gotcha ya homie.

You just need to keep pressing enter until that goes away, then go into your `lua/config/packer.lua` file and hit these 2 commads in neovim one by one.

- :so // this command will shout out the file to your system
- :PackerSync // this command will start downloading all the plugins I have setup for you.

If you still see some errors, feel free to contact me [here](https://wa.me/923334574770)

Happy Coding :)
