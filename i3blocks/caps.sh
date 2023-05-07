#!/usr/bin/bash

# serà cridat quan es presioni CAPS
caps=$(xset q | grep Caps | awk '{print $4}')

if [ "$caps" == "on" ] ; then
    echo "CAPS"
fi;
