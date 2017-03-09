#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/.env
for x in $DIR/configs/*; do envsubst < $x > `echo $x | rev | cut -c 10- | rev`.py; done
git clone https://github.com/uchicago-library/ldr_ingress.git && \
    cp ./configs/ingress_conf.py ldr_ingress/config.py
git clone https://github.com/uchicago-library/idnest.git && \
    cp ./configs/idnest_conf.py idnest/config.py
git clone https://github.com/uchicago-library/ldr_materialsuite_endpoint.git && \
    cp ./configs/materialsuite_endpoint_conf.py ldr_materialsuite_endpoint/config.py
git clone https://github.com/uchicago-library/PREMISer.git
    cp ./configs/premiser_conf.py PREMISer/config.py
git clone https://github.com/uchicago-library/ldracquisitions_interface.git 
