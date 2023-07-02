FROM debian:10-slim

# Instalar dependencias
RUN apt update && apt upgrade -y && apt install -y \
python \
python3 \
python-pip \
python3-pip \
man \
sudo \
git

# Instalar tools
RUN apt install -y \
dmitry \
recon-ng \
dirb \
dnsutils \
whois \
yara \
tor \
proxychains \
exiftool

#RUN pip install -U oletools 

# creación del usuario
RUN adduser pausa
RUN echo 'pausa:pausa' | chpasswd
RUN usermod -aG sudo pausa
RUN echo 'pausa ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER pausa

WORKDIR /home/pausa

# pdfid
RUN git clone https://github.com/Rafiot/pdfid.git

# darkdump
RUN git clone https://github.com/josh0xA/darkdump
RUN cd darkdump && python3 -m pip install -r requirements.txt

# onioff
RUN git clone https://github.com/k4m4/onioff.git
RUN cd onioff && pip3 install -r requirements.txt

# wig
RUN git clone https://github.com/jekyc/wig
RUN cd wig && sudo python3 setup.py install

# black widow 
RUN git clone https://github.com/1N3/BlackWidow
RUN cd BlackWidow && bash install.sh

# email harvester
RUN git clone https://github.com/maldevel/EmailHarvester
RUN cd EmailHarvester && pip3 install -r requirements.txt

# other helpful repos
RUN mkdir other
RUN cd other && git clone https://github.com/fastfire/deepdarkCTI

COPY osint_resources.txt /home/pausa/other


