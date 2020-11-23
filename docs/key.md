## Key

```dart
@immutable
abstract class Key {
  const factory Key(String value) = ValueKey<String>;

  @protected
  const Key.empty();
}
```

默认创建 Key 将会通过工厂方法根据传入的 value 创建一个 ValueKey。

Key 派生出两种不同用途的 Key：LocalKey 和 GlobalKey。


### Key：LocalKey

LocalKey 直接继承至 Key，它应用于拥有相同父 Element 的小部件进行比较的情况，


Localkey 派生出了许多子类 key：

ValueKey : ValueKey('String')

ObjectKey : ObjectKey(Object)

UniqueKey : UniqueKey()


### GlobalKey

GlobalKey 使用了一个静态常量 Map 来保存它对应的 Element。

你可以通过 GlobalKey 找到持有该GlobalKey的 Widget，State 和 Element。

注意：GlobalKey 是非常昂贵的，需要谨慎使用。


### 什么时候需要使用 Key

#### ValueKey

如果您有一个 Todo List 应用程序，它将会记录你需要完成的事情。我们假设每个 Todo 事情都各不相同，而你想要对每个 Todo 进行滑动删除操作。

这时候就需要使用 ValueKey！

```dart
return TodoItem(
    key: ValueKey(todo.task),
    todo: todo,
    onDismissed: (direction){
        _removeTodo(context, todo);
    },
);
```

#### ObjectKey

如果你有一个生日应用，它可以记录某个人的生日，并用列表显示出来，同样的还是需要有一个滑动删除操作。

我们知道人名可能会重复，这时候你无法保证给 Key 的值每次都会不同。但是，当人名和生日组合起来的 Object 将具有唯一性。

这时候你需要使用 ObjectKey！

#### UniqueKey

如果组合的 Object 都无法满足唯一性的时候，你想要确保每一个 Key 都具有唯一性。那么，你可以使用 UniqueKey。它将会通过该对象生成一个具有唯一性的 hash 码。

不过这样做，每次 Widget 被构建时都会去重新生成一个新的 UniqueKey，失去了一致性。也就是说你的小部件还是会改变。（还不如不用😂）


#### PageStorageKey

当你有一个滑动列表，你通过某一个 Item 跳转到了一个新的页面，当你返回之前的列表页面时，你发现滑动的距离回到了顶部。这时候，给 Sliver 一个 PageStorageKey！它将能够保持 Sliver 的滚动状态。


#### GlobalKey

GlobalKey 能够跨 Widget 访问状态。 在这里我们有一个 Switcher 小部件，它可以通过 changeState 改变它的状态。


