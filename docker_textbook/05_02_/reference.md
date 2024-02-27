### 도커 허브에 직접 빌드한 이미지 푸시하기

#### 도커허브계정 환경변수 설정

```bash
# windows
$dockerId="dockerhub_account"

# linux
export dockerId="dockerhub_account"
```

#### 도커허브 로그인

```bash
docker login --username $dockerId
# login succeded > message 확인!
```

#### 도커허브에 이미지 파일 참조 부여 / 레지스트리에 푸시

```bash
docker image tag <imageName> $dockerId/<>:<tag>
ex) docker image tag image-gallery $dockerId/image-gallery:v1

docker image push $dockerId/<imageName>:<tag>
ex) docker image push $dockerId/image-gallery:v1

check) echo "https://hub.docker.com/r/$dockerId/image-gallery/tags"
```
