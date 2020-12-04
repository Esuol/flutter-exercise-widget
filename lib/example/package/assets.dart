// 指定 assets
// 和包管理一样，Flutter也使用pubspec.yaml文件来管理应用程序所需的资源，举个例子:
// flutter:
//   assets:
//     - assets/my_icon.png
//     - assets/background.png

// ssets指定应包含在应用程序中的文件， 每个asset都通过相对于pubspec.yaml文件所在的文件系统路径来标识自身的路径。asset的声明顺序是无关紧要的，asset的实际目录可以是任意文件夹（在本示例中是assets文件夹）。

// 在构建期间，Flutter将asset放置到称为 asset bundle 的特殊存档中，应用程序可以在运行时读取它们（但不能修改）。

// Asset 变体（variant）

// 例如，如果应用程序目录中有以下文件:

// …/pubspec.yaml
// …/graphics/my_icon.png
// …/graphics/background.png
// …/graphics/dark/background.png
// …etc.

/// 然后pubspec.yaml文件中只需包含:
// flutter:
//   assets:
//     - graphics/background.png

// 那么这两个graphics/background.png和graphics/dark/background.png 都将包含在您的asset bundle中。前者被认为是main asset （主资源），后者被认为是一种变体（variant）。

// 在选择匹配当前设备分辨率的图片时，Flutter会使用到asset变体（见下文），将来，Flutter可能会将这种机制扩展到本地化、阅读提示等方面。


// 加载 assets
// 您的应用可以通过AssetBundle对象访问其asset 。有两种主要方法允许从Asset bundle中加载字符串或图片（二进制）文件。

// 加载文本assets
// 通过rootBundle 对象加载：每个Flutter应用程序都有一个rootBundle对象， 通过它可以轻松访问主资源包，直接使用package:flutter/services.dart中全局静态的rootBundle对象来加载asset即可。
// 通过 DefaultAssetBundle 加载：建议使用 DefaultAssetBundle 来获取当前BuildContext的AssetBundle。 这种方法不是使用应用程序构建的默认asset bundle，而是使父级widget在运行时动态替换的不同的AssetBundle，这对于本地化或测试场景很有用。
// 通常，可以使用DefaultAssetBundle.of()在应用运行时来间接加载asset（例如JSON文件），而在widget上下文之外，或其它AssetBundle句柄不可用时，可以使用rootBundle直接加载这些asset，例如：

// import 'dart:async' show Future;
// import 'package:flutter/services.dart' show rootBundle;

// Future<String> loadAsset() async {
//   return await rootBundle.loadString('assets/config.json');
// }

