
#### ObjC 基础
##### 为什么说OC是动态语言?
* [阿里云 - 为什么说Objective-C 是一门动态的语言 ](https://www.aliyun.com/jiaocheng/354015.html)
> 整体上说明动态性

* [为什么说 Objective-C 是一种动态语言?](https://blog.csdn.net/huangfei711/article/details/78262860)
> 从三个方面说明

* [Objective-C是动态语言吗？为什么？](https://www.zhihu.com/question/19970471)
> 从C++底层对动态性做些说明

##### 动态类型
* [逆向分析isKindOfClass 内部实](https://blog.csdn.net/ChSaDiN/article/details/51672087)
> 注意，类对象调用先取 object_getClass （取类的metaClass），实例调用取 isa 指针。
          
* [ObjC语法之动态类型 - isKindOfClass, isMemberOfClass](https://blog.csdn.net/totogo2010/article/details/7714960)
> 注意，[测试数据项目](https://github.com/skyming/Study/tree/master/01-Demo/BaseOC)

    
* [Design Patterns in iOS — Class Clusters](http://www.cocoachina.com/industry/20140530/8622.html)
> 注意，对字符串的分析
    
* [NSOederdSet](http://nshipster.cn/nsorderedset/)
> 思考多继承及类簇关系

##### 动态加载
* [iOS 组件化开发：加载资源](https://juejin.im/post/5ac6eb496fb9a028bb193b4a?utm_source=gold_browser_extension) 
> 注意动态加载图片、xib 区别、NSBundle 类相关方法

* [iOS 运行时：动态方法解决方案](http://michael1984w.blog.sohu.com/322918224.html)
> 注意动态加载理解

* [iOS编程基础-OC（七）-运行时系统（续）](https://blog.csdn.net/baby_hua/article/details/78723482)
> 关注延迟加载、bundle 加载机制

* [第九章 专家级技巧：使用运行时系统API](https://blog.csdn.net/baby_hua/article/details/78833425)
> 注意，使用可选包扩展正在运行的程序实践 

* [第九章 专家级技巧：使用运行时系统API续](https://blog.csdn.net/baby_hua/article/details/78862262)
> 注意，动态创建类、方法、属性，动态代理、AOP


#### 加载过程
* [iOS 中性能优化之 load 与 initialize](https://www.ctolib.com/topics-114981.html)
* [你真的了解 load 方法吗](https://zhuanlan.zhihu.com/p/20816991)
* [load方法全程跟踪](http://www.desgard.com/Load/)
* [懒惰的 initialize 方法](https://segmentfault.com/a/1190000005038568)
* [为什么要用 -all_load & -ObjC](https://yq.aliyun.com/articles/47656)
* [dyld 与 load](https://blog.cnbluebox.com/blog/2017/06/20/dyldyu-objc)

### Runtime
* [Objc-C Runtime Programming Guide](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ObjCRuntimeGuide)
* [runtime官方文档翻译](https://www.jianshu.com/p/158c5d118937)
备注: 同时关注 《Objecttice-C 2.0运行时系统编程指南》
 
* [运行时详解+Demo](https://www.jianshu.com/p/adf0d566c887)
> objc_class、objc_object、objc_category，isa、super 流程图，对象关联
SEL、IMP、Method,消息转发，Method Swizzling

* [iOS 运行时详解-掘金](https://juejin.im/post/5ac0a6116fb9a028de44d717)
* [Objc- Runtime](http://yulingtianxia.com/blog/2014/11/05/objective-c-runtime)

* [iOS Runtime应用](https://juejin.im/post/58f833458d6d81005875f872)
* [深入理解 iOS Rumtime机制](https://juejin.im/post/58f830c3a22b9d0065827442)
* [iOS 面试经常问题到的Runtime](https://juejin.im/post/5aec71aef265da0b7a209165)

* [iOS Runtime 之 Category](https://www.jianshu.com/p/8e6518b1be76)
* [iOS Rumtime 之 Method Swizzling 应用](https://www.jianshu.com/p/f6dad8e1b848)

* [Runtime 在实际开发中的应用](https://www.jianshu.com/p/851b21870d91)
* [玩转iOS开发：装逼技能Runtime总结篇](https://juejin.im/post/59ee81615188250385370582)

* [运行时 -Crash防御(一)](https://juejin.im/entry/58989d162f301e00691b6968)
* [运行时 -Crash防御(二)](https://www.jianshu.com/p/f18876bbe2c4)

运行时 - AOP
1. https://www.jianshu.com/p/addd4eac54ed
2. https://www.jianshu.com/p/97017f88f584
3. APM

运行时 - 数模转换
1. https://blog.csdn.net/sifenkesi1/article/details/52621906
2. https://www.jianshu.com/p/1dc46f5ff8af
运行时 - 热更新
1. https://github.com/bang590/JSPatch/wiki/JSPatch-%E5%AE%9E%E7%8E%B0%E5%8E%9F%E7%90%86%E8%AF%A6%E8%A7%A3
2. https://mp.weixin.qq.com/s/x0hpbESSlVyq4haEzqSkcQ
3. https://mp.weixin.qq.com/s/qovdmuQzMhtjC6DHWI4K1A
4. https://blog.csdn.net/guojin08/article/details/54310858
5. https://www.jianshu.com/p/739c5c5160f1
6. https://github.com/NativeScript/ios-runtime

运行时 - 动态执行器
1. http://satanwoo.github.io/2018/04/01/jsengine/

#### 内存相关
书籍
* [Objc-C 高级编程 — 内存篇](https://www.jianshu.com/p/70aec1c740e7)
* 现代操作系统 - 内存篇

* [iOS内存管理详解-掘金](https://juejin.im/post/5abe543bf265da23784064dd)
* [iOS开发中的内存分配（堆栈）](https://www.jianshu.com/p/746c747e7e00)
* [Custom Process Stack Size](https://developer.apple.com/library/content/qa/qa1419/_index.html)
* 栈内存如何被编译器维护的](https://blog.csdn.net/radianceblau/article/details/73800305)
* [“理解”iOS内存管理](https://juejin.im/post/584fe4762f301e00573cafc6)

* [探索iOS内存分配](https://juejin.im/post/5a5e13c45188257327399e19)
* [iOS 内存深入探索 VM Tracker](https://juejin.im/post/5a66ef39f265da3e498032d4)
* [iOS 内存探秘](http://foggry.com/blog/2017/02/13/iosnei-cun-tan-mi)

* [什么是内存（一）：存储器层次结构](http://www.cnblogs.com/yaoxiaowen/p/7805661.html)
* [什么是内存（二）：虚拟内存](http://www.cnblogs.com/yaoxiaowen/p/7805964.html)

* [Alloc、Init 你弄懂 50% 了吗？](http://ios.jobbole.com/86324/)


* [一种避免 iOS 内存碎片的方法](https://cloud.tencent.com/developer/article/1006174)
* [碎片化](https://juejin.im/post/59f05b69f265da43333d9bc8)

* [循环引用](https://www.zhihu.com/question/36358590)

* [iOS 内存优化总结](https://blog.csdn.net/YCM1101743158/article/details/77508192)

* [谈谈内存管理与优化（一）](https://www.jianshu.com/p/deab6550553a)
* [谈谈内存管理与优化（二）](https://www.jianshu.com/p/f95b9bfda4a0)

* [内存管理及优化-QQ浏览器(一)](https://www.imooc.com/video/11075)
* [内存管理及优化-QQ浏览器(一)](https://www.imooc.com/video/11076)

* [说说iOS与内存管理（上）](http://www.cocoachina.com/ios/20150625/12234.html)
* [说说iOS与内存管理（中）](http://www.cocoachina.com/ios/20150922/13383.html)
* [说说iOS与内存管理（下）](http://www.molotang.com/articles/2073.html)

* [Target-Action 内存泄露](https://juejin.im/post/5a31406f6fb9a0450c496906)

* [iOS内存abort（jetsam）原理探究](http://satanwoo.github.io/2017/10/18/abort/)

* [iOS微信内存监控](https://juejin.im/post/5aa79eeaf265da2392360487)
* [iOS 爆内存问题解决方案-OOMDetector组件](https://juejin.im/post/5a58f1a76fb9a01cab283392)
* [Facebook 的 iOS 内存泄漏碱动自动化实践](https://yq.aliyun.com/articles/68473)

* [iOS逆向：开启malloc stack 追踪内存来源](https://juejin.im/post/5ab7e227f265da239706d4c3)

* [iOS内存管理和malloc源码解读](https://www.cnblogs.com/itsApe/p/5170108.html) 


#### Block 
* [Objc-C-Block篇](https://www.jianshu.com/p/afc7638fe036)
* [学习使用 Objc-C中的Block](https://www.jianshu.com/p/d911cd16c100)
* [Block 使用场景](https://juejin.im/post/57ca8d475bbb500074e8c076)
* [iOS中Block的用法及示例](https://juejin.im/post/5add619f6fb9a07ac90cced6)
* [iOS Block 详解](http://www.imlifengfeng.com/blog/?p=457)
* [Block 原理分析详解](https://huang303513.github.io/2017/04/11/Block原理分析详解.html)
* [Objc-C 中的Block](http://www.devtalking.com/articles/you-should-know-block/)
* [iOS揭露Block内部实现原理](https://juejin.im/post/5a328ffa518825569539ad97)
* [iOS-Block 变量捕获原理](https://juejin.im/post/5a33779f51882561a20a870a)
* [关于Block捕获self的分析](https://mp.weixin.qq.com/s/yD-AvTDUJnPGSy1K_-LAnw)
* [Block 循环应用终结者](https://www.jianshu.com/p/5a2cfa4848cf)
* [Block 循环应用问题的一点发散](http://swiftcafe.io/2017/02/02/weak-block/)
* [Block是如何实现的，如何避免循环引用](https://www.jianshu.com/p/4dedac2a22c6)
* [一篇文章看懂iOS代码块Block](https://www.jianshu.com/p/14efa33b3562)
* [关于Block会不会自动copy的实验和猜想](https://juejin.im/post/58984bc92f301e00696e600d)
* [dispatch_asyn 中是否要使用 weak ](https://juejin.im/post/58a83e51128fe1006cc068fb)
* [深入研究Block用 weakSelf、strongSelf 解决循环引用](https://www.jianshu.com/p/701da54bd78c)
* [从源码看 Block](https://www.jianshu.com/p/d973251fa773)


#### KVC & KVO 
KVO 
1. https://www.jianshu.com/p/b75f40380536
