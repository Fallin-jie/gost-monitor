# 一个简陋的gost流量转发进程监控程序
有的内存小的机器长时间挂着gost会崩溃，就需要一个小的监控程序。

## 使用方法
### 程序支持运行在Centos或Debian中
#### 需先安装screen环境<br>
监控程序是依靠着screen后台运行，然后不断地进行检测经常是否存在。
如果你怕screen被杀掉，你可以将脚本放置于cron定时任务中，每天执行一次即可。
这是一个比较简陋的监控程序，希望有dalao能完善下。<br>
感谢suppig大大写的gost转发。
##### Centos和Debian安装教程
需先将脚本程序放置于服务器内然后运行下列命令即可
```
yum -y install screen
git clone https://github.com/Fallin-jie/gost-monitor.git
cd gost-monitor
bash monitor.sh
```
