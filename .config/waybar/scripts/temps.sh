#!/usr/bin/env bash

read cpu gpu nvme <<<$(sensors | awk '
/Tctl:/ {cpu=int($2)}
/edge:/ {gpu=int($2)}
/Composite:/ && !nvme {nvme=int($2)}
END {print cpu, gpu, nvme}')

class="cool"

if [ "$cpu" -ge 70 ] || [ "$gpu" -ge 70 ]; then
    class="hot"
elif [ "$cpu" -ge 55 ] || [ "$gpu" -ge 55 ]; then
    class="warm"
fi

printf '{"text":" %s°C  󰢮  %s°C   %s°C","class":"%s"}\n' "$cpu" "$gpu" "$nvme" "$class"