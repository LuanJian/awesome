rem PhotoShop 7.0 无法保存在大于 1TB 剩余空间的分区内
rem 通过 fsutil 命令生成单个 100GB 大小文件占用剩余空间
fsutil file createnew D:\fsutil.txt 107374182400
