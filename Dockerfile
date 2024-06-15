FROM registry:2

# 配置文件
COPY config.yml /etc/docker/registry/config.yml

# 使用环境变量覆盖配置文件
# ENV $(cat .env | xargs)

# 暴露端口
EXPOSE 5000

# 启动命令
CMD ["registry", "serve", "/etc/docker/registry/config.yml"]