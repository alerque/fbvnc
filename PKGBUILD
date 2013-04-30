# Maintainer: Caleb Maclennan <caleb@alerque.com>
pkgname=fbvnc-git
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
source=()
noextract=()
md5sums=('')

_gitname=fbvnc
_gitroot=git://github.com/alerque/fbvnc.git

build() {
  cd "$srcdir"
  if [[ -d "$_gitname" ]]; then
    cd "$_gitname" && git pull origin
  else
    git clone "$_gitroot" "$_gitname"
  fi
  rm -rf "$srcdir/$_gitname-build"
  git clone "$srcdir/$_gitname" "$srcdir/$_gitname-build"
  cd "$srcdir/$_gitname-build"

  make
}

package() {
  cd "$srcdir/$_gitname-build"
  make DESTDIR="$pkgdir/" install
}

# vim:set ts=2 sw=2 et:
