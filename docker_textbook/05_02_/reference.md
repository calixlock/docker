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
