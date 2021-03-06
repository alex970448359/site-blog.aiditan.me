---
layout:    note
permalink: /notes/style-guide/
title:     Style Guide
date:      2017-01-14 09:55:12 +0800
modified:  2017-01-14 09:55:12 +0800
toc:       true
---

## 黄金法则

没有所谓的“最佳风格”。选择一种风格，一致地使用，并用文档清楚地记录。

> 不论多少人同时参与，每一行代码看上去都应像是同一个人编写的一样。

## 写作排版

### 语言选择

所有写作环境按英语的使用频率由高至低排列如下：

- 【完全】源代码
- 【完全】代码注释
- 【几乎】提交信息 (Commit Message)
- 【尽量】程序文档 (Readme, Wiki, Docs)

### 中文排版

1. 国家标准要求使用弯引号 `“”` 和 `‘’`，但这里推荐使用直引号 `「」` 和 `『』`。
	- 单直引号内再用引号时，使用双直引号
	- 当引号表达讽刺、反语、暗示时，使用弯引号
2. 省略号 `……` 占两个中文字宽，共六个点
3. 破折号 `——` 占两个中文字宽，连成一横
4. 点号（顿号、逗号、句号等）、结束引号、结束括号、结束双书名号等，不能出现在一行的开头。
5. 开始引号、开始括号、开始双书名号等，不能出现在一行的结尾。

### 英文排版

1. 句首大写，词间空格
2. 符号与空格
	- 点号（逗号、句号等）后加一个空格
	- `符号 + 数字` 或 `数字 + 符号` 的连用形式时，中间不加空格
	- 括号、引号外面前后加空格，里面前后无空格。

> 示例：17°, 100%，$10, -23

### 中英混排

1. 在纯英文语块中使用英文标点，否则使用中文标点；
2. 在纯文本环境下，中英文字符（标点除外）间应保留一个空格以免过于紧凑；排版软件中则不用，因为软件会自动处理这个问题。
	- 中文与数字之间 **一般** 要加空格，特殊情况如「2016年1月29日」可不空格；
	- 中文与链接、加粗、行内代码间要加空格

> “Valar Morghulis” 是高等瓦雷利亚 (High Valyrian) 语，意思为“凡人皆有一死”，是厄斯索斯地区的一句常用语。通常人们会以一句 “Valar Dohaeris”，即“凡人皆需伺奉”，作为回应。

### 本节参考

- [写给大家看的中文排版指南](http://zhuanlan.zhihu.com/uicircle/20506092)

## 项目管理

### Git

#### 提交时机

1. 尽量做到 "One function, one commit（一个功能/目的，一个提交）."
2. 版本号的更新，需要单独提交。对于复杂项目，要求在该提交下注明本次版本更新的主要变更。

#### 提交信息

编写提交信息 (commit message) 时请注意：

- 使用英语撰写
- 首字母大写
- 使用一般现在时的祈使句
- 以动词开头，推荐以下词汇：
	- Create
	- Implement
	- Update
	- Fix
	- Refactor
	- Rename
	- Bump

> 说明一下 Bump 与 Update 的区别：
>
> 1. 提升自己的版本时，使用 Bump，如 `Bump to v0.4.0`
> 2. 更新依赖的版本时，使用 Update，如 `Update bragi to v0.2.0`

#### 分支命名

我们使用 Feature Branch Workflow，尽量使用以下命名：

- 主要分支：`master`/`production`, `develop`/`development`, `staging`
- 功能分支：以 `feature-` 开头命名
- 修复分支：以 `fix-` 开头命名

## 程序代码

请务必使用 *.editorconfig* 配置文件来保证跨编辑器的一致性。

1. 永远使用 UTF-8 编码
2. 使用双空格缩进
3. 没有行尾空白符
4. 采用 Linux 风格换行符 `\n`
5. 文件以空行结尾

### HTML

1. 嵌套元素总是要缩进一级，除 `<head>` 和 `<body>` 以外
2. 总是为 HTML 属性值使用双引号（特殊情况为了方便，允许使用单引号）

#### 本节参考

- [Code Guide by @mdo](http://mdo.github.io/code-guide/)

### CSS

1. `:` 和 `,` 后要有空格
2. 利用 **CSScomb** 整理属性顺序
3. 推荐使用 SCSS，避免使用 LESS
4. `/* ... */` 注释符仅作临时用途，不能在正式代码中使用
5. 命名空间问题
  - 页面级别的元素可以使用 id，否则应用 class 描述样式
  - 使用短横线连接单词

#### 本节参考

- [Code Guide by @mdo](http://mdo.github.io/code-guide/)

### JS

使用 `ESLint` 检查代码是否符合 [JavaScript Standard Style](http://standardjs.com/)。

### Ruby

以社区驱动的 Ruby 代码风格指南 [bbatsov/ruby-style-guide](https://github.com/bbatsov/ruby-style-guide) 为基准，采用 [RuboCop](https://github.com/bbatsov/rubocop) 检查代码风格。

> 榜样很重要。—— Officer Alex J. Murphy / RoboCop

在代码中编写 YARD 风格的文档来生成 API 文档。

> 用鸭子类型，写丫的文档。—— Aidi Stan

### Rails

以社区驱动的 Rails 代码风格指南 [bbatsov/rails-style-guide](https://github.com/bbatsov/rails-style-guide) 为基准。
