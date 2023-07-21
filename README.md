# k8s-nginx-canary-app
![j (2)](https://github.com/SabrinaMacaluso/k8s-nginx-canary-app/assets/104983001/01d5ff1d-9be5-436d-a4dd-0d00099b30be)



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

To enable the Ingress addon in Minikube, use the following command:

```bash
minikube addons enable ingress
```

To create a local domain for testing purposes, you can modify the hosts file:

```bash
sudo nano /etc/hosts
```
Add the following

```bash
<Minikube-IP> mylocalapp.com
```
To get the Minikube IP address:

```bash
minikube ip
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


