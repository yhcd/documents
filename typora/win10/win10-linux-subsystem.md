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

## win10 cmder zsh vim方向键不能用的问题
* 步骤:
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
## zsh 配置长文件名使用前缀
* 定义前缀~home为/mnt/d/linuxdir
  ```bash
  hash -d home=/mnt/d/linuxdir
  ```

