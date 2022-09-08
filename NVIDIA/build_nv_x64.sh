#https://blog.csdn.net/u012117034/article/details/123131144

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/f/ff/usr/libx264-x64/lib/pkgconfig:$PKG_CONFIG_PATH
echo $PKG_CONFIG_PATH

./configure --prefix=/f/ff/usr/ffmpeg-nv-x64-5.0.1 \
			--enable-shared \
			--disable-static \
    		--enable-gpl \
    		--enable-libx264 \
			--enable-cuda-nvcc \
			--enable-libnpp \
			--enable-nonfree \
			--toolchain=msvc \
			--extra-cflags="-I/f/ff/usr/libx264-x64/include -I/usr/local/include/cuda" \
		    --extra-ldflags="-LIBPATH:/f/ff/usr/libx264-x64/lib -LIBPATH:/usr/local/lib/cuda/x64"

#make -j8
#make install