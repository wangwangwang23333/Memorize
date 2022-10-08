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
