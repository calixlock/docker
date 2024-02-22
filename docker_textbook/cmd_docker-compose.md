## # script

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
      - "####:####"
  <service_name_02>:
    image: <container_image_02>
```

## # Script Keywords

- `image`: Docker 이미지의 이름과 태그를 지정합니다.
  ```yml
  image: nginx:1.17
  ```
- `build`: Dockerfile이 위치한 디렉토리를 지정하거나 빌드 설정을 제공합니다.
- `Dockerfile`: build 옵션 내에서 사용되며, Dockerfile의 이름을 지정할 수 있습니다.
  ```yml
  Dockerfile: Dockerfile.dev
  ```
- ports: 컨테이너와 호스트 간에 포트를 매핑합니다.
  ```yml
  ports:
    - "<host_port>:<container_port>"
  ```
- `volumes`: 호스트와 컨테이너 간에 볼륨을 공유하도록 설정합니다.

  ```yml
  volumes: - ./data:/var/lib/mysql
  ```

- `container_name`: 컨테이너의 이름을 지정합니다. 예:

  ```yml
  container_name: web
  ```

- `command`: 컨테이너가 시작될 때 실행할 명령을 지정합니다. 예:

  ```yml
  command: ["python", "app.py"]
  ```

- `environment`: 컨테이너에서 사용할 환경 변수를 설정합니다. 예:

```yml
environment: - DEBUG=1
```

- `env_file`: 환경 변수를 포함하는 파일의 경로를 지정합니다. 예:

```yml
env_file: .env
```

- `depends_on`: 다른 서비스에 대한 의존성을 지정합니다.

```yml
  depends_on: - db
```

- `restart`: 컨테이너가 종료될 때 재시작 정책을 지정합니다.
  ```yml
  restart: always
  ```
- `networks`: 컨테이너가 속해야 하는 네트워크를 지정합니다.
- `links`: 다른 서비스에 대한 링크를 생성합니다. 이는 depends_on과 비슷하지만, 서비스 간의 네트워킹을 추가로 제공합니다.
- `healthcheck`: 컨테이너가 정상적으로 작동하는지 확인하는 데 사용되는 명령을 지정합니다.

- d
  - d

## # script execute

```bash
docker-compose up

docker-compose -p <project_name> -f <file_name.yml> up -d
```

### 실행 옵션

- `-p <project_name>` : 프로젝트 명 지정
- `-f <docker-compose_file_name>` : 도커 컴포즈 파일 이름 별도 지정시 사용
- `-d` : detach > 백그라운드 실행
