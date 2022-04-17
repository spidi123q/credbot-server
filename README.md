# Setup

Download and install anaconda from https://www.anaconda.com/products/individual

```
conda create -n rasa-server python=3.8
```

```
conda activate rasa-server
```

```
pip3 install -U pip
```

```
pip install rasa
```

# Runing API server

```
rasa run --enable-api --cors "*"
```

# Running on command line

```
rasa shell
```

# Deployment

endpint: https://afq2nfdfdj.us-east-1.awsapprunner.com

# Deploy to aws ECS

```
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/k7m6x2n8
```

```
docker build -t credbot .
```

```
docker tag credbot:latest public.ecr.aws/k7m6x2n8/credbot:latest
```

```
docker push public.ecr.aws/k7m6x2n8/credbot:latest
```
