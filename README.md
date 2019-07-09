# SwiftKitUI

**⚠️⚠️⚠️⚠️⚠️因为目前开发只有一个人，可能很忙时候就不更新。这个库还处于开发阶段，最终代码架构按照发布正式为准。我会尽可能按照苹果的 `SwiftUI` 设计 `Api`。可能这个库因为最后技术水平不足，不能继续维护也有可能。所以这里希望有大神或者意愿者参与，尽快完善这个项目，让这个项目可以用于生产，造福大家。**

**⚠️⚠️⚠️⚠️⚠️Because there is only one person at the moment, it may not be updated when you are busy. This library is still in the development phase, and the final code architecture is subject to release. I will try to design `Api` as much as possible in Apple's `SwiftUI`. It may be possible that this library cannot be maintained because of the lack of technical level at the end. Therefore, I hope that there will be a big god or a willing person to participate, and improve this project as soon as possible so that this project can be used for production and benefit everyone.**

用于支持 `SwiftUI` 不支持的低版本，目前先从 `iOS`开始做实验开发。最新代码在 `developer` 分支上面。

> To support the low version that SwiftUI does not support, we will start experiment development from iOS. The latest code is on the developer branch.

基于苹果除了`SwiftUI`依赖，代码的简洁十分的强大。但是都是必须基于最新版本的支持。最近社区出现`SwiftWebUI`让人十分的震惊，竟然可以这么玩。正好自己需要学习`SwiftUI`，趁此这个机会做一下低版本支持的库。
这个库靠我自己力量估计无法完成，因为我只是 `iOS` 的新人。对于每个平台的认知，甚至是`Swift5.1`语法都认知有限。可能这个项目会中道崩殂。我希望开发高手接管这个项目之后可以完善的完成，给广大的开发者造福。

> Based on Apple's addition to the `SwiftUI` dependency, the simplicity of the code is very powerful. But all must be based on the latest version of support. The recent emergence of `SwiftWebUI` in the community is very shocking and can be played like this. Just need to learn `SwiftUI`, let me take this opportunity to do a library supported by the lower version.
This library cannot be completed by my own strength, because I am just a newcomer to iOS. For each platform's cognition, even the `Swift5.1` grammar has limited knowledge. Maybe this project will collapse. I hope that the development master can take over the project and complete it, which will benefit the vast number of developers.

## 目前存在的问题疑惑(Current doubts)

- 因为`some`出现的关键词随着 `Swift5.1`出现的,为什么提示只有在` iOS13`以上才可以.

  > Because the keywords that appear in `some` appear with `Swift5.1`, why are the prompts only available on `iOS13`?

- 目前采用`UIStackView`布局，所以最低支持 `iOS9.0`。但是因为`UIStackView`也是`UIView`的子类，因为数量超过多少会产生性能问题？我到底是采用`AutoLayout`还是`UIStackView`盒子布局？

  > Currently using `UIStackView` layout, so the minimum support `iOS9.0`. But because `UIStackView` is also a subclass of `UIView`, because the number is more than one will cause performance problems? Am I using `AutoLayout` or `UIStackView` box layout?

- 因为无法使用`some`关键词，所以目前只能用子类模式进行开发。这样导致和官方的 `Api` 不能`100%`还原。

  > Because the `some` keyword cannot be used, it is currently only possible to develop in subclass mode. This leads to the official `Api` not being able to `100%` restore.

## 怎么使用(How to use)

- 设置代码启动(Set code to start)

  ```swift
  self.window.rootViewController = UIHostingController(rootView: MainPageView())
  self.window.backgroundColor = UIColor.white
  self.window.makeKeyAndVisible()
  ```

- 设置`MainPageView`(Set `MainPageView`)

  ```swift
  class MainPageView: ViewRoot {
      override var body: ViewRoot {
          Text("Hello Word!")
      }
  }
  ```

- 预览效果(Preview)

  ![image-20190709100930876](http://ipicimage-1251019290.coscd.myqcloud.com/2019-07-09-020931.png)

- 试图层次结构(Trial hierarchy)

  ![image-20190709101040887](http://ipicimage-1251019290.coscd.myqcloud.com/2019-07-09-021041.png)

![image-20190709101314623](http://ipicimage-1251019290.coscd.myqcloud.com/2019-07-09-021315.png)

