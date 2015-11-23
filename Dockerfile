FROM antirek/astolua

RUN git clone https://github.com/pbxware/asterisk-sounds.git /var/lib/asterisk/sounds/ru

ADD after_start.sh /after_start.sh

RUN chmod +x /after_start.sh

CMD ["/after_start.sh"]