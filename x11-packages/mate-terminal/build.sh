TERMUX_PKG_HOMEPAGE=https://mate-terminal.mate-desktop.dev/
TERMUX_PKG_DESCRIPTION="This is the MATE terminal emulator application"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.24.1
TERMUX_PKG_REVISION=7
TERMUX_PKG_SRCURL=https://github.com/mate-desktop/mate-terminal/releases/download/v$TERMUX_PKG_VERSION/mate-terminal-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=550d38f223d21ab12d39b00af6cd75f083d3790c38d53051537df2ac6a87be62
TERMUX_PKG_DEPENDS="libvte, dconf, gtk3, libsm"
TERMUX_PKG_RM_AFTER_INSTALL="share/glib-2.0/schemas/gschemas.compiled"

termux_step_pre_configure() {
	autoreconf -vfi
}
