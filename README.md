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
* **app-admin/**
	*	[rdo](app-admin/rdo) **sudo and doas alternative**
* **app-misc/**
	*	[fm6000](app-misc/fm6000)
* **dev-libs/**
	*	[libedit](dev-libs/libedit)
* **dev-util/**
	*	[samurai](dev-util/samurai) **ninja alternative (USE: system-ninja)** `# printf '%s\n' "dev-util/ninja-1.10.2-r1" >> /etc/portage/profile/package.provided`
* **net-misc/**
	*	[sdhcp](net-misc/sdhcp)
* **sys-devel/**
	*	[gettext-tiny](sys-devel/gettext-tiny) **replace gettext ->** `# printf '%s\n' "sys-devel/gettext-0.21-r3" >> /etc/portage/profile/package.provided`
* **sys-libs/**
	*	[netbsd-curses](sys-libs/netbsd-curses) **replace ncurses ->** `# printf '%s\n' "sys-libs/ncurses-6.3_p20220423" >> /etc/portage/profile/package.provided`
* **x11-apps/**
	*	[sx](x11-apps/sx) **startx alternative**
	*	[sxinit](x11-apps/sxinit)
* **x11-misc/**
	*	[repomenu](x11-misc/repomenu)
	*	[repomenu-extra](x11-misc/repomenu-extra)
	*	[repo-exec](x11-misc/repo-exec)
	*	[win-shot](x11-misc/win-shot)
* **x11-wm/**
	*	[repowm](x11-wm/repowm)
* **www-client/**
	*	[ungoogled-chromium-musl](www-client/ungoogled-chromium-musl)
