#!/bin/bash

systemctl list-units | egrep -o "ceph-osd\@[0-9]+\.service" | xargs -r -I"unit" systemctl status unit > /dev/null && exit 0 || exit 2

