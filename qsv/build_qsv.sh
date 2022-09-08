export PKG_CONFIG_PATH=/f/ff/usr/libmfx-x86/lib/pkgconfig:/f/ff/usr/libx264-x86/lib/pkgconfig:$PKG_CONFIG_PATH

./configure --prefix=/f/ff/usr/ffmpeg-x86-qsv \
			--enable-shared \
			--disable-static \
			--disable-doc \
		    --disable-programs \
		    --disable-symver \
		    --disable-bsfs \
		    --disable-indevs \
		    --disable-outdevs \
		    --disable-filters \
    		--disable-postproc \
    		--enable-gpl \
    		--enable-libx264 \
			--enable-libmfx \
			--disable-decoders --enable-decoder=aac --enable-decoder=h264    --enable-decoder=h264_qsv \
			--disable-encoders --enable-encoder=aac --enable-encoder=libx264 --enable-encoder=h264_qsv \
			--disable-demuxers --enable-demuxer=rtsp --enable-demuxer=rtp --enable-demuxer=h264 \
		    --disable-muxers --enable-muxer=rtsp --enable-muxer=rtp --enable-muxer=h264 \
		    --disable-parsers --enable-parser=aac --enable-parser=h264 \
		    --disable-protocols --enable-protocol=file --enable-protocol=rtp --enable-protocol=tcp --enable-protocol=udp \
			--extra-cflags="-I/f/ff/usr/libmfx-x86/include -I/f/ff/usr/libx264-x86/include" \
			--extra-ldflags="-L/f/ff/usr/libmfx-x86/lib -L/f/ff/usr/libx264-x86/lib"

make -j4
make install