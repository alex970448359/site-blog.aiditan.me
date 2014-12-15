---
layout:    note
permalink: /notes/visual-studio/
title:     "Visual Studio"
date:      2014-12-15 19:15:54 +0800
modified:  2014-12-15 19:15:54 +0800
mathjax:
---

# Inspect an array

If you expand a pointer and you only get a single item, just add '',n'' to the entry in the watch window where n is the number of elements to expand.

For example, if you have a ''foo * pFoo'' pointing to an array of ten elements, put ''pFoo,10'' in your watch window to see all of the element. This can be useful to view parts of a large array.

If ''pFoo'' points to an array of 5,000 elements, you might use ''(pFoo + 2000),10'' to see elements 2000 to 2010.

# Avoid containing the same header

为预防C++头文件重复包含，常用办法是宏定义：

{% highlight cpp %}
#ifndef __MYCLASS_HEADER__
#define __MYCLASS_HEADER__

# MyClass definition goes here ...

#endif
{% endhighlight %}

而Visual Studio中可以用编译器命令更简便地实现：

{% highlight cpp %}
#pragma once
{% endhighlight %}

# 编译器命令添加lib引用

Visual Studio中不仅可以通过项目属性添加lib引用，还可以通过在程序代码中添加编译器命令添加lib引用。例如要添加//E:\OgreSDK_vc11_v1-9-0unstable\lib\Debug\OgreMain_d.lib//：

- 在项目的属性页->VC++目录->库目录中添加目录"E:\OgreSDK_vc11_v1-9-0unstable\lib\Debug"
- 在需要链接该lib的程序文件中添加代码

{% highlight cpp %}
#pragma comment(lib,"OgreMain_d.lib")
{% endhighlight %}

# Exceptions

#### Custom view * is not using the 2- or 3-argument View constructors; XML attributes will not work

扩展了View类并对应修改 layout 的 XML时，就在 GUI 中遇见了这个问题。解决办法很简单，将View的三个构造函数在继承类中都实现一遍即可。

{% highlight c# %}
public class ExtendedClass extends View {
  public ExtendedClass(Context context) {
    super( context, attrs );
  }
  public ExtendedClass(Context context, AttributeSet attrs) {
    super( context, attrs );
  }
  public ExtendedClass(Context context, AttributeSet attrs, int defStyle) {
    super( context, attrs, defStyle );
  }
}
{% endhighlight %}
