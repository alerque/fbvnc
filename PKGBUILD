# Maintainer: Caleb Maclennan <caleb@alerque.com>
pkgname=fbvnc-git
_gitname=fbvnc
pkgver=0.0.0
pkgrel=1
epoch=
pkgdesc="framebuffer VNC client for embeded system like Raspberry Pi"
arch=('x86_64' 'armv6h')
url="https://github.com/alerque/fbvnc"
license=()
groups=()
depends=()
makedepends=('git')
checkdepends=()
optdepends=()
provides=('fbvnc')
conflicts=('fbvnc')
replaces=()
backup=()
options=()
install=
changelog=
source=('git://github.com/alerque/fbvnc.git')
noextract=()
md5sums=('fb32a72110c7f1dd006fbca9828dc5da')

pkgver() {
  cd $_gitname
  git describe --always | sed 's|-|.|g'
}

build() {
  cd $_gitname
  make
}


package() {
  cd $_gitname
  make DESTDIR="$pkgdir/" install
}

# vim:set ts=2 sw=2 et:
