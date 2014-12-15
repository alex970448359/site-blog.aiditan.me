---
layout:    note
permalink: /notes/c-plus-plus/
title:     "C++"
date:      2014-12-15 19:17:40 +0800
modified:  2014-12-15 19:17:40 +0800
mathjax:
---

# STL Containers

Vector 严格线性排列的数组（物理地址连续），可以动态增加，存储自动管理
List 线性数组，但是物理地址上不是连续的，插入、删除比vector和deques更快

# Const Usage

- 函数参数中
- 普通形参（相对后面有修饰符的而言）：实参类型与形参不匹配时，会寻找实参到形参的类型转换函数
- 引用形参：实质是传址，实参类型必须与形参相同
- const形参：该参数不会被修改，表明是输入参数 （其他与a相同）
- 函数const引用形参：该参数不会被修改
- !!特别的!! 如果调用时实参类型不匹配，函数将会尽可能地转换类型，然后创建一个无名的临时变量用来存储实参的值，并把形参作为该临时变量的引用。
- 成员函数中
- 成员函数使用const修饰，如int ClassA::Fun() const，表明该成员函数不修改成员变量。用下面这个表格来说明函数的调用关系：

| 在A之中/对象A | 打算(企图)调用B | 结果 | 原因/说明 |
| 非const对象 | 非const函数 | 成功 | 不解释 |
| 非const对象 | const函数 | 成功 | 调用B不会改变A的内容 |
| const对象 | 非const函数 | 失败 | 因为非const函数可能会修改A的内容 |
| const对象 | const函数 | 成功 | 不解释 |
| 非const函数 | 非const函数 | 成功 | 不解释 |
| 非const函数 | const函数 | 成功 | B不会修改this对象 |
| const函数 | 非const函数 | 失败 | B可能修改this对象 |
| const函数 | const函数 | 成功 | 安全 |

# Type Convertion

## 指针的强制类型转换

使用频率较少，有严重的安全隐患，通常是为了突破一些限制。

举例说明，Windows下的线程函数必须是静态的，因此不能将一个对象的实例方法作为线程函数。此时可以通过类的静态函数，将该对象的指针作为线程参数传入，再在静态函数中调用对象的实例方法来达成目的。

{% highlight cpp %}
#include <Windows.h>

class MyClass {
  public:
  void createThread() {
    CreateThread( NULL, 0, processThread, this, 0, NULL );
  }
  private:
  static DWORD WINAPI processThread(LPVOID pParam) {
    MyClass *p = (MyClass *) pParam;
    return p->processThread();
  }
DWORD WINAPI processThread() { /* ... */ }
};

int main(void) {
  MyClass a;
  a.createThread();
  // ...
  return 0;
}
{% endhighlight %}

## 对象的强制类型转换

对象的强制类型转换实质就是调用对应的构造函数，因而在编译时能够进行类型检查，比较安全。

{% highlight cpp %}
#include <iostream>

class TypeA {
  public:
  int m_i;
  TypeA(int i = 0) { m_i = i; }
};
class TypeB {
  public:
  int m_i;
  TypeB(int i = 0) { m_i = i; }
  TypeB(TypeA a) { m_i = a.m_i; std::cout<<"Here"<<std::endl; }
};

void show(const TypeB &b) {
  std::cout<<b.m_i<<std::endl;
}

int main(void) {
  TypeA obj(1);
  show((TypeB)obj); // The same to "show(TypeB(obj))"
  return 0;
}
/* Output:
Here
1
*/
{% endhighlight %}

## 基类和派生类间的类型转换

此类情况是最常见的，常用编译器支持的static_cast和dynamic_cast来实现，两者在派生类->基类时相同，基类->派生类时后者更为安全，有动态检查。

{% highlight cpp %}
static_cast < type-id > ( expression )
dynamic_cast < type-id > ( expression )
{% endhighlight %}

其中 type-id 必须是类的指针、类的引用或者void*

{% highlight cpp %}
#include <iostream>

class A {
  public:
  virtual void fun() { std::cout<<"A.fun"<<std::endl; }
};
class B : public A {
  public:
  void fun() { std::cout<<"B.fun"<<std::endl; }
  void specific_fun() { std::cout<<"B.specific_fun"<<std::endl; }
};

int main(void) {
  A * pa = new A;
  B * pb = new B;
  static_cast<A *>(pb)->fun();  // 全部成功，返回"B.fun"
  dynamic_cast<A *>(pb)->fun(); // 全部成功，返回"B.fun"
  static_cast<B *>(pa)->fun();  // 转换成功，调用失败，返回"A.fun"
  static_cast<B *>(pa)->specific_fun();
  // 全部成功，返回"B.specific_fun"，但是不安全
  // 若该函数操作了B所特有的成员则会报错
  dynamic_cast<B *>(pa);        // 转换不成功，返回的是NULL
  return 0;
}
{% endhighlight %}
