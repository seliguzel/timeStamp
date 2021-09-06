#!/bin/bash

curr_ts=$(date '+%s')
sed -i 's/"deployed_at":.*/"deployed_at": '$curr_ts'/g' /usr/share/nginx/html/index.json
