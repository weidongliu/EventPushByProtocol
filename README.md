# EventPushByProtocol
利用协议来解耦控制器的跳转
在一般的开发中，我们总是在一个控制器中对不同事件进行不同的跳转，常规做法会#import要跳转的控制器，如果一个控制器中有十几个事件要跳转不同控制器，这时候就会出现#import一大堆控制器，这样子并不优雅。所以在这个demo中是我们通过协议的方法来给控制器解耦
