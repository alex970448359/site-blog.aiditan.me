---
layout:    note
permalink: /notes/ruby/
title:     "Ruby"
date:      2014-12-15 19:16:19 +0800
modified:  2014-12-15 19:16:19 +0800
mathjax:
---

# Document

Use [Yard](http://yardoc.org/) to document.

## FAQ

##### How to list undocumented objects?

{% highlight bash %}
yard stats --list-undoc
{% endhighlight %}

# Special signs

## %

| Modifier | Meaning                                                            |
| %q       | Non-interpolated String (except for \\)                            |
| %Q       | Interpolated String (default)                                      |
| %r       | Interpolated Regexp (flags can appear after the closing delimiter) |
| %i       | Non-interpolated Array of symbols, separated by whitespace         |
| %I       | Interpolated Array of symbols, separated by whitespace             |
| %w       | Non-interpolated Array of words, separated by whitespace           |
| %W       | Interpolated Array of words, separated by whitespace               |
| %x       | Interpolated shell command                                         |

## $

| Name | Alias            | Description                                                                        |
| \$!  | $ERROR_INFO      | The exception information message set by the last 'raise' (last exception thrown). |
| \$&  | $MATCH           | The string matched by the last successful pattern match in this scope.             |
| \$`  | $PREMATCH        | The string to the left of the last successful match.                               |
| \$'  | $POSTMATCH       | The string to the right of the last successful match.                              |
| \$:  | $LOAD_PATH       | Load path for scripts and binary modules by load or require.                       |
| \$”  | $LOADED_FEATURES | The array contains the module names loaded by require.                             |

# Operators

## &

[[coding:ruby:operator_and]]

## *

### Mutiplication

{% highlight ruby %}
1 - 0.618*0.618 # => 0.6180760000...
{% endhighlight %}

### For Array & String

{% highlight ruby %}
[1,2] * 3 # => [1,2,1,2,1,2]
"Ruby" * 5 # => "RubyRubyRubyRubyRuby"
{% endhighlight %}

### Create an array

{% highlight ruby %}
*a = 1,2,3 # => [1,2,3]

# 定义方法时，可以利用这一点来建立任意长度的参数列表
def fun(*args)
p args
end

fun 1,2 # => [1,2]
fun 1,2,3,4,5 # => [1,2,3,4,5]

# 形参列表中最多只能有一个星号
def fun(*a, *b); end # => SyntaxError: syntax error, unexpected *
{% endhighlight %}

### 出现在形参列表中时的特殊用法

{% highlight ruby %}
# 延续上例
def fun(*args)
p args
puts "-----"
p *args # 注意有无星号的区别
end

fun [1],[1,2],[1,2,3]
# [[1],[1,2],[1,2,3]]
# -----
# [1]
# [1,2]
# [1,2,3]
{% endhighlight %}

# Design Models

## Observer

Ruby 中为实现 Observer 模式提供了 observer 库。利用该库提供的 Observer 模块，可以很容易地实现 Observer 模式。

{% highlight ruby %}
require "observer"

# Observable
class Tick
include Observable
def tick
loop do
now = Time.now
changed
notify_observers(now.hour, now.min, now.sec)
sleep 1.0 - Time.now.usec/1000000.0
end
end
end

# Observer
class TextClock
def update(h,m,s)
printf "\e[8D%02d:%02d:%02d", h, m, s
STDOUT.flush
end
end

tick = Tick.new
tick.add_observer(TextClock.new)
tick.tick
{% endhighlight %}

# Here document

引入文档 (here document) 常用于跨行字符串、大量内插写等情景。

{% highlight ruby %}
str = <<END_OF_DOC
This is the string
And a second line
<<END_OF_DOC
{% endhighlight %}

引入文档默认允许内插，同双引号字符串。要想关闭内插，需在结束符前后加上单引号。

{% highlight ruby %}
str = <<'END_OF_DOC'
1+1=#{1+1}
<<END_OF_DOC
=> "1+1=\#{1+1}\n"
{% endhighlight %}

若加上双引号，与默认效果一样，允许内插。

<code ruby>
str = <<"END_OF_DOC"
1+1=#{1+1}
<<END_OF_DOC
=> "1+1=2\n"
</code>

引入文档的结束符默认必须在一行的开头。要想忽略结束符开头的空白符，需要加上“-”号。

<code ruby>
str = <<END_OF_DOC
1+1=#{1+1}
END_OF_DOC
END_OF_DOC
=> "1+1=2\n  END_OF_DOC\n"

str = <<-END_OF_DOC
1+1=#{1+1}
<<END_OF_DOC
=> "1+1=2\n"
</code>

===== 类型检查 =====

Duck Typing 给动态语言带来便利的同时也引入了静态语言中不会出现的情境：类型检查。有时需要在程序中检查参数的数据类型，继而进行针对性操作或是抛出异常。

常用的三种方法从最严格到最宽松分别是：

==== instance_of? ====

<code ruby>
obj.instance_of?(Class)
</code>

<code ruby>
"I'm a rubyist".instance_of?(String) # => true
"I'm a rubyist".instance_of?(Object) # => false
</code>

当obj是Class类的实例时返回true。

松本建议，要尽量避免这样明确的类型检查。

==== is_a? / kind_of? ====

<code ruby>
obj.is_a?(Class)
obj.kind_of?(Class)
</code>

<code ruby>
"I'm a rubyist".is_a?(String) # => true
"I'm a rubyist".is_a?(Object) # => true
</code>

当Class是obj所属的类，或者Class是obj所属类的基类或Mix-in模块时，返回true。

=== respond_to? ===

<code ruby>
obj.respond_to?(:method, include_all = false)
</code>

<code ruby>
"I'm a rubyist".respond_to?:to_s # => true
</code>

* 如果:method能够被obj所响应，返回true；
* 如果:method未实现，返回false；
* 如果:method未定义，将调用obj的私有方法respond_to_missing?并将其结果返回；
* include_all为true时，protected和private方法将被考虑在内。

这个方法最为推荐的，符合Ruby精神~

===== 元编程 | Meta programming =====

元编程是对程序进行编程的意思，咋看起来似乎没什么用。下面就引用《松本行弘的程序世界》中例子，一展元编程的动态生成能力。

Ruby 类中内嵌的 attr_accessor 方法模块可以动态生成访问示例变量的方法。

<code ruby>
class Person
attr_accessor :name, :age
end
</code>

attr_accessor 实质上是 Module 类提供的一个方法，在 Ruby 内部用C语言实现的，大致相当于以下 Ruby 代码：

<code ruby>
class Module

def attr_accessor(*syms)
syms.each do |sym|
class_eval %{
  def #{sym}
  @#{sym}
  end
  def #{sym}={val}
  @#{sym}=va
  emd
}
end
end
end
</code>

===== 迭代器 | Iterators =====

要实现Enumerable，就需要实现each方法。而Ruby核心库中Array（以及Hash等）的each方法有两种形式，前者是常用的块方式，而后者返回的外部迭代器却常常让我非常迷惑：

<code ruby>
(Array)      each {|item| ...}
(Enumerator) each
</code>

引入外部迭代器的是为了克服Enumerbable的局限：Enumerable依赖于each方法，而且不能并行执行。例如String类，在不同情境下希望用不同的单位来枚举(each)。在Ruby1.9之后，String类的循环可以根据需要，选择each_char, each_line或者each_byte等不同方法，这些方法与上例一样，也具有两种形式。例如：

<code ruby>
str.each_byte.max
# String类没有include Enumerable模块，因而不能直接str.max
# str.each_byte返回的是Enumerable::Enumerator对象，该对象有max方法，从而达到目的

# 类似的可以有，
str.each_char.max
str.each_line.max
</code>

对于用户自定义的类，若调用没有块的each方法，有可能并不返回Enumerator的情况，用enum_for最为安全（不清楚这一段Enumerable历史的我就写过这样的类）。下面两段代码作为一个例子，比较有外部迭代器前后，用Ruby来定义Enumerable模块中zip方法的差别。

<code ruby>
# 把参数变成数组的版本
module Enumerable
def zip(*args)
n = 0
args = args.map{|a| a.to_a}
self.each do |x|
yield [x, *args.map{|a| a[n]}]
n += 1
end
end
end
# 两个主要问题
# 1. 大量数据转换成数组造成内存的浪费
# 2. 不能处理无限循环的Enumerable

# 使用外部迭代器的版本
module Enumerable
def zip(*args)
args = args.map{|a| a.enum_for(:each)}
self.each do |x|
yield [x, *args.map{ |a|
  a.next rescue nil # 如果后面没有元素，加入一个nil
  }]
  end
  end
  end
  </code>

  外部迭代器还可以配合loop，利用迭代中止异常(StopIteration)中止循环。

  <code ruby>
  a = [1,2,3]
  b = [1,2,3,4]
  result = []
  ia = a.each
  ib = b.each
  loop do
  result.push ia.next
  result.push ib.next
  end
  result # => [1,1,2,2,3,3]
  </code>

  ===== 特异方法 | Singleton method =====

  Ruby 中不但能够动态地打开已定义的类修改其内容，还可以为实例对象定义其特有的方法（特异方法，即其他同类对象没有而该对象独有的方法）。下面用一个例子，结合 Object 类中包含的 methods 和 singleton_methods 来说明这一特性：

  <code ruby>
  class Class
  def fun1; end
  end

  module Fun2
  def fun2; end
  end

  obj = Class.new
  class << obj
  include Fun2
  def fun3; end
  end

  # (Array) methods(all = true)
  obj.methods(true) # => [:fun3, :fun2, ... , :fun1, ...]
  obj.methods(false) # => [:fun3]

  # (Array) singleton_methods(all = true)
  obj.singleton_methods(true) # => [:fun3, :fun2]
  obj.singleton_methods(false) # => [:fun3]
  </code>

  由这个例子可以发现，methods(false) 的结果相对较为难懂，而又与 singleton_methods(false) 等价。因此在平常使用的时候，推荐使用除了 methods(false) 之外的三种形式查询：

  methods
  singleton_methods
  singleton_methods(false)

  ===== 猴子补丁 | Monkey patch =====

  Ruby 的类是开放类，利用语句 undef, alias 等（或对应方法 undef_method, alias_method 等）很容易为现有程序打上猴子补丁。

  <code ruby>
  # Patch for Object
  class ExampleClass < Object
  def do_something
  p "do_something"
  end
  end
  e = ExampleClass.new
  e.do_something
  # "do_something"

  # Patch for ExampleClass
  class ExampleClass
  alias do_something_origin do_something
  def do_something
  p "enter do_something"

  do_something_origin

  p "exit do_something"
  end
  end
  e.do_something
  # "enter do_something"
  # "do_something"
  # "exit do_something"
  </code>

  ===== 字符编码 | Character encoding =====

  编程中的字符编码问题始终是一个难题。Unicode字符集有多种编码方式，主要的有UTF-8、UTF-16、UTF-32：

  * UTF-8格式是可变长的，具有兼容ASCII编码、不含NUL文字这两个突出的优点，因此易于利用过去的资产。
  * UTF-16和UTF-32分别用16位和32位表示文字，根据字节存储顺序的不同，又分为LE和BE版本。通常在文件头存入BOM标志 (byte order mark, BOM)，编码为0xfeff。根据内存顺序"fe ff"还是“ff fe”就能够决定是LE还是BE了。

  程序为了应对编码问题通常有两种策略：

  * UCS (Universal Character Set) 方式，在程序中使用共同的文字集，输入输出时程序将文本数据全部转换为UCS。因为原理简单而应用广泛。
  * CSI (Character Set Independent) 方式，在程序中不对文字集作变换，按照原编码处理。

  Ruby从1.9开始，走上了CSI之路。每个字符串都含有编码信息，指定了编码方式。在程序文件的第一行（如果有#!行，则在第二行）放入特定注释，可以确定该程序文件内所有字符串的编码方式；2.0中，Unicode直接作为了Ruby的默认编码，这一行可以省略。

  <code ruby>
  #!/usr/bin/env ruby
  # encoding: UTF-8
  File.open(path, 'r:UTF-8').each do |line|
  printf "f=%s\n", line.encoding # 显示"f=UTF-8"
  print line.encode("ASCII")     # 变换为ASCII编码
  end
  </code>

  ===== 对象复制 =====

  Ruby 中经常出现 Marshal 一词，实际上是对象持久化的一种方法。对象文本化是最常用的方法，在 Java 和 C# 中
  常用 serialize (序列化)而 Ruby 则使用 marshal (军队整列)一词。Marshal 会递归保存该对象引用的所有对象，
  因此相比 Object#clone 方法的浅复制，marshal 可以用于深复制。

  <code ruby>
  Wrap = Struct.new(:core)
  Core = Struct.new(:data)
  source = Wrap.new(Core.new(1))

  puts "Shallow Copy:"
  (mirror = source.clone).core.data+=2
  p source, mirror

  puts "Deep Copy:"
  (mirror = Marshal.load(Marshal.dump(source))).core.data+=2
  p source, mirror

  #=== 运行结果 =>
  # Shallow Copy:
  # #<struct Wrap core=#<struct Core data=3>>
  # #<struct Wrap core=#<struct Core data=3>>
  # Deep Copy:
  # #<struct Wrap core=#<struct Core data=3>>
  # #<struct Wrap core=#<struct Core data=5>>
  </code>

  ===== 其他 =====

  ==== 匹配回文的正则表达式 ====

  <code ruby>
  "abcba" =~ /\A(?&lt;a&gt;|.|(?:(?&lt;b&gt;.)\g&lt;a&gt;\k&lt;b+0&gt;))\z/
  </code>

  ===== 改动日志 | Change log =====

  ==== 2.0.0 ====

  * No magic comment (''# encoding: UTF-8'') is needed in case the encoding is utf-8.
