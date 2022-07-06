#!/bin/bash

/etc/init.d/named restart
bash
tail -f /dev/null