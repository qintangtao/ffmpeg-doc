export PKG_CONFIG_PATH=/f/ff/usr/libmfx-x86/lib/pkgconfig:/f/ff/usr/libx264-x86/lib/pkgconfig:$PKG_CONFIG_PATH
echo $PKG_CONFIG_PATH
./configure --prefix=/f/ff/usr/ffmpeg-qsv-x86 \
			--enable-shared \
			--disable-static \
    		--enable-gpl \
    		--enable-libx264 \
			--enable-libmfx \
			--extra-cflags="-I/f/ff/usr/libmfx-x86/include -I/f/ff/usr/libx264-x86/include" \
		    --extra-ldflags="-L/f/ff/usr/libmfx-x86/lib -L/f/ff/usr/libx264-x86/lib"

#make -j4
#make install