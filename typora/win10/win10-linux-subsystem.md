## win10支持给文件夹设置大小写敏感
* 原因：

  * windows上编辑linux内核文件，git 下载开源代码有时会遇到大小写敏感的问题。
* 命令：
  ```bash
  fsutil.exe file SetCaseSensitiveInfo C:\Users\walterlv\GitDemo enable
  ```
* 条件：
  * Windows 10 四月更新（1803）
  * 安装有 Linux 子系统，即 Windows Subsystem for Linux
  * 所在分区为 NTFS 格式
  * 以管理员权限运行 PowerShell
* 参考：

  * https://walterlv.com/post/case-sensitive-in-windows-file-system.html
## zsh 安装与配置
* zsh安装
  * 1. sudo apt-get install zsh
  * 2. 运行zsh然后选2
  * 3. 安装oh-my-zsh
  ```bash
  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  ```
* 配置长文件名使用前缀
  * 定义前缀~home为/mnt/d/linuxdir
  ```bash
  hash -d home=/mnt/d/linuxdir
  ```
*  win10 cmder zsh vim方向键不能用的问题
  * 安装ubuntu 和 cmder
  * 修改cmder配置
    * settings-> startup-> Command line填 
    ```bash
    bash -cur_console:p5
    ```
  * 修改.bashrc, 默认进入zsh
    ```bash 
    exec zsh
    ```
## win10 文件权限
* 777改成755，以兼容linux
  * 修改或创建文件 /etc/wsl.conf，然后重新登陆
  ```bash
  [automount]
  options = "metadata"
  ```
  * 前面的方式不生效
  ```bash
  sudo umount /mnt/d
  sudo mount -t drvfs D: /mnt/d -o metadata,uid=1000,gid=1000,umask=22,fmask=111
  ```
## typro改宽一点，避免换行
* C:\Users\27510\AppData\Roaming\Typora\themes\github.css
```css
#write{
    max-width: 1280px;
  	margin: 0 auto;
  	padding: 20px 30px 40px 30px;
	padding-top: 20px;
    padding-bottom: 100px;
}
```

* C:\Program Files\Typora\resources\app\style\base-control.css （使用admin权限）
  * 800px改成1280px

