#!/bin/sh

wget -qO- http://update.aegis.aliyun.com/download/uninstall.sh | bash

wget -qO- http://update.aegis.aliyun.com/download/quartz_uninstall.sh | bash

rm -fr /etc/init.d/agentwatch
rm -fr /usr/sbin/aliyun-service
rm -rf /usr/local/aegis*

pkill aliyun-service
