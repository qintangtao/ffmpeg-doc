export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/f/ff/usr/libx264-x86/lib/pkgconfig:$PKG_CONFIG_PATH
echo $PKG_CONFIG_PATH
export PATH='/c/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v10.2/bin':$PATH
echo $PATH
export PATH='/c/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin/amd64':$PATH
echo $PATH



./configure --prefix=/f/ff/usr/ffmpeg-nv-x86 \
			--enable-shared \
			--disable-static \
    		--enable-gpl \
    		--enable-libx264 \
			--enable-cuda-nvcc \
			--enable-nonfree \
			--extra-cflags="-I/f/ff/usr/libx264-x86/include -I/usr/local/include/cuda" \
		    --extra-ldflags="-L/f/ff/usr/libx264-x86/lib -L/usr/local/lib/cuda/Win32"

#make -j4
#make install
#nvcc -gencode arch=compute_30,code=sm_30 -O2 -std=c++11 -m32 -ptx -c -o C:/msys64/tmp/ffconf.ObLQo37l/test.o C:/msys64/tmp/ffconf.ObLQo37l/test.cu
