PATH="$HOME/bin:$PATH"
LD_LIBRARY_PATH="$HOME/lib:${LD_LIBRARY_PATH}"
export PATH LD_LIBRARY_PATH

wget https://gnupg.org/ftp/gcrypt/gnupg/gnupg-2.1.18.tar.bz2
bzcat gnupg-2.1.18.tar.bz2 | tar xf -
cd gnupg-2.1.18
make -f build-aux/speedo.mk native INSTALL_PREFIX="$HOME"

gpg2 --version
