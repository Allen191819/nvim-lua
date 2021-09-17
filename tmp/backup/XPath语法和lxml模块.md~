# XPath语法和lxml模块

## 什么是XPath？

xpath（XML Path Language）是一门在XML和HTML文档中查找信息的语言，可用来在XML和HTML文档中对元素和属性进行遍历。

## XPath开发工具

Chrome插件XPath Helper。

安装方法：

1. 打开插件伴侣，选择插件
2. 选择提取插件内容到桌面，桌面上会多一个文件夹
3. 把文件夹放入想要放的路径下
4. 打开谷歌浏览器，选择扩展程序，开发者模式打开，选择加载已解压的扩展程序，选择路径打开即可

Firefox插件Try XPath。

## XPath节点

在 XPath 中，有七种类型的节点：元素、属性、文本、命名空间、处理指令、注释以及文档（根）节点。XML 文档是被作为节点树来对待的。树的根被称为文档节点或者根节点。



## XPath语法

### 使用方式：

使用//获取整个页面当中的元素，然后写标签名，然后在写谓语进行提取，比如：

```python
//title[@lang='en']
```

### 需要注意的知识点：

1. /和//的区别：/代表只获取子节点，//获取子孙节点，一般//用的比较多，当然也要视情况而定

2. contains：有时候某个属性中包含了多个值，那么可以使用contains函数，示例如下：

   ```python
   //title[contains(@lang,'en')]
   ```

3. 谓词中下标是从1开始的，不是从0开始的

## lxml库

lxml 是 一个HTML/XML的解析器，主要的功能是如何解析和提取 HTML/XML 数据。

### 基本使用：

```python
from lxml import etree

text = '''
<div>
    <ul>
         <li class="item-0"><a href="link1.html">first item</a></li>
         <li class="item-1"><a href="link2.html">second item</a></li>
         <li class="item-inactive"><a href="link3.html">third item</a></li>
         <li class="item-1"><a href="link4.html">fourth item</a></li>
         <li class="item-0"><a href="link5.html">fifth item</a>
     </ul>
 </div>
'''
# 将字符串解析为html文档
html = etree.HTML(text)
print(html)
# 按字符串序列化html
result = etree.tostring(html).decode('utf-8')
print(result)
```



### 从文件中读取html代码：



```python
#读取
html = etree.parse('hello.html')

result = etree.tostring(html).decode('utf-8')
print(result)
```



### 在lxml中使用xpath语法

```html
<!-- hello.html -->
<div>
    <ul>
         <li class="item-0"><a href="link1.html">first item</a></li>
         <li class="item-1"><a href="link2.html">second item</a></li>
         <li class="item-inactive"><a href="link3.html"><span class="bold">third item</span></a></li>
         <li class="item-1"><a href="link4.html">fourth item</a></li>
         <li class="item-0"><a href="link5.html">fifth item</a></li>
     </ul>
 </div>
```

语法练习

```python
from lxml import etree
html = etree.parse('hello.html')
# 获取所有li标签：
# result = html.xpath('//li')
# print(result)
# for i in result:
#     print(etree.tostring(i))
# 获取所有li元素下的所有class属性的值：
# result = html.xpath('//li/@class')
# print(result)
# 获取li标签下href为www.baidu.com的a标签：
# result = html.xpath('//li/a[@href="www.baidu.com"]')
# print(result)
# 获取li标签下所有span标签：
# result = html.xpath('//li//span')
# print(result)
# 获取li标签下的a标签里的所有class：
# result = html.xpath('//li/a//@class')
# print(result)
# 获取最后一个li的a的href属性对应的值：
# result = html.xpath('//li[last()]/a/@href')
# print(result)
# 获取倒数第二个li元素的内容：
# result = html.xpath('//li[last()-1]/a')
# print(result)
# print(result[0].text)
# 获取倒数第二个li元素的内容的第二种方式：
result = html.xpath('//li[last()-1]/a/text()')
print(result)
```

