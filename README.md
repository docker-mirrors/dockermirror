# 🚀 Docker Mirror

这是一个关于如何使用 registry 自建 Docker 镜像仓库的指南。你可以选择自己部署一个 Docker 镜像仓库，或者使用我们搭建好的地址快速开始。

## 🌟 快速开始

有以下几种方式可以使用本镜像：

### 1️⃣ 配置 Docker 客户端，使用本镜像作为默认镜像源（推荐）

通过编辑 Docker 客户端的配置文件实现：

```json
{
  "registry-mirrors": [
    "https://registry.dockermirror.com"
  ]
}
```

以下是常见的客户端配置方式：

1. **Docker Desktop 🖥️** 设置 -> Docker Engine
2. **OrbStack 🌐** 设置 -> Docker
3. **Docker Engine ⚙️** /etc/docker/daemon.json (没有则创建)

### 2️⃣ 直接通过命令拉取镜像

```shell
docker pull registry.dockermirror.com/nginx:latest
```

如果需要重命名为官方镜像名，可以使用以下命令（可选）：

```shell
docker tag registry.dockermirror.com/nginx:latest nginx:latest
```

然后删除代理镜像：

```shell
docker rmi registry.dockermirror.com/nginx:latest
```

### 3️⃣ 通过 Dockerfile 指定镜像源

在你的 Dockerfile 中使用本镜像源：

```shell
FROM registry.dockermirror.com/nginx:latest
```

## 🛠️ 自建镜像仓库

请确保你的网络环境可以访问外网，否则无法拉取镜像。如果你想自己搭建一个 Docker 镜像仓库，可以参考以下步骤快速开始：

### ⚡️ 快速开始

#### 1. 克隆本仓库

```shell
git clone git@github.com:akazwz/dockermirror.git
```

#### 2. 进入仓库目录

```shell
cd dockermirror
```

#### 3. 启动镜像仓库

```shell
docker-compose up
```

这是最简配置以便快速开始。如果你想要更多的配置，请参考以下文档：

- [📚 registry 官方文档](https://docs.docker.com/registry/)
- [📝 模版配置](https://github.com/akazwz/dockermirror)

## 📝注意事项

- 本镜像地址只提供 pull 操作，不支持 push 操作. 如果你需要 push 操作，请自行搭建镜像仓库。

## 📬 联系我们

如有任何问题，请通过 GitHub 仓库中的 Issue 功能与我们联系。