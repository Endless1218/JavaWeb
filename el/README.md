# EL

1. 概念: Expression Language 表达式语言
2. 作用：替换和简化页面中java代码的编写
3. 语法：${表达式}
4. 注意：
    * jsp默认支持el表达式,如果忽略el表达式
        1. 设置jsp中page指令中：isELIgnored="true"，忽略当前jsp页面中所有el表达式
        2. \${表达式}：忽略当前这个el表达式
5. 使用：
    * 运算
        * 运算符：
            1. 算术运算符：+ - * /(div) %(mod)
            2. 比较运算符：> < >= <= == !=
            3. 逻辑运算符：&&(and) ||(or) !(not)
            4. 空运算符：empty
                * 用于判断字符串、集合、数组对象是否为null并且长度是否为0
    * 获取值
        1. el表达式只能从域对象中获取值
        2. 语法：
            1. ${域名称.键名}
                * 域名称：
                    1. pageScope        --> pageContext
                    2. requestScope     --> request
                    3. sessionScope     --> session
                    4. applicationScope --> application (ServletContext)
            2. ${键名}：表示依次从最小的域中查找是否有该键对应的值，直到找到为止。
            3. 获取对象、List集合、Map集合的值
                1. 对象：${域名称.键名.属性名}
                    * 本质上会调用对象的getter方法
                2. List集合：${域名称.键名[索引]}
                3. Map集合：
                    * ${域名称.键名.key名称}
                    * ${域名称.键名["key名称"]}
        3. 隐式对象
            * el表达式中有11个隐式对象
            * pageContext:
                * 获取其他八大内置对象
                    * ${pageContext.request.contextPath}: 动态获取虚拟目录
    