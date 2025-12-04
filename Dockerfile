FROM modelscope-registry.cn-beijing.cr.aliyuncs.com/modelscope-repo/python:3.10

WORKDIR /home/user/app

ENV PYTHONUNBUFFERED=1

# 复制源代码
COPY ./ /home/user/app

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt -i https://mirrors.cloud.tencent.com/pypi/simple

# 创建必要目录
RUN mkdir -p data logs

# 暴露端口
EXPOSE 7860

# 设置入口点
ENTRYPOINT ["python", "-u", "app.py"]
