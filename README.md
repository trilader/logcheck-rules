# logcheck-rules
My additional rules for logcheck

Installing
----------

To install the logcheck rules into your logckeck distribution simply run
```
/path/to/install.sh /path/to/your/logckeck/rules
```
the script will automatically create symbolic links for each rule in this set so they can be updated easily from a single place

The Rules
---------

This package contains some extra rules for SSH, dovecot and spampd.
For SSH the rules filter out a lot of preauth noise from people trying to access the system and being hit with fail2ban or simply connecting and then doing nothing and then running into the idle timeout.

For dovecot the rules also filter most of the pre-auth idle noise and timeouts.

For spampd the rules filter out messages being inspected, accepted, rejected or flagged. The spampd filters are a more or less filter suite for it as logcheck (on Debian systems at least) has no filters for spampd at all.

The postfix rules ignore remote hosts/clients with a incorrect or missing reverse DNS setup and people trying to do SASL authentication with the password "password".

The systemd rules (systemd-extra-debian) were copied form the debian wiki into this repository for my own convenience. I havent't written them myself.
