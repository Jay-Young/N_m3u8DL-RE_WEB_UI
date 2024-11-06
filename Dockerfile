# 使用官方的Node.js镜像作为基础镜像
FROM node:latest

# 设置工作目录
WORKDIR /app

# 将 package.json 和 package-lock.json 复制到工作目录
COPY package*.json ./

# 安装项目依赖

RUN npm install --registry=https://registry.npmmirror.com

# 将当前目录的所有文件复制到工作目录
COPY . .

# 暴露容器的端口
EXPOSE 3599
EXPOSE 3600

# 运行应用
CMD [ "node", "start" ]
