#!/bin/sh
PROG=/node_modules/.bin/kinesalite
node --max_old_space_size=128 $PROG $@
