华中科技大学毕业论文LaTeX模板-2017-Mactex Version
---

本项目Fork自[Skinaze](https://github.com/skinaze/HUSTPaperTemp)的仓库。
在本地编译时，MacOS下的Mactex对一些指令会报错，所以对原有的`.cls`文件进行了修改。

修改的内容包括：

- 目录部分左对齐显示
- 学校logo不再可选，只提供绿色版本
- 一些页面设置的细节（采用之前自己的设置，不知道具体的区别）
- 取消`Autoref`相关的设置
- 取消对复杂表格的预设（需要的可以自己设置）

除上述区别外于愿文档的命令基本相同，更改后的文件在Mactex以及Texlive、MikTex下均能调试通过。


以下为原说明信息。

```
本项目为非官方的华中科技大学本科生毕业论文LaTeX模板，考虑到目前网络上可以找到的本校模板已经严重过时，本人重新制作了该模板，符合2016年华中科技大学本科生毕业论文官方模板格式。

##模板样例
![样例](Example/example.png)
正文样例可以参照[PDF样例文档](Example/example.pdf)

##使用方法
* 下载本模板[最新Release版本](https://github.com/skinaze/HUSTPaperTemp/releases)
* 下载并安装最新版本的MiKTeX （推荐）或者TeX Live
* 打开TeX works，并设置默认编译工具(Edit->Preference->Typesetting->Processing Tools->Default)为XeLaTeX+MakeIndex+BibTeX
* 新建一个tex文档并保存在一个文件夹下，将Template文件夹下所有文件拷贝到该文件夹下
* 在新的tex文档中使用\documentclass{HustGraduPaper}使用模板定义的样式

##详细说明
详细说明请参考[使用说明](Instruction/使用说明.pdf)，或者查看[Example文件夹](Example)下的例子。

##问题反馈
如果在使用本模板遇到任何问题，可以[发邮件给我](mailto:me@stringblog.com)，或者前往[我的博客](http://stringblog.com/)。

##未发布的更新内容
无
```