FROM rocker/verse:latest

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	fish

COPY bin/* /usr/local/bin

#RUN apt-update && sudo apt install -y bat
COPY bat_0.20.0_amd64.deb .
RUN sudo dpkg -i bat_0.20.0_amd64.deb && rm bat_0.20.0_amd64.deb 

# the .config directory was downloaded to input through a mounted volume after modification in a running container
# at that point, I copied over some of the necessary text from my local .config/rstudio into the correct files in input/.config
# I also created a themes/ directory and added my custom theme in there
COPY .config /home/rstudio/.config

COPY .Rprofile /home/rstudio/

RUN chown -R rstudio:rstudio /home/rstudio/
