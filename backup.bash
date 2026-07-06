#!/bin/bash

Src="/root/test"
Backup="/root/test_backup.tar.gz"

tar -czvf "$Backup" "$Src"
echo "Backup completed sucessfully"
