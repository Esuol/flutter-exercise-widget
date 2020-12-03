import 'package:flutter/material.dart';

class RouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

// 在_MyHomePageState.build方法中的Column的子widget中添加一个按钮（FlatButton） :

class _MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text("open new route"),
        textColor: Colors.blue,
        onPressed: () {
          //导航到新路由
          Navigator.push( context,
           MaterialPageRoute(builder: (context) {
              return RouteScreen();
           }));
          },
      ),
    );
  }
}

// 下面我们介绍一下MaterialPageRoute 构造函数的各个参数的意义：

// MaterialPageRoute({
//   WidgetBuilder builder,
//   RouteSettings settings,
//   bool maintainState = true,
//   bool fullscreenDialog = false,
// })

// widget。我们通常要实现此回调，返回新路由的实例。
// settings 包含路由的配置信息，如路由名称、是否初始路由（首页）。
// maintainState：默认情况下，当入栈一个新路由时，原来的路由仍然会被保存在内存中，如果想在路由没用的时候释放其所占用的所有资源，可以设置maintainState为false。
// fullscreenDialog表示新的路由页面是否是一个全屏的模态对话框，在iOS中，如果fullscreenDialog为true，新页面将会从屏幕底部滑入（而不是水平方向）。