#! /bin/sh
  
threshold=80

df_output=$(df)

for field in $df_output; do
  if [[ $field == *% ]]; then
  usage=${field%?}
  break
  fi

  if [[ "$usage" =~ ^[0-9]+$ ]];
  then
  if [ "$usage" -gt "$threshold" ]; then
    echo "Warning: Disk usage is above $threshold. Current usage: $usage"
    else
    echo "Disk usage OK. Current usage: $usage"
  fi
  else
  echo "Error: Unable to determine disk usage"
fi
done
