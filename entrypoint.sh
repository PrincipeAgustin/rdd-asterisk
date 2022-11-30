#!/bin/bash

echo '[INFO] Copying configuration'

cp -f /etc/asterisk-conf/* /etc/asterisk

echo '[INFO] Starting asterisk service'

service asterisk restart

bash