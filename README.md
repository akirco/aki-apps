# Scoop Bucket aki  [![Build status](https://ci.appveyor.com/api/projects/status/d5iwp9kc5xr3b0fr?svg=true)](https://ci.appveyor.com/project/Casuor/akiwinapps)

`scoop bucket add aki 'https://github.com/akirco/aki-apps.git'`

> pwsh settings

```ps1
 #Microsoft.PowerShell_profile.ps1
 # initial oh-my-posh themes
 oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)\themes\negligible.omp.json" | Invoke-Expression
 # initial scoop auto complete
 Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)\modules\scoop-completion"
 
 # scoop search 
 # Invoke-Expression (&scoop-search --hook)
 
 # initial terminal icons
 Import-Module Terminal-Icons

 # set GuiCompletion
 Set-PSReadlineKeyHandler -Key DownArrow -ScriptBlock { Invoke-GuiCompletion }
 
 # ...
 Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
 
 Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
 
 #Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
 
 Set-PSReadlineOption -PredictionSource History
 
 Set-PSReadlineOption -ShowToolTip
 
 # ls
 Set-Alias ll ls
 
 # scoop
 Set-Alias sco scoop
 
 # 清屏Ctrl+L
 Set-Alias c cls
 
 # kate
 Set-Alias k kate
 
 # 删除文件或目录
 Set-Alias t trash
 
 # 终端的播放器
 Set-Alias mpx mpxplay

 # nvim
 Set-Alias vm nvim
 
 # scoop search
 Set-Alias sos scoop-search
 
 # git
 Set-Alias lg lazygit
 
 # 打包网页到一个html
 Set-Alias mon monolith
 
 # 创建文件
 Set-Alias h touch
 
 # 终端的系统监视器
 Set-Alias n ntop  
 
 # 重命名
 Set-Alias f2 rnr
 
 # 二维码发送文件 
 Set-Alias qr qrcp
 
 #alias function
 function pscoop {start -FilePath 'F:\OS Scoop'}

 function otmp {start -FilePath 'C:\Users\Canary\AppData\Local'}

 # extras
 Enable-PoshTooltips
 Enable-PoshTransientPrompt
```


> 个人自用整合应用清单

