#!/bin/sh
export HOME=/config
echo "user:pass" | sudo chpasswd
exec mate-session
