FROM ibmcom/db2

RUN mkdir /var/custom
COPY tx.sh /var/custom
COPY tx.sql /var/custom
RUN chmod 777 /var/custom/tx.sh