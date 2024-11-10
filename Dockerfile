# 使用官方Node.js基础镜像
FROM node:22
 
# 设置工作目录
WORKDIR /app
 
# 复制package.json文件和package-lock.json文件（如果存在）
COPY package*.json ./

# 复制所有源代码到工作目录
COPY . .

# 文件夹权限设置
RUN chmod 777 /app/download

RUN chmod 777 /app/download/temp
# 安装项目依赖
RUN npm install --registry=https://registry.npmmirror.com

# 热更新
RUN npm install -g nodemon --registry=https://registry.npmmirror.com

# 增加执行权限
RUN chmod a+x /app/plugin/N_m3u8DL-RE/N_m3u8DL-RE

RUN chmod a+x /app/plugin/ffmpeg/ffmpeg

# 增加ffmpeg环境变量
RUN export PATH=/app/plugin/ffmpeg:$PATH

RUN echo 'export PATH=$PATH:/app/plugin/ffmpeg' | tee -a /etc/bash.bashrc

# 增加N_m3u8DL-RE环境变量
RUN export PATH=/app/plugin/N_m3u8DL-RE:$PATH

RUN echo 'export PATH=$PATH:/app/plugin/N_m3u8DL-RE' | tee -a /etc/bash.bashrc

# 定义新的环境变量PATH
ENV PATH="/app/plugin/N_m3u8DL-RE:$PATH"

ENV PATH="/app/plugin/ffmpeg:$PATH"
# 暴露容器端口
EXPOSE 3600

# 运行Node.js应用
CMD ["nodemon", "--watch", "config.json", "--watch", "index.js", "index.js"]

#CMD [ "npm","start" ]

# 构建命令 docker build -t aidenconsole:v1 .
# 里面有些配置可能是无用的，目前这样是可以用，不想再弄了，凑合先用着