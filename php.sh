HOME_DIR=$(pwd)
copied_home_dir="${HOME_DIR}_cp"
cp -r $HOME_DIR $copied_home_dir
cd $copied_home_dir

# 第1階層のphp実行 index.php
ls *.php > /dev/null 2>&1
if [ $? -eq 0 ]; then
        php_file_list=$(echo $(ls *.php) | sed "s/\///g")
        for php_file in $php_file_list
        do
            html_file_name="${php_file%.*}.html"
            touch $html_file_name
            php $php_file | sed "s/.php/.html/g" | sed "s/href=\"\/\"/href=\"index.html\"/g" > $html_file_name
            rm $php_file
        done
    fi

dir_array_parent=$(echo $(ls -d */) | sed "s/\///g")
for dir_parent in $dir_array_parent
do
    if [ $dir_parent == "common" ] || [ $dir_parent == "images" ]; then
        continue
    fi
    cd $dir_parent
    ls *.php > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        php_file_list=$(echo $(ls *.php) | sed "s/\///g")
        for php_file in $php_file_list
        do
            html_file_name="${php_file%.*}.html"
            touch $html_file_name
            php $php_file | sed "s/.php/.html/g" | sed "s/href=\"\/\"/href=\"..\/index.html\"/g" > $html_file_name
            rm $php_file
        done
    fi

    dir_array_child=$(echo $(ls -d */) 2>/dev/null | sed "s/\///g")
    for dir_child in $dir_array_child
    do
        if [ $dir_child == "common" ] || [ $dir_child == "images" ]; then
            continue
        fi
        cd $dir_child
        ls *.php > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            php_file_list=$(echo $(ls *.php) | sed "s/\///g")
            for php_file in $php_file_list
            do
                echo $php_file
                html_file_name="${php_file%.*}.html"
                touch $html_file_name
                php $php_file | sed "s/.php/.html/g" | sed "s/href=\"\/\"/href=\"..\/..\/index.html\"/g" > $html_file_name
                rm $php_file
            done
        fi
        dir_array_grand_child=$(echo $(ls -d */) | sed "s/\///g")
        for dir_grand_child in $dir_array_grand_child
        do
            if [ $dir_grand_child == "common" ] || [ $dir_grand_child == "images" ]; then
                continue
            fi
            cd $dir_grand_child
            ls *.php > /dev/null 2>&1
            if [ $? -eq 0 ]; then
                php_file_list=$(echo $(ls *.php) | sed "s/\///g")
                for php_file in $php_file_list
                do
                    html_file_name="${php_file%.*}.html"
                    touch $html_file_name
                    php $php_file | sed "s/.php/.html/g" | sed "s/href=\"\/\"/href=\"..\/..\/..\/index.html\"/g"  > $html_file_name
                    rm $php_file
                done
            fi
            cd ..
        done
        cd ..
    done
    cd ..
done


