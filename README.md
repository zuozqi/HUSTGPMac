华中科技大学毕业论文LaTeX模板-2017-Mactex Version
---

本项目源自[Skinaze](https://github.com/skinaze/HUSTPaperTemp)的项目。原本的模版
在本地编译时，使用MacOS下的Mactex编译会报错，所以对原有的`.cls`文件进行了修改。修改后较原文档简陋了很多，但是在Mac和PC上都能被直接编译成功(Mac和PC上使用的均为Sublime Text 3 + Latextools的环境)。

修改的内容包括：

- 目录部分左对齐显示
- 学校logo不再可选，只提供绿色版本
- 一些页面设置的细节（这部分采用之前自己的设置，不清楚可能会有什么区别）
- 取消`Autoref`相关的设置
- 取消对复杂表格的预设（需要的可以自己设置）

除上述区别外于愿文档的命令基本相同。
还需要手动设置的地方：

- 在每一个Section(章节)结束后，按照学校的要求，需要另起一页，所以需要在Section结束时输入`\clearpage`

- 因为取消了原文档对图片、表格环境的`[htbp]`设定，如果在生成pdf文件后图片位置不合适要在对应的地方声明


PS:在使用Mendeley导出的bib文件时，使用`gbt7714-2005.bst`格式编译，部分参考文献会报错，可能和Mendeley对中文支持不好有关。建议使用其他文献管理软件导出(未尝试)或将参考格式改为`unsrt`。


原项目中对该模版的使用有详细的叙述，更详细的说明推荐参考原模版的使用说明。

本模版中对环境、一些命令的设置均沿用[Skinaze](https://github.com/skinaze/HUSTPaperTemp)的模版，Windows用户推荐使用该模版，因为设置更加丰富，本模版适用**买了Mac想用Latex写毕业论文但是不会定制格式**的同学。