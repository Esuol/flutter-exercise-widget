## fluter 命令

flutter create 在指定的目录中,创建新的flutter项目,如果没有指定目录,则在当前目录下创建项目

flutter -v 查看APP所有日志的输出,对于调试是非常有用处,在调试时需要配合run命令使用

flutter -d 切换在不同设备上运行app,如果没有指定设备,默认将会使用设备列表的第一个设备,这对于计算机连接多个设备时非常有用,可以使用设备名称或者设备id作为参数

flutter analyze 用分析器检查代码是非常重要,默认是分析整个项目的代码,你也可以通过使用`analysis_options.yaml`文件来排除不需要的代码分析

lutter analyze --watch 需要代码分析一直在运行,可以使用--watch选项

flutter attach 相当于命令flutter run命令,不同之处在很多执行都是自己手动,比如热重载,

flutter bash-completion 在执行该命令时会输出一的配置脚本,脚本可以实现命令行提示的自动完成,可用于zsh,bash的配置,将脚本添加到`~/.bashrc`或者`~/.zshrc`

flutter build 构建应用程序的apk,appbundle,aot,ios,IOS应用需要在Mac osx上构建

flutter channel  切换flutter不同的版本,在执行flutter channel会输出不同分支信息,默认使用stable分支

```cmd
flutter channel # 输出channel
flutter channel dev # 切换到dev channel
```

flutter clean 删除`build/`和`.dart_tool/`目录,清除缓存信息,避免之前不同版本代码的影响

flutter config 可以用于指定gradle,android sdk,android studio的目录或者开启,禁用analytics选项,analytics选项用于flutter工具的报告

```cmd
flutter config --gradle-dir /gradle/
```

flutter doctor 检查开发工具链是否完整安装,对于安装环境非常有用处,检查andorid licenses需要连接外网,请科学上网

flutter drive 执行flutter ui测试,该工具类似与web端的`Selenium`,`WebDriver`,`Protractor`.你可以指定不同模式进行测试,可以是debug,profile,release,flavor模式,flavor模式可以指定平台规范,你还可以指定在不同的平台测试,甚至可以指定页面路由

```cmd
flutter drive --debug --target-platform android-x86
```

flutter emulators 列出,创建,启动模拟器,默认是列出模拟器

```cmd
flutter emulators --launch flutter_emulator #启动
flutter emulators # 列出
flutter emulators --create Pixel_API_28 # 创建
```

flutter format 按照dart代码规范格式项目代码文件,`flutter format .`是当前项目所有文件,也可以指定目录或者文件

```cmd
flutter format dartfile
```

flutter verion  列出或者切换flutter版本,默认是列出所有版本

flutter upgrade 更新flutter代码,实质就是git代码更新拉取,下载flutter sdk是git仓库的打包

flutter test 运行flutter单元测试,可以使用`--start-paused`模式等待调试器的连接,`--concurrency`可以指定并发任务数默认值是6

```cmd
flutter test --concurrency=8
```

flutter install 安装app到一个已经连接的设备

```cmd
flutter install
```

flutter screenshot 截取当前屏幕,默认是将图片输出到家目录下,使用-o指定输出目录

flutter packages 获取,测试,更新依赖包,`flutter pub` 将会传递剩余参数到dart工具的pub

```cmd
flutter packages get
```
