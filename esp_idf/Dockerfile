FROM portal_base

RUN apd update; apt install git wget flex bison gperf python3 python3-pip \
	python3-venv cmake ninja-build ccache libffi-dev libssl-dev \
	dfu-util libusb-1.0-0 -y

RUN cd ~; git clone --recursive https://github.com/espressif/esp-idf.git

RUN cd ~/esp-idf; ./install.sh all

RUN echo ". $HOME/esp-idf/export.sh" > ~/src_tools.sh
