#!/usr/bin/awk -f

BEGIN{FS = ";"}

NF > 0 {
for (i = 1; i < NF; i++) printf "%s  ",$i
print $NF
}
