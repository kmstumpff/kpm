DIR=dogecoin
GIT_URL=https://github.com/dogecoin/dogecoin.git

default:
	brew install autoconf automake berkeley-db boost miniupnpc openssl pkg-config protobuf qt
	git clone $(GIT_URL) $(DIR)
	cd $(DIR) && ./autogen.sh
	cd $(DIR) && ./configure --with-incompatible-bdb
	cd $(DIR) && make
	cd $(DIR) && make check
	cd $(DIR) && make install
	rm -rf $(DIR)/
