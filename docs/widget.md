## widget

Widget类在Flutter中是非常重要的，继承自Widget类的有PreferredSizeWidget、ProxyWidget、RenderObjectWidget、StatefulWidget、StatelessWidget。我们日常使用的绝大部分widget都是继承自Widget类，

查看Widget类源码，内部实现非常简单，构造函数如下

```dart
const Widget({this.key});
final Key key;
```

这个key的作用，注视上写的很清楚，是用来控制在widget树中替换widget的时候使用的。其中Key类是Widget、Element以及SemanticsNode的唯一标识符，继承自Key的还有LocalKey以及GlobalKey。

### state

在说到StatefulWidget之前，先说下State。State的作用有两点：

在widget构建的时候可以被同步读取；

在widget的生命周期中可能会被改变。


#### State生命周期

State的生命周期有四种状态：

created：当State对象被创建时候，State.initState方法会被调用；

initialized：当State对象被创建，但还没有准备构建时，State.didChangeDependencies在这个时候会被调用；

ready：State对象已经准备好了构建，State.dispose没有被调用的时候；

defunct：State.dispose被调用后，State对象不能够被构建。


完整的生命周期

创建一个State对象时，会调用StatefulWidget.createState；

和一个BuildContext相关联，可以认为被加载了（mounted）；

调用initState；

调用didChangeDependencies；

经过上述步骤，State对象被完全的初始化了，调用build；

如果有需要，会调用didUpdateWidget；

如果处在开发模式，热加载会调用reassemble；

如果它的子树（subtree）包含需要被移除的State对象，会调用deactivate；

调用dispose,State对象以后都不会被构建；

当调用了dispose,State对象处于未加载（unmounted），已经被dispose的State对象没有办法被重新加载（remount）。

#### setState

State中比较重要的一个方法是setState，当修改状态时，widget会被更新。比方说点击CheckBox，会出现选中和非选中状态之间的切换，就是通过修改状态来达到的。



