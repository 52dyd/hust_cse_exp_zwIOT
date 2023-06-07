# hust_cse_exp_zwIOT
Huazhong University of Science and Technology, School of Cyber Science and Engineering, synthesis experience(Ⅲ), IOT part of ZhouWei

# usage
## create-screen.sh
创建新窗口，如果存在同名老窗口则kill后创建，按```Ctrl+A+D```退出。
这样做的目的是qemu死机后退出窗口即可，无需退出ssh登录

```./create-screen.sh [自定义名称]```


## run.sh
直接执行task1，不调试。执行task2需要改脚本里的文件名。执行可能卡死，记得用create-screen.sh开新窗口，卡死的话就按```Ctrl+A+D```退出。

## debug.sh
调试task1，绑定1234端口等待gdb连接。需要调试task2就改脚本里的文件名。调试可能卡死，记得用create-screen.sh开新窗口，卡死的话就按```Ctrl+A+D```退出。
## .gdbinit
gdb开始时会直接执行.gdbinit的命令，自动连接qemu

## debugger.sh
启动gdb并连接qemu

## 调试流程
1. 创建新screen ./create-screen.sh debug
2. 在新开的screen中用qemu运行elf文件 ./debug.sh
3. 再开一个终端开gdb ./debugger.sh
4. qemu卡死，ctrl+A+D退出窗口
5. 从头再来，记得重新连接gdb
