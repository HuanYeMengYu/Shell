#!/usr/bin/env zsh

execute_time=0
record="execute_record.txt"

echo -n > "$record"

while true; do
    zsh test.sh > /dev/null 2> /dev/null

    if [[ $? -ne 0 ]]; then
        echo "Something went wrong" >> "$record"
        echo "The error was using magic numbers" >> "$record"
        break;
    fi
    
    ((execute_time++))

done

echo "Total executions before failure: $execute_time"

cat "$record" 

