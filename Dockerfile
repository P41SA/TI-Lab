FROM debian:10-slim

# Actualizar el sistema y descargar las dependencias   
RUN apt update && apt upgrade -y && apt install -y \
    sudo \
    git \
    python \
    python-pip \
    python3 \
    python3-pip \     
    expect \
    nano \
    vim \
    curl

WORKDIR csh_lab

# Instalar Recon-ng / dmitry / john /dirb
RUN apt install recon-ng -y \
	dmitry \
	recon-ng \
	john \
	dirb \
	steghide \
        proxychains \
	wfuzz \
	autopsy

# Kali wordlists
RUN git clone https://github.com/badunit/kali-wordlists

# Instalar responder.py
RUN git clone https://github.com/lgandx/Responder 
RUN cd Responder && pip install -r requirements.txt

	#puerto que utiliza responder
		EXPOSE 5042


# Instalar peepdf
RUN git clone https://github.com/jesparza/peepdf  
RUN cd peepdf && chmod +x *

# Instalar Torify
RUN git clone https://github.com/Debajyoti0-0/ToriFY.git
RUN cd ToriFY && pip3 install -r requirements.txt
RUN cd ToriFY && chmod +x * && printf "yes\n" ./install.sh


# Instalar pdfid
RUN git clone https://github.com/Rafiot/pdfid.git
#RUN cd pdfid pip install pdfid


# Instalar Oletools
RUN sudo -H pip install -U https://github.com/decalage2/oletools/archive/master.zip







