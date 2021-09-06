#!/bin/bash

curr_ts=$(date '+%s')
sed -i 's/"built_at":.*/"built_at": '$curr_ts'/g' /usr/share/nginx/html/index.json