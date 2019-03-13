#!/bin/sh
# A shell to check the connection from bj to hk.

proxychains curl google.com

if [ $? -eq 0 ]; then
    echo "success"
    # cd /home/ubuntu/zym_tmp && /usr/sbin/ssmtp z1mm@qq.com < msg.txt
else
    echo "failed. will send email."
    cd /home/ubuntu && /usr/sbin/ssmtp z1mm@qq.com < msg.txt
    cd /home/ubuntu/zym_tmp && /usr/sbin/ssmtp me@fiht.me < msg.txt
fi
