#!/bin/bash
../TSM UpdateDB
../TSM list woobie
../TSM search woobie
../TSM Show woobie
rm -rf scripts/woobie
mkdir -p scripts
../TSM Install woobie
../TSM GenDateNow