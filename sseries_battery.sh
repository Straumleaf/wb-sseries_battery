#!/bin/fish

set ss_critical 10
set ss_report $(rivalcfg --battery-level)

set ss_charge $(echo $ss_report | sed 's/^[^]]*]//' | awk '{print $1}')
set ss_status $(echo $ss_report | awk '{print $1}')

# checking battery current charge for critical level
if test $ss_charge -le $ss_critical; and test $ss_status = 'Discharging'
   set ss_status 'critical'
end

echo "{\"class\": \"$ss_status\", \"percentage\": $ss_charge}"
