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


# Troubleshooting in Minikube:

If you encouter an `ErrImagePull` status while deploying nginx, try the following:

1- Add `imagePullPolicy: Never` in the deployment file:

```python
spec:
      containers:
      - name: nginx
        image: nginx-image:latest
        imagePullPolicy: Never
```
2- Run the following command to set the Docker environment to use minikube:

```bash
eval $(minikube -p minikube docker-env)
```


