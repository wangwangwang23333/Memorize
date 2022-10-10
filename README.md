#  Introduction

- Add `.adaptive(minumum: 65)`

![image-20221005141200833](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221005141200833.png)

## MVVM

- @ObservedObject @Published

  - ViewModel

    ![image-20221008200224620](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221008200224620.png)

  - View

    ![image-20221008200241339](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221008200241339.png)



## Optional

Declaring something of type `Optional<T>` can be done with the syntax `T? [README.md](README.md) `

![image-20221008200149282](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221008200149282.png)

You can access the associated value either by force(with `!`)...

![image-20221008200405032](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221008200405032.png)

Or "safely" using `if let` and then using the safely-gotten associated value in `{ } ` (`else` allowed too)

![image-20221008200711818](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221008200711818.png)

There's also `??` which does "Optional defaulting". It is called "nil-coalescing operator".

![image-20221008200932510](/Users/wangmingjie/Library/Application Support/typora-user-images/image-20221008200932510.png)

opt ?.val <-> opt.val(opt != nil) or nil(opt)

![image-20221008201119195](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221008201119195.png)

## @State

- Your view is Read Only

- When views need State

  ![image-20221009004607958](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221009004607958.png)

- @State is going to make some space in the heap for this.

## typealias

```swift
typealias Card = MemoryGame<String>.Card
```

## Property Observers

![image-20221009201415282](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221009201415282.png)

## Layout

1. Container Views "offer" space to the Views inside them
2. Views then choose what size they want to be
3. Container Views then position the Views inside of them
4. (and based on that, Container Views choose their own size as per #2 above)

### HStack and VStack

优先满足固定尺寸的子视图

![image-20221009201932735](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221009201932735.png)

`.layoutPriority(Double)`

![image-20221009202059422](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221009202059422.png)

.leading

![image-20221009211430945](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221009211430945.png)

### LazyHStack and LazyVStack

Never flexible

### ScrollView

It takes all the space space offered to it.

### ZStack

ZStack sizes itself to fit its children.

### Modifiers

![image-20221009212042517](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221009212042517.png)

### GeometryReader

![image-20221009214637449](https://wwwtypora.oss-cn-shanghai.aliyuncs.com/uPic/image-20221009214637449.png)

GeometryReader itself(it's just a View) **alaways accepts all the space offered to it**.

### Safe Area

The most obvious "safe area" is the notch on an iPhone X.

``` ZStack {...}.edgesIgnoringSafeArea([.top])```

