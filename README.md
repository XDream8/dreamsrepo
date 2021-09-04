# dreamsrepo
My Repository for Gentoo

## Add this repository
```sh
# eselect repository add dreamsrepo git https://github.com/XDream8/dreamsrepo.git
```
## Sync
**Using emaint**
```sh
# emaint sync -r dreamsrepo
```

## Packages
* **app-misc/**
	*	[fm6000](app-misc/fm6000)
* **net-misc/**
	*	[sdhcp](net-misc/sdhcp)
* **sys-apps/**
	*	[sbase](sys-apps/sbase)
	*	[ubase](sys-apps/ubase)
* **sys-devel/**
	*	[gettext-tiny](sys-devel/gettext-tiny) **(First you need to remove sys-devel/gettext)**
* **sys-libs/**
	*	[netbsd-curses](sys-libs/netbsd-curses) **(First you need to remove sys-libs/ncurses)**
* **x11-apps/**
	*	[sx](x11-apps/sx)
	*	[sxinit](x11-apps/sxinit)
* **x11-misc/**
	*	[repomenu](x11-misc/repomenu)
	*	[repomenu-extra](x11-misc/repomenu-extra)
	*	[repomenu-schemas](x11-misc/repomenu-schemas)
	*	[repowm-schemas](x11-misc/repowm-schemas)
	*	[wm-maim](x11-misc/wm-maim)
* **x11-wm/**
	*	[repowm](x11-wm/repowm)
