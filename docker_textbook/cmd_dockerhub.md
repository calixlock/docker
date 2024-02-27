### 도커 허브 접속

```sh
# 도커계정 환경변수 설정
## linux bash
$ export dockerId="####"
## windows power shell
$ $dockerId="####"
## check dockerId : 출력 확인
$ echo $dockerId

# 도커 허브 접속
$ docker login --username $dockerId
```

### 도커 허브에 이미지 올리기

```sh
# 이미지 이름에 꼭 아이디의 경로가 있어야한다
$ docker image tag <imageName> $dokerId/<imageName>:<tag>

# 참조 기능으로 이미지 확인
$ docker images --filter reference=<imageName> --filter reference='*/<imageName>'

# 이미지를 도커허브 레지스트리에 푸시/upload
$ docker image push $dockerId/<imageName>:<tag>

# 제대로 푸시 되었는지 확인
$ echo "https://hub.docker.com/r/$dockerId/<imageName>/tags"
```
