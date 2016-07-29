#!/bin/bash

ls /etc | grep "rc[0-9]" &
echo "The Scirpt quits now!"

wait
