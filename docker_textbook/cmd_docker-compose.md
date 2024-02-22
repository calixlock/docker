# # 스크립트 작성

```yaml
## docker-compose.yml / docker-compose.yaml
services:
  <service_name_01>:
    image: <container_image_01:version>
    container_name: <container_name_01>
    restart: always
    environment:
      <db_root_pwd>: ####
      <db_user>: ####
      <db_user_pwd>: ####
    volumes:
      - <host_volume_directory>:<container_volume_directory>
      - <host_volume_directory>:<container_volume_directory>
    ports:
    - "####":"####"
  <service_name_02>:
    image: <container_image_02>
```

# # 스크립트 실행

```bash
docker-compose up
docker-compose -f <file_name.yml> up -d -p <project_name>
```

## 실행 옵션

- `-p <project_name>` : 프로젝트 명 지정
- `-f <docker-compose_file_name>` : 도커 컴포즈 파일 이름 별도 지정시 사용
- `-d` : detach > 백그라운드 실행
