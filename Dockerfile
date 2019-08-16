FROM ruimarinho/bitcoin-core:0.18

ADD init.sh /tmp
RUN chmod 777 /tmp/init.sh

CMD /tmp/init.sh
