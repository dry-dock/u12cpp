FROM drydock/u12:tip

ADD . /u12cpp

RUN /u12cpp/install.sh
