#!/bin/sh
#cat ~/Downloads/logs_5/1_urlcheck\ \(1\).txt | tr '\n' ' ' | tr '❌️' '#' | sed -e 's/.md:/.md@/g' | tr '@' '\n'
cat gorfo| sed -e s'/❌️/  - [ ]/' | sed -e s'/^\/\(.*\)\.md:$/- [ ] \1.md/'
