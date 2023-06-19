#!/bin/bash

# Variables
source_host="source_host"
source_drive="/dev/sdb"
target_host="target_host"
target_directory="/path/to/backup"
parallel_jobs=4

# Function to image a single partition
image_partition() {
    local partition=$1
    local target_file="${target_directory}/$(basename ${partition}).img"
    rsync -a --progress ${source_host}:${partition} ${target_file}
}

# SSH into the source host and retrieve the list of partitions
partitions=$(ssh ${source_host} lsblk -nro NAME,TYPE,MOUNTPOINT | grep -w part | awk '{print $1}')

# Create the target directory on the target host
ssh ${target_host} mkdir -p ${target_directory}

# Use parallel to image the partitions in parallel
export -f image_partition
echo "${partitions}" | parallel -j ${parallel_jobs} "image_partition {}"

# Spool the images to the target host
spooler --mode=rsync --src=${target_directory} --dst=${target_host}:${target_directory}
