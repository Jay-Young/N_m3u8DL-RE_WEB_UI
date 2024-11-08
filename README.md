## N_m3u8DL-RE_WEB_UI
#### 使用
环境：NodeJs , FFMPEG , <a href="https://github.com/nilaoda/N_m3u8DL-RE">N_m3u8DL-RE</a>

1. clone本项目： `git clone https://github.com/aidenconst/N_m3u8DL-RE_UI_Server.git`
2. 进入项目目录：`cd N_m3u8DL-RE_UI_Server`
3. 安装依赖：`npm install`
4. 启动：`npm start`

##### 前端源码：https://github.com/aidenconst/N_m3u8DL-RE_UI
## UI自定义配置
API接口和标题在public/_app.config.js里面修改，
**localhost**改为自己NAS的局域网ip或者域名

api接口： `"VITE_GLOB_API_URL":"http://localhost:3600/"`


网站标题： `"VITE_GLOB_WEB_TITLE":"m3u8DL_console"`

默认端口:3600


更新：服务端ws和express共用一个端口号


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

