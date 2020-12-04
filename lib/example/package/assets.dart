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

// 加载图片
// 类似于原生开发，Flutter也可以为当前设备加载适合其分辨率的图像。

// 声明分辨率相关的图片 assets
// AssetImage 可以将asset的请求逻辑映射到最接近当前设备像素比例（dpi）的asset。为了使这种映射起作用，必须根据特定的目录结构来保存asset：

// …/image.png
// …/Mx/image.png
// …/Nx/image.png
// …etc.
// 其中M和N是数字标识符，对应于其中包含的图像的分辨率，也就是说，它们指定不同设备像素比例的图片。

// 主资源默认对应于1.0倍的分辨率图片。看一个例子：

// …/my_icon.png
// …/2.0x/my_icon.png
// …/3.0x/my_icon.png


// 在设备像素比率为1.8的设备上，.../2.0x/my_icon.png 将被选择。对于2.7的设备像素比率，.../3.0x/my_icon.png将被选择。

// 如果未在Image widget上指定渲染图像的宽度和高度，那么Image widget将占用与主资源相同的屏幕空间大小。 也就是说，如果.../my_icon.png是72px乘72px，那么.../3.0x/my_icon.png应该是216px乘216px; 但如果未指定宽度和高度，它们都将渲染为72像素×72像素（以逻辑像素为单位）。

// pubspec.yaml中asset部分中的每一项都应与实际文件相对应，但主资源项除外。当主资源缺少某个资源时，会按分辨率从低到高的顺序去选择 ，也就是说1x中没有的话会在2x中找，2x中还没有的话就在3x中找。

// 加载图片
// 要加载图片，可以使用 AssetImage类。例如，我们可以从上面的asset声明中加载背景图片：

// Widget build(BuildContext context) {
//   return new DecoratedBox(
//     decoration: new BoxDecoration(
//       image: new DecorationImage(
//         image: new AssetImage('graphics/background.png'),
//       ),
//     ),
//   );
// }
// 注意，AssetImage 并非是一个widget， 它实际上是一个ImageProvider，有些时候你可能期望直接得到一个显示图片的widget，那么你可以使用Image.asset()方法，如：

// Widget build(BuildContext context) {
//   return Image.asset('graphics/background.png');
// }
// 使用默认的 asset bundle 加载资源时，内部会自动处理分辨率等，这些处理对开发者来说是无感知的。 (如果使用一些更低级别的类，如 ImageStream或 ImageCache 时你会注意到有与缩放相关的参数)

// 依赖包中的资源图片
// 要加载依赖包中的图像，必须给AssetImage提供package参数。

// 例如，假设您的应用程序依赖于一个名为“my_icons”的包，它具有如下目录结构：

// …/pubspec.yaml
// …/icons/heart.png
// …/icons/1.5x/heart.png
// …/icons/2.0x/heart.png
// …etc.
// 然后加载图像，使用:

//  new AssetImage('icons/heart.png', package: 'my_icons')
// 或

// new Image.asset('icons/heart.png', package: 'my_icons')
