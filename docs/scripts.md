## fluter 命令

flutter create 在指定的目录中,创建新的flutter项目,如果没有指定目录,则在当前目录下创建项目

flutter -v 查看APP所有日志的输出,对于调试是非常有用处,在调试时需要配合run命令使用

flutter -d 切换在不同设备上运行app,如果没有指定设备,默认将会使用设备列表的第一个设备,这对于计算机连接多个设备时非常有用,可以使用设备名称或者设备id作为参数

flutter analyze 用分析器检查代码是非常重要,默认是分析整个项目的代码,你也可以通过使用`analysis_options.yaml`文件来排除不需要的代码分析

lutter analyze --watch 需要代码分析一直在运行,可以使用--watch选项

flutter attach 相当于命令flutter run命令,不同之处在很多执行都是自己手动,比如热重载,

flutter bash-completion 在执行该命令时会输出一的配置脚本,脚本可以实现命令行提示的自动完成,可用于zsh,bash的配置,将脚本添加到`~/.bashrc`或者`~/.zshrc`

