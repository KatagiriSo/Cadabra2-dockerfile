FROM debian:buster AS installer

RUN apt update && apt install -y git cmake libpython3-dev python3-dev g++ libgmp3-dev libgtkmm-3.0-dev libboost-all-dev libgmp-dev libsqlite3-dev uuid-dev texlive texlive-latex-extra texlive-science dvipng python3-matplotlib python3-mpmath python3-sympy python3-gmpy2

RUN git clone https://github.com/kpeeters/cadabra2



WORKDIR /cadabra2/build
RUN cmake ..
RUN make
RUN make install


# docker build -t cadabra-new .
# get your ip address ex. for mac, ipconfig getifaddr en0
# xhost + <YOUR_IP_ADDRESS>
# docker run -e DISPLAY=<YOUR_IP_ADDRESS>:0 -v /tmp/.X11-unix:/tmp/.X11-unix --name cadabra-new cadabra-image cadabra2-gtk



