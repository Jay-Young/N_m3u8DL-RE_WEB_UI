## N_m3u8DL-RE_WEB_UI
#### 使用
环境：NodeJs , FFMPEG , <a href="https://github.com/nilaoda/N_m3u8DL-RE">N_m3u8DL-RE</a>

1. clone本项目： `git clone https://github.com/aidenconst/N_m3u8DL-RE_UI_Server.git`
2. 进入项目目录：`cd N_m3u8DL-RE_UI_Server`
3. 安装依赖：`npm install`
4. 启动：`npm start`

登录账号密码在config.json设置`"userName":"console","passWord":"123456"`
##### 前端源码：https://github.com/aidenconst/N_m3u8DL-RE_UI
## UI自定义配置
标题在public/_app.config.js里面修改，
<s>**localhost**改为自己NAS的局域网ip或者域名</s>

<s>[新版无需改以下部分]api接口： `"VITE_GLOB_API_URL":"http://localhost:3600/"` **这里必须改成自己的ip或域名**</s>


网站标题： `"VITE_GLOB_WEB_TITLE":"m3u8DL_console"`

默认端口:3600

如果改端口需要修改：config.json文件port字段<s>[新版无需改以下部分]和public/_app.config.js里的VITE_GLOB_API_URL对应端口</s>


## Docker部署
    1. clone本项目： git clone https://github.com/aidenconst/N_m3u8DL-RE_UI_Server.git

    2. 进入项目目录：cd N_m3u8DL-RE_UI_Server

    3. 修改UI配置里的ip，参考上方 #UI自定义配置

    4. 构建镜像：docker build -t aidenconsole:v1 .

    5. docker管理工具里面去创建容器就可以了，默认配置。
       或者命令：docker run --privileged -p 3600:3600 --network bridge --name m3u8downloader-1 -d aidenconsole:v1

目录映射自己配置以下对应目录
## API接口:

### API接口可以给油猴脚本或者插件使用
接口地址：`http://localhost:3600/download`
### API下载参数
参数  | 描述  | 是否必要
 ---- | ----- | ------  
title  | 保存文件名 | √
url  | 下载链接 | √
imgUrl  | 封面图链接 | ×
retrycounts  | 重试次数 | ×
saveFilePaths  | 保存路径 | ×
setbinaryMeMrges  | 是否二进制合并 | ×
setdecryptions  | 是否实时解码分片 | ×
threadCountss  | 并发线程数 | ×


需要更多参数的自己加进去就行
## 预览
<img src="https://github.com/aidenconst/N_m3u8DL-RE_WEB_UI/blob/d67176fb2682ad3c1b1a7d9f82a65b2f3e8946aa/1.PNG">

UI框架用的：https://doc.vben.pro/

