# Themes Lair

### *The Themes Collection for Kitty*

The Themes Lair is a repository meant to host my themes I made for Kitty on a repository that's not seperated. Note that despite the fact that this is quite the antipode of what one would probably do when trying to host a theme for one to install; however, this is meant as a simple way to host upstreams and allow the general public to distribute, use, edit, and improvise on my themes.

# Installation Guide

There are two ways that one can go for installing any themes listed in this repository: **through kitten and the manual way.** These two methods differ in slightly different ways, but both are easy to execute and can be easily incorporated into kitty. For a little recap on the pros and cons of each method, refer to the Pros and Cons section.

# Pros and Cons

For a basic understanding on the two methods, let me give you a short recap. As you can see, kitten is a command line tool integrated within the kitty terminal. It helps do some utiltiies for basic ricing of the kitty terminal by providing a simple way to change the font, theme, and more. It also provides a way for people to help people find unicode symbols for use in decoration via the unicode-input tool.

On the other hand, the manual way is more old-fashioned. It involes including a configuration file, which has your theme imported into kitty's configurations through `include`. Kitten is preinstalled on most contemporary installations of kitty, so it should be available to you. In this installation guide, the only command we'll really use is `kitten themes.` You can also do `kitty +kitten themes` for the same effect.

## Kitten

### Pros

* Natively preinstalled with kitty, allowing an easier installation than its manual counterpart.
+ Pre-initializes kitty's configuration
- Allows for easier switching between different themes.
* Gives you access to many other themes that are not included in this repo.
- Changes are applied in an instant.

### Cons

+ It does not support every theme in the `theme-lair` repository. Refer to either a) the Manual Installation section or b) the note below for basic information on which themes are supported.

## Manual

### Pros

* Allows for the proper installation of every single theme in this repository *(unlike kitten)*
- Comes with theme-lair themes that are exclusive to the repository

### Cons 

+ Requires general knowledge on kitty's configuration.
- Every file involved has to be set up manually by the user
* Switching is harder than the kitten method.
- Requires a restart of kitty for the changes to apply.

# Installation Guide 

## Kitten Method

Kitten is a tool that often accompanies kitty installations. It helps configure kitty's terminal to the user's needs. This helps set up the user's kitty in a simple but terminal oriented way.

> [!NOTE]
> **Only a select few themes are currently on the official kitty-themes repository where `kitten themes` sources its catalog from. Currently, this is only Paradiso Dark, but more will be integrated in the future.**

To install themes that have been included in the vanilla `kitten-themes` repository, follow these instructions.

+ Use this command. This will execute kitten's built-in theme selector.

```
kitten themes
```

- Select the themes-lair theme you would like on your terminal. **It will share the exact same name as it is on the repository, so feel free to search it up in the theme selector!**
+ Follow kitty's instructions. Select if you would like the theme to appear when the OS is in **dark mode, light mode, or both.** You can also select no preference if you would like that.
* If you've followed everything correctly, the theme should be applied on your device. This guide should apply to any other theme that is hosted in the official repository by extension.

## Manual Method 

The manual method allows a bigger catalog of themes from the Lair, but it is a bit harder. This guide should serve as a beginner's way of installing these themes.

* First of all, clone the repository and cd into it.

```
git clone https://github.com/BrokenSideViewMirror/themes-lair.git && cd themes-lair
```

> [!NOTE]
> There are some other options available, such as just manually downloading the .conf from the repository, using `curl` (Discouraged by me for this use), and probably *many* other methods that would work for fetching a specific file from a Github repository.

+ Secondly, it is encouraged to check for the existence of the `~/.config/kitty/themes` directory. If it does not exist, run

```
sudo mkdir ~/.config/kitty/themes
```

- As a note, you may also use this to make a directory to organize your themes-lair themes instead.

```
sudo mkdir -p ~/.config/kitty/themes/themes-lair
```

> [!WARNING]
> This installation guide will assume that you used `sudo mkdir -p ~/.config/kitty/themes/themes-lair` from this point on. Failure to adapt your directories can lead to a failed installation.

* While you're still in your cloned repository, you can do one of two things.

> [!NOTE]
> Anything in square brackets is meant to be a **placeholder.** Replace them with the actual names of the directories involved.

+ **To copy a single file to the proper directory:**

```
sudo cp themes/[THEME-DIR]/[THEME-NAME].conf ~/.config/kitty/themes/themes-lair/[NEW-NAME].conf
```

*`[NEW-NAME]` can be replaced with anything. For a more organized installation, we encourage you make it the same as `[THEME-NAME]`.*

- You may also install every variation of a theme in a directory by running

```
sudo cp themes/[THEME-DIR]/* ~/.config/kitty/themes/themes-lair/
```

* Modify `~/.config/kitty/kitty.conf` with the text editor of your choice. For this tutorial, we'll use `nano`.

```
sudo nano ~/.config/kitty/kitty.conf
```

+ Use a find method to attempt to find `BEGIN_KITTY_THEME.` For nano, use `CTRL + F` and make it to find the previously mentioned string. For vim/neovim users, your best bet is to put in `/BEGIN_KITTY_THEME` to find it. If you can't, add these lines into the configuration, if it's already added, refer to the warning below.

```
# BEGIN_KITTY_THEME
include themes/themes-lair/[NEW-NAME].conf
# END_KITTY_THEME
```
> [!WARNING]
> If BEGIN_KITTY_THEME already exists, refer to the snippet above; however, comment the initial `include current-theme.conf` or just remove the line and put in the new include line. It should look like this. Failure to do so will lead to a failed installation.

```
# BEGIN_KITTY_THEME
# include current-theme.conf [or whatever it was back then.]
include themes/themes-lair/[NEW-NAME].conf
#END_KITTY_THEME
```

- Finally, exit your editor and restart kitty. You can either close and reopen the window (not encouraged if you're busy with something on the terminal), or reload it with `CTRL + SHIFT + F5`.

# PREVIEWS

> [!NOTE]
> This is currently a WIP, and not all themes have proper previews yet. More are coming soon!
