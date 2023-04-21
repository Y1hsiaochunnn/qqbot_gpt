# qqbot_gpt

## 使用方法：
 1.git项目到本地，然后进入cqhttp/config.yml修改qq号

 2.在本地执行```./go-cqhttp-[你的系统]```

 3.安装相关库
 ```shell
pip install nonebot2
pip install nonebot-adapter-onebot
```
4.启动
```shell
python bot.py
```
## 插件（nonebot_plugin_gpt3）

1.安装
```shell
pip install nonebot-plugin-gpt3 playwright -U && playwright install
```

2.导入
```python
nonebot.load_plugin('nonebot_plugin_gpt3')
```


## 项目核心
1.cqhttp

2.nonebot

3.科学上网：这里科学上网在.env.dev文件中有以下一行:
```shell
gpt3_proxy = "http://127.0.0.1:7890"               # 代理地址
```
需要换成自己的代理地址

另外对部署服务器上的用户，可以选择国内服务器加代理的方式，也可以选择国外服务器！
其中.env.dev中：
```shell
openai_api_key = "YOU_TOKEN"
```
YOU_TOKEN需要在OPENAI官方API接口拿到token