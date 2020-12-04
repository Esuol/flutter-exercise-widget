// 指定 assets
// 和包管理一样，Flutter也使用pubspec.yaml文件来管理应用程序所需的资源，举个例子:
// flutter:
//   assets:
//     - assets/my_icon.png
//     - assets/background.png

// ssets指定应包含在应用程序中的文件， 每个asset都通过相对于pubspec.yaml文件所在的文件系统路径来标识自身的路径。asset的声明顺序是无关紧要的，asset的实际目录可以是任意文件夹（在本示例中是assets文件夹）。

// 在构建期间，Flutter将asset放置到称为 asset bundle 的特殊存档中，应用程序可以在运行时读取它们（但不能修改）。