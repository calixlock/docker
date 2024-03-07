## # script

1. services : 여러 컨테이너(서비스 단위)가 구성된 애플리케이션 구성
2. networks : 서비스 컨테이너가 연결될 모든 도커 네트워크

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
networks:
  <service_network_name>:
    external: # 옵션 : default(=ture) 새로 생성하지 마라
      name: <_network_name>
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
- `ports`: 컨테이너와 호스트 간에 포트를 매핑합니다.
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

- `restart`: 컨테이너가 예기치 않게 종료/실패 할 경우 재시작 정책을 지정합니다.

  ```yml
  restart: unless-stopped # 컨테이너가 임의로 중지되지 않았거나, 데몬에 의해 중지되지 않는 한 항상 컨테이너 재시작
  restart: no # 컨테이너가 자동으로 재시작되지 않음
  restart: always # 컨테이너가 중지되면 항상 컨테이너 재시작
  restart: on-failure[:max-retries] # 컨테이너가 0이 아닌 종료 코드로 종료되면 컨테이너를 재시작 / max-retries : 컨테이너 재시작 시도 최대 횟수 지정

  ```

- `networks`: 컨테이너가 속해야 하는 네트워크를 지정합니다.
- `links`: 다른 서비스에 대한 링크를 생성합니다. 이는 depends_on과 비슷하지만, 서비스 간의 네트워킹을 추가로 제공합니다.
- `healthcheck`: 컨테이너가 정상적으로 작동하는지 확인하는 데 사용되는 명령을 지정합니다.

## # script execute

```bash
# 실행
docker-compose up --scale <serviceName>=n

# 옵션+ 실행
docker-compose -p <projectName> -f <fileName.yml> up -d

# 중지
docker-compose stop

# 중지 및 삭제
docker-compose down

# 서비스에 해당하는 로그 출력
docker-compose logs --tail=1 <serviceName>
```

### 실행 옵션

- `-p <project_name>` : 프로젝트 명 지정
- `-f <docker-compose_file_name>` : 도커 컴포즈 파일 이름 별도 지정시 사용
- `-d` : detach > 백그라운드 실행
- `--scale <service_name>=n`: 서비스에 대해 n개만큼 컨테이너 수를 증가 시킬 수 있다.