| 名称                       | 简介 |
| -------------------------- | ---- |
| handbrake-cli              |  A video transcoder with extensive support for multiple formats. (CLI version)    |
| fishing funds 👍          |  看基金app    |
| dim 👍                    |  开发阶段：画质增强，基于[realesrgan-ncnn-vulkan](https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan)封装的可交互cli    |
| MouseInc 👍                  |  不只是鼠标手势吧    |
| xwtoolbox👍                  |  小丸工具箱    |
| winxray 👍                   |  除了clasr auto,觉得好用的代理神器    |
| aria2                      |  多线程下载    |
| gallery-dl👍                 |  Command-line program to download image-galleries and -collections from several image hosting sites.    |
| nircmd👍                     |  Execute various system wide tasks  |
| wttop 👍                     |  System monitor for the new Windows Terminal    |
| pup                        |  Parsing HTML at the command line    |
| say                        |  An approximation of say from macOS    |
| lf 👍                        |  终端的文件浏览器    |
| mysql57                    |  mysql    |
| gsudo                      |  a sudo with windows    |
| gh                         |  github cli    |
| dvm                        |  deno versions manager    |
| shim                       |  Create shim for programs    |
| officetoolplus👍             |  office安装利器    |
| dotnet-sdk                 |  dotnet-sdk    |
| xidel                      |  command line tool to download and extract data from HTML/XML pages as well as JSON APIs.    |
| gradle4                    |  gradle4    |
| netch                      |  Game accelerator    |
| oss-browser                |  阿里云oss gui    |
| PowerSession               |  Terminal session recorder    |
| rainbow                    |  Print text in rainbow pattern.    |
| php                        |  php    |
| silentcmd 👍                 |  Executes a batch file without opening the command prompt window    |
| rclone                     |  Sync files and directories to and from mulitple cloud / FTP / HTTP hosters    |
| vcredist2010               | 微软运行库     |
| yuque                      |  语雀    |
| gow                        |  Unix command line utilities installer for Windows    |
| jianyingpro                |  剪映    |
| docker-cli                 |  Unofficial build of Docker CLI for Windows    |
| format-factory             |  格式工厂    |
| innounp                    |  Inno Setup Unpacker    |
| msys2                      |  A software distro and building platform for Windows    |
| googlechrome               |  谷歌浏览器    |
| winfetch 👍                  |  系统信息    |
| mysql                      |  mysql    |
| vscode                     |  vscode    |
| chromium                   |  chromium    |
| nvm-windows                |  node versions manager    |
| homedale                   |  wifi信号强度    |
| optipng 👍                   |  A PNG optimizer that recompresses image files to a smaller size, without losing any information.    |
| pastel                     |  A command-line tool to generate, analyze, convert and manipulate colors    |
| WechatWork                 |  企业微信    |
| 7zip                       |  压缩神器    |
| vim                        |  vim    |
| tokei                      |  Count your code, quickly.    |
| bat2exe 👍                   |  bat to exe    |
| kate                       |  linux 常用编辑器    |
| shellcheck                 |  Static analysis tool for shell scripts    |
| micro 👍                     |  A terminal-based text editor that aims to be easy to use and intuitive, while also taking advantage of the full capabilities of modern terminals.    |
| mtn 👍                       |  Movie Thumbnailer - save thumbnails (screenshots) of movie or video files to image files.    |
| terminus                   |  A terminal for a more modern age    |
| youtube-dl                 |   Download videos from YouTube.com (and a few more sites) using command line.   |
| switchhosts                |  Hosts management & switching    |
| EasyContextMenu            |  Sordum's Easy Context Menu. Add useful commands to the right context menus.    |
| monolith 👍                  | Saves complete web pages as a single HTML file.     |
| neteasemusic               | 网易云音乐     |
| topgrade                   | Upgrade everything, keep your system up to date by detecting which tools you use and run their appropriate package managers.    |
| touch👍                      | A port of the Unix touch command.（创建文件）     |
| unzip 👍                     | Unzip compression utility     |
| httpstat 👍                  | curl(1) statistics visualizer（可视化的curl）     |
| wechat                     | 微信     |
| memreduct                  | 内存清理     |
| postman                    | api调试工具     |
| nmap-portable              | Network exploration and security auditing utility.     |
| pypy3                      | A fast, compliant alternative implementation of the Python language.     |
| f2 👍                        | 快速安全地批量重命名文件和目录。（cli）     |
| itch                       | 玩 itch.io 游戏的最佳方式     |
| figma                      | 设计工具     |
| anaconda3                  | The most popular Python distribution for data science     |
| lsd                        | The next gen ls command    |
| potplayer                  | 播放器     |
| yq                         | A portable command-line YAML processor     |
| flutter-cn                 | flutter     |
| GitNote                    | Note Application sync via git,which support html and markdwon both     |
| powertoys                  | windows增强工具     |
| svtplay-dl                 | Video downloader from various sites     |
| python                     | py解释器     |
| neovim 👍                    | neovim     |
| you-get 👍                   | 视频下载器     |
| fx 👍                        | Terminal JSON viewer     |
| neofetch                   | A command-line system information tool written in bash 3.2+     |
| nginx                      | An HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server.     |
| DNSAngel                   | Sordum's DNS Angel. Filter and block vast and uncensored content on the internet.     |
| hwmonitor                  | 硬件监视工具    |
| vcredist2015               |      |
| WXQQ_RevokeMsgPatcher      | 微信小插件     |
| aliyundrive                | 阿里云盘     |
| lepton                     | Lepton 是一个基于 GitHub Gist 的代码片段管理器     |
| QQ                         | qq     |
| composer                   | php包管理器     |
| libwebp👍                    | Encodes and decodes WebP image files.     |
| memo                       | 使用 GitHub Gists 做更智能的笔记。     |
| notion                     | The all-in-one workspace for your notes, tasks, wikis, and databases.     |
| vcredist2019               | 微软运行库     |
| nexusfont                  | Best font manager for Windows     |
| x264                       | H.264/MPEG-4 AVC video encoder     |
| justcolorpicker            | 取色器，建议用powertoys     |
| gdrive👍                     | Command line utility for interacting with Google Drive.     |
| m3u8downloader             | M3U8下载利器     |
| koodo-reader               | A cross-platform ebook reader     |
| rufus                      | 装机必备     |
| sox                        | Command line utility that can convert various formats of computer audio files into other formats.     |
| wechatdevtools             | 微信开发者工具     |
| unbound                    | 一个验证的、递归的、缓存的 DNS 解析器     |
| xh 👍                        | Friendly and fast tool for sending HTTP requests     |
| youtube-dl-gui             | youtube-dl的gui     |
| BaiduNetdisk               | 百度网盘     |
| scrcpy-gui                 | scrcpy的gui，开源投屏工具     |
| trash 👍                     | 删除文件目录命令行     |
| bandicam                   | 班迪录屏     |
| wxwork                     | 企业微信     |
| chromedriver               | 自动化测试工具     |
| everything                 | 全局搜索工具     |
| FixWin10                   | 修理windows10的一些小问题     |
| fzf👍                        | 一个通用的命令行模糊查找器     |
| fu 👍                        | Cross-platform app to upload images/files in Clipboard to a remote server     |
| kodi👍                       | Kodi is an award-winning free and open source software media player and entertain     |
| ncspot                     |  ncurses Spotify client written in Rust     |
| m4a-to-mp3-converter👍       |  m4a-to-mp3-converter    |
| pngquant👍                   |  A command-line utility for lossy compression of PNG images    |
| pwsh                       | pwsh     |
| termscp                    | Terminal UI file explorer with SCP/SFTP/FTP support     |
| tomcat8                    |      |
| justcolorpicker            | 取色器，建议用powertoys     |
| gdrive                     | Command line utility for interacting with Google Drive.     |
| m3u8downloader             | M3U8下载利器     |
| koodo-reader               | A cross-platform ebook reader     |
| rufus                      | 装机必备     |
| sox                        | Command line utility that can convert various formats of computer audio files into other formats.     |
| wechatdevtools             | 微信开发者工具     |
| unbound                    | 一个验证的、递归的、缓存的 DNS 解析器     |
| xh 👍                         | Friendly and fast tool for sending HTTP requests     |
| youtube-dl-gui             | youtube-dl的gui     |
| BaiduNetdisk               | 百度网盘     |
| scrcpy-gui                 | scrcpy的gui     |
| trash                      | 删除文件目录命令行     |
| bandicam                   | 班迪录屏     |
| wxwork                     | 企业微信     |
| chromedriver               | 自动化测试工具     |
| everything                 | 全局搜索工具     |
| FixWin10                   | 修理windows10的一些小问题     |
| fzf                        | 一个通用的命令行模糊查找器     |
| fu                         | Cross-platform app to upload images/files in Clipboard to a remote server     |
| kodi                       | Kodi is an award-winning free and open source software media player and entertain     |
| ncspot                     |  ncurses Spotify client written in Rust     |
| m4a-to-mp3-converter       |  m4a-to-mp3-converter    |
| pngquant                   |  A command-line utility for lossy compression of PNG images    |
| pwsh                       | pwsh     |
| termscp                    | Terminal UI file explorer with SCP/SFTP/FTP support     |
| tomcat8                    | tomcat8     |
| upx                        | UPX is a free, portable, extendable, high-performance executable packer for several executable formats     |
| yarn                       | node包管理工具之一     |
| highlight                  | Converts source code to formatted text with syntax highlighting     |
| vcredist2012               |      |
| netcat                     | Read and write from/to network connections     |
| scoop-completion           | scoop增强插件     |
| go-cn                      | go sdk     |
| marktext                   | 额，这个是编写习惯的问题还是？有些地方有违常理     |
| vcredist2017               | 微软运行库     |
| apache                     | apache sever     |
| gradle                     | An open-source build automation tool focused on flexibility and performance.     |
| python39                   | 待更新    |
| TIM                        | 办公版QQ     |
| wp-cli                     | wordpress cli     |
| zola                       | 一个静态网页生成器     |
| geekuninstaller            | 必装卸载器     |
| foobox-cn                  | 汉化，美化版foobar2000     |
| dog                        | Command-line DNS client     |
| zoom                       | 音视频会议     |
| carnac                     | windows桌面按键提示     |
| dart                       | dart sdk     |
| android-sdk                | android-sdk     |
| kotlin                     | 靠，他灵     |
| pngcrush                   | PNG（便携式网络图形）文件的优化器。     |
| mvndaemon                  | The Maven (mvn) Daemon is based on GraalVM and allows for faster Maven builds.     |
| poppler                    | PDF rendering library     |
| mdcat                      | cat for markdown     |
| fiddler                    | 抓包利器     |
| speedtest-cli              | 测速命令行版     |
| pypy2                      | python其他版     |
| php74                      | php74     |
| jetbrains-toolbox          | jetbrains toolbox     |
| psutils                    | powershell命令行集合     |
| vcredist2008               | 微软运行库     |
| qt-creator                 | qt设计器     |
| ffmpeg                     | A complete, cross-platform solution to record, convert and stream audio and video     |
| sudo                       | 管理员运行(like linux)     |
| clash-for-windows          | 上网工具     |
| OracleJDK8                 | jdk8     |
| OpenHashTab                | 给windows添加一个hashTab     |
| spotify-latest             | spotify     |
| hellofont                  | 字由     |
| dismplusplus               | 清理工具     |
| mpxplay                    | 命令行的音乐播放器     |
| typora                     | 成熟的markdown编辑器     |
| win32-openssh              |  A suite of secure networking utilities based on the Secure Shell protocol     |
| pyenv                      | python版本管理工具     |
| gof                        | 模糊搜索工具     |
| qpdf                       | pdf转换(cli)     |
| registry-finder            | 注册表工具     |
| redis5                     | redis5     |
| zstd                       | 高压缩比cli工具     |
| yt-dlp                     |  A youtube-dl fork with additional features and fixes.     |
| qrcp                       | 命令行生成二维码传输文件到手机     |
| fat32format                |  FAT32 format tool that supports volumes greater than 32 GB     |
| github                     | github桌面端     |
| redis                      | redis     |
| telegram                   | 电报     |
| cyberduck                  | cyberduck，有那么一点点有吧，但是太老了     |
| clashrauto                 | clashr增强版     |
| sumatrapdf                 | 轻量pdf阅读器     |
| xzvoice                    | AI配音专家，整理自github     |
| nvm                        | node版本管理工具     |
| recycle-bin                | 相当于trash     |
| gitui                      | Terminal client for Git     |
| listen1desktop             | 音乐聚合软件     |
| ContextMenuManager         | windwows菜单管理软件     |
| nali                       | 一款离线查询IP地理信息和CDN提供商的工具     |
| dingtalk                   | 钉钉     |
| firefox-zh-cn              | 火狐     |
| grex                       | 正则生成器     |
| macchina                   | 类似neofetch的系统信息查看工具     |
| n-m3u8dl-cli               | m3u8下载器     |
| oh-my-posh3                | 终端美化利器     |
| powershell                 | pwsh     |
| fluent-reader              | 订阅阅读     |
| imagine                    | 🖼️ PNG/JPEG optimization app for macOS, Windows and Linux.     |
| TianRuoOCR                 | 天若ocr     |
| obs-studio                 | obs     |
| tuya                       | 图压，一款图片压缩软件     |
| ysyy                       | 央视影音客户端     |
| oxipng 👍                     | 多线程无损PNG优化器     |
| lx-music-desktop           | 洛雪音乐     |
| PDF-XChange-Viewer         | PDF-XChange-Viewer     |
| electron-fiddle            | electron-fiddle     |
| n_m3u8dl-cli               | m3u8下载器     |
| cosbrowser                 | 腾讯cos     |
| time                       |  An approximation of the Unix time command.     |
| tesseract-languages        | 用于 Tesseract 开源 OCR 引擎的训练模型的便携版本     |
| nyagos                     | 命令行     |
| gdu                        | 终端的磁盘使用分析工具     |
| windows-application-driver | windows-application-driver     |
| ZY-Player                  | 在线视频     |
| ftnn                       | 富途牛牛     |
| tesseract                  | 开源的ocr引擎     |
| warp                       | 创建二进制应用程序     |
| pyflow👍                      | A modern Python installation and dependency manager     |
| hbuilderx                  | hbuilderx     |
| draw.io                    | 制图     |
| deno                       | node- > deno     |
| RightMenuMgr               | 右键菜单管理     |
| regexp                     | Enhanced Registry editor/explorer     |
| nano                       | 终端编辑器     |
| imewlconverter             | 深蓝词库转换     |
| maven                      | maven     |
| phantomjs                  | 可使用 JavaScript 编写脚本的无头 Web 浏览器。     |
| ntop 👍                       | system-monitor     |
| tup                        | 适用于 Linux、OSX 和 Windows 的基于文件的构建系统。     |
| rnr 👍                        | 重命名文件或者路径的命令行工具     |
| ydl-ui                     | youtube下载器     |
| far👍                         | 文本模式文件和档案管理器     |
| git                        | git     |
| prince 👍                     | Convert HTML to PDF with CSS     |
| youtubedownloader          | youtube下载器      |
| cpu-z                      | cpu-z     |
| dark                       | WiX (Windows Installer XML) Toolset Decompiler     |
| mdbook                     | Creates a book from markdown files     |
| rclone-browser             | rclone-browser     |
| selenium                   | A smart proxy server that allows Selenium tests to route commands to remote web browser instances     |
| gitomatic                  | A tool to monitor git repositories and automatically pull & push changes.  |
| jabba 👍                     | java版本管理工具     |
| x265                       | Encodes video or images into an H.265 / HEVC bitstream.     |
| restic                     | Fast, secure and simple backup program.     |
| wget                       | a non-interactive network retriever.     |
| sayit                      | A text-to-speech command line tool     |
| glow                       | 带有 TUI 和加密云存储的终端 Markdown 阅读器     |
| mubu                       | 幕布     |
| png2jpeg                   | png to jpeg     |
| prs                        | Secure, fast & convenient password manager CLI with GPG & git sync     |
| ClashDotNET                | Clash .Net版     |
| diskgenius                 | 分区工具     |
| qqmusic                    | QQ音乐     |
| tar👍                         | File archiver for manipulation with '.tar.*' files.     |
| charles                    | 抓包工具     |
| tldr                       | man pages     |
| win32yank                  | A clipboard tool for Windows     |
| xsv                        | A fast CSV command line toolkit written in Rust     |
| filezilla                  | Ftp工具     |
| wkhtmltopdf 👍               | Render HTML into PDF     |
| xming                      | xlaunch     |
| redis-desktop-manager      | redis-desktop-manager      |
| scrcpy                     | Display and control your Android device     |
| crow-translate             | 自用好用的翻译软件     |
| fl980                      | fl980键盘驱动     |
| shimo                      | 石墨文档     |
| okular                     | pdf阅读器     |
| qtscrcpy                   | scrcpy的gui     |
| nsis                       | windows程序打包器     |
| empty-recycle-bin          | 同trash     |
| ShadowsocksR               | ShadowsocksR     |
| vcredist2013               | 微软运行库     |
| which                      | 类linux which     |
| wrangler                   | Cloudflare Workers project manager     |
| adb                        | adb     |
| lwc                        | 类linux wc     |
| opus-tools                 |  Command-line utilities to encode, inspect, and decode .opus files.     |
| screentogif                | git录制工具     |
| figlet                     | 命令行字符     |
| pandoc                     | Universal markup converter     |
| nero-aac                   | AAC Encoder    |
| git-town                   | Git plugin, that adds Git commands that make collaborative software development more efficient and safe.     |
| nvs 👍                       | node版本管理工具     |
| aria-ng-gui                | aria-ng-gui     |
| DefenderControl            | 禁用Windows defender     |
| cowsay                     | cowsay     |
| vcredist2022               | 微软运行库     |
| s 👍                         | 命令行搜索工具     |
| youtube-dl-wpf             | youtube下载器     |
| z   👍                       | 快速切换目录，根据历史记录     |
| hub  👍                      | An extension to command-line git that helps with everyday GitHub tasks without ever leaving the terminal.     |
| unxutils 👍                  | GNU utilities for Win32.     |
| nu                         | A modern shell written in Rust     |
| wavpack                    | 混合无损音频压缩     |
| aofv                       | 基金收益查看工具    |
| bcut                       | 必剪  |
| biyi                       | 比译    |
| dim2clear                  | 图像画质增强     |
| landrop                    | 传输文件     |
| tubabox                    | 图吧工具箱     |
| windows10manager           | windows 10 清理维护自定义软件     |
