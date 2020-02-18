FROM ubuntu

#freeglut3-dev, mesa-utils openGL

RUN apt-get update && apt-get -y install dialog apt-utils
RUN	apt-get -y install \
	x11-apps \
	mesa-utils \
	xvfb \
	build-essential \
	bash-completion
#	freeglut3-dev​​​​​​​ ?

## qt-opensource-5.14.1 pre requisites
#RUN	apt-get -y install \
#	libdbus-1-dev \
#	libxkbcommon-x11-dev \
#	libgssapi-krb5-2


RUN echo "source /etc/profile.d/bash_completion.sh" >> ~/.bashrc