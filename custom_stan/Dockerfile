FROM harbor.cyverse.org/vice/rstudio/verse

# the .config directory was downloaded to input through a mounted volume after modification in a running container
# at that point, I copied over some of the necessary text from my local .config/rstudio into the correct files in input/.config
# I also created a themes/ directory and added my custom theme in there
COPY .config /home/rstudio/.config

COPY .Rprofile /home/rstudio/

# copying the .R folder with Makevars
COPY build_imports/.R /home/rstudio/.R

# rstudio owns ~
RUN chown -R rstudio:rstudio /home/rstudio/

# installing libs
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	clang \
    libv8-dev \
    libudunits2-dev \
    libgdal-dev \
    libgeos-dev \
    libproj-dev \
    libxml2 \
    libxml2-dev \
    libglpk-dev

# installing rstan
RUN install2.r --error --deps TRUE \
    rstan \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

# installing Rcpp
RUN install2.r --error --deps FALSE \
    Rcpp \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds


# need to get graph as a dep for igraph
RUN R -e "BiocManager::install('graph')"

# direct installs of a few more deps
RUN install2.r --error --deps TRUE \
    igraph \
    posterior \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

# cmdstanr as a dep for brms
RUN install2.r --error --deps TRUE -r "https://mc-stan.org/r-packages/" \
    cmdstanr \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

RUN install2.r --error --deps TRUE \
    brms \
    tidybayes \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

