`all_cmd'是总的指令（最开始写的是一个sh脚本，想法是尽可能把不需要手动的跑了，所以有wget获取包之类的）

然后改成创建docker，主要配置是basic那个sh，需要本目录下有相应的环境文件（前面wget那俩玩意，以及hadoop最好是改过一次的，之后进docker就只需要改几个数字了）

进入之后运行sethadoop和ssh这两个

最后运行fin
