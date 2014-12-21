#!/bin/bash

perl -p -i -e 's/platform: "mtgox"/platform: "btce"/' config.cson
perl -p -i -e 's/period: "\dh"/period: "2h"/' config.cson
perl -p -i -e 's/init_data_length:\d+/init_data_length:1500/' config.cson

perl -p -i -e 's/key: "BTCE_KEY"/key: "$ENV{BTCE_KEY}"/' keys.cson
perl -p -i -e 's/secret: "BTCE_SECRET"/secret: "$ENV{BTCE_SECRET}"/' keys.cson
