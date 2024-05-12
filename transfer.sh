# 定义源文件夹和目标IP
source_folder="/home/pi"
destination_ip="121.40.137.191"

# 查找以.jpe结尾的文件
files=$(find "$source_folder" -type f -name "*.jpg")

# 循环处理每个找到的文件
for file in $files; do
    # 通过scp传输文件到目标机器
    scp "$file" root@$destination_ip:/usr/share/nginx/html/image

    # 检查传输是否成功
    if [ $? -eq 0 ]; then
        echo "文件 $file 传输成功."
        # 传输成功后，删除文件
        rm "$file"
        echo "文件 $file 删除成功."
    else
        echo "文件 $file 传输失败."
    fi
done