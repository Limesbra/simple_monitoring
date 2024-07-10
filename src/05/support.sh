#!/bin/bash

function top_5_folders_func {
    echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
    for ((i=1; i<=5; i++))
    do
    folders=$(du -h --max-depth=1 $path | sort -hr | head -n 5 | sed -n "${i}p"| awk '{print $2 ", " $1}')
        if [ ! -z "$folders" ]; then
            echo "$i - $folders"
        fi
    done
}

function count_type_files_func {
    count_files=$(find $path -type f | wc -l)
    count_conf_files=$(find $path -type f -name "*.conf" | wc -l)
    count_text_files=$(find $path -type f -name "*.txt" | wc -l)
    count_exec_files=$(find $path -type f -executable | wc -l)
    count_log_files=$(find $path -type f -name "*.log" | wc -l)
    count_arch_files=$(find $path -type f \( -name "*.zip" -o -name "*.gz" -o -name "*.tar" \) | wc -l)
    count_soft_links=$(find $path -type l | wc -l)
    print_number_files_func
}

function print_number_files_func {
    echo "Total number of files = $count_files"
    echo "Number of:"
    echo "Configuration files (with the .conf extension) = $count_conf_files"
    echo "Text files = $count_text_files"
    echo "Executable files = $count_exec_files"
    echo "Log files (with the extension .log) = $count_log_files"
    echo "Archive files = $count_arch_files"
    echo "Symbolic links = $count_soft_links"
}

function top_10_files_func {
    echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
    for ((i=1; i<=10; i++))
    do
        top_files=$(find $path -type f -exec du -h {} + | awk '{print $2 ", " $1}' | sort -hr | sed -n "${i}p")
        if [ ! -z "$top_files" ]; then
            file_name=$(awk -F ', ' '{print $1}' <<<"$top_files")
            type=$(basename "$file_name" | cut -d '.' -f 2)
            echo "$i - $top_files, $type"
        fi
    done
}

function top_10_exec_files_func {
    echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
    for ((i=1; i<=10; i++))
    do
        top_exec=$(find $path -type f -executable -exec du -h {} + | awk '{print $2 ", " $1}' | sort -hr | sed -n "${i}p")
        if [ ! -z "$top_files" ]; then
            file_name=$(awk -F ', ' '{print $1}' <<<"$top_files")
            hash_file=$(md5sum $file_name | awk '{print $1}')
            echo "$i - $top_files, $hash_file"
        fi
    done

}