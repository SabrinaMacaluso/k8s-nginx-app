# k8s-nginx-canary-app

Generate SSH key pair

```bash
ssh-keygen -t rsa -b 4096 -C "name"
```

Set your Git username and email:

```bash
git config --global user.name "yourusername"
git config --global user.email "youremail"
```

Build the app docker image:

```bash
docker build -t nginx-image .
docker run -d --name nginx-server -p 8080:80 nginx-image
```

