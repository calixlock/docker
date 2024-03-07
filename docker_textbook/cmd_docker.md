# 참고

> https://docs.docker.com/reference/

# # ps : process status

## $ docker ps [option]

> 컨테이너의 실행중인 목록 (ps = Process Status)

- `-a`=`--all` : 종료된 컨테이너의 목록을 포함한 전체
- `-s`=`--size` : 각 컨테이너의 파일 시스템 크기 정보도 출력
- `-n num`: 최근에 생성된 n개의 컨테이너를 나열
- `--no-trunc`: 출력을 절단하지 않고 전체 정보를 출력
- `-q` = `--quiet`: 컨테이너 ID만 출력
- `-l` = `--latest`: 최근 생성된 컨테이너 정보 출력
- `--format`: 출력 형식을 지정합니다. Go 템플릿을 사용하여 출력 형식을 사용자 정의

# # image :

## $ docker image [option]

> 이미지 관리

- `-a`=`--all`: 모든 이미지를 표시 (기본적으로 중단 이미지는 숨겨져 있습니다).
- `--digests`: Docker 이미지의 고유한 식별자로, 이미지의 내용을 고유하게 식별하는 데 사용되는 해시 값을 표시
- `-f`=`--filter`: 제공된 조건에 따라 출력을 필터링합니다.
  > docker image ls -f referance=[A_Image] -f referance=[B_Image]
- `--format`: 사용자 정의 템플릿을 사용하여 출력 형식을 지정합니다.
- `--no-trunc`: 출력을 자르지 않습니다.
- `-q`=`--quiet`: 이미지 ID만 표시합니다.

## $ docker images [option]

> Docker의 사용 가능한 모든 이미지의 목록 출력

- `docker image ls` = `docker images`
- 이미지의 리포지토리 이름, 태그, 이미지 ID, 생성일, 크기 등의 정보가 포함
- `docker ps`의 `옵션`들 적용 가능

# # system :

## $ docker system [option]

> Docker 시스템에 대한 정보를 제공 및 관리에 사용되는 명령어

- `df` : Docker객체(이미지,컨테이너,볼륨)가 사용하는 이미지의 실제 용량(디스크 공간)을 확인 (이미지 레이어를 공유시 축소되므로 실제 캐시 이미지 용량은 적을 수 있다.)
- `events` : docker 데몬에서 발생하는 실시간 이벤트를 스트림
- `info` : Docker 시스템에 대한 전반적인 정보를 보여줍니다. 이 정보에는 CPU, 메모리, OS, 네트워크 설정 등이 포함
- `prune` : 사용하지 않는 Docker, 컨테이너, 네트워크, 볼륨을 모두 제거
  > docker system prune [option]
  - `-a`=`--all`: 사용하지 않는 이미지뿐만 아니라 사용 중인 이미지의 이전 버전도 제거
  - `--force`: 확인 메시지 없이 바로 제거
  - `--volumes`: 사용하지 않는 볼륨도 제거

# # build :

## $ docker image build -t [image name]:[v2] [DockerfileLocation]

- `docker image build` Docker이미지를 빌드하는 명령어입니다. Dockerfile이라는 스크립트를 사용하여 이미지를 생성
- `-t` tag 옵션 생성될 이미지에 이름 붙이는 옵션
- `web-ping`:`v2`: 생성될 이미지의 이름 / 버전을 지정
- `imageName`: 소문자로 작성 > 규칙

# # run :

## $ docker run [option]

> 이미지를 `옵션`에 따른 컨테이너 생성 및 실행

- `-d` = `--detach` : 컨테이너 백그라운드 실행
- `-it` = `--iteractive` + `--tty` : (i)표준입력 열고 (t)가상 터미널 할당
- `--name` : 컨테이너 이름 지정.
- `-p [hostPort:containerPort]` = `--publish` : 호스트와 컨테이너 간의 네트워크 포트 연결
- `-v [hostDirectory:containerDirectory]` = `--volume` : 호스트와 컨테이너 간의 디렉토리 공유
- `-e [VARIABLE=value]` = `--env` : 컨테이너 내부에서 사용 환경변수를 설정
- `--rm` : 컨테이너가 종료될 때 자동으로 컨테이너 삭제
- `--network` : 컨테이너를 실행시 `특정 네트워크에 연결`

> Ex) docker run -d --name my_container -p 8080:80 --rm my_image
>
> > - my_container라는 이름의 컨테이너를 백그라운드에서 실행, host의 8080 포트와 container의 80 포트를 연결, 컨테이너가 종료되면 자동으로 삭제

# # start :

## $ docker start [option] [containerID]

> docker에 생성된 컨테이너를 백그라운드 실행하는 명령어

- `-a` = `--attach`: container의 output을 연결하여 log 표시
- `-i` = `--iteractive`: container의 StdIn을 열어 접속상태 유지

# # commit :

## $ docker commit [option] [containerID/Names] [newImageName:version]]

> 실행중인 컨테이너의 현재상태를 새로운 이미지로 저장

- `-a` = `--author`: 커밋의 작성자를 설정, 이미지의 메타데이터에 추가
- `-m` = `--message`: 커밋에 대한 설명을 추가, 이미지의 메타데이터에 저장
- `-p` = `--pause`: 커밋을 수행하는 동안 컨테이너를 일시 중지 ,default = active.

# # container execute : 컨테이너 실행 중 접속 방식

## $ docker `exec` -it [container_ID/Name] /bin/bash

- 실행중인 컨테이너에 접속, 명령수행가능(일시적) - exec
- `exit` 명령어로 접속 종료

## $ docker `attach` [container_ID/Name]

- 실행되고 있는 컨테이너에 접속 - attach
- 단, 컨테이너 run시 /bin/bash 사용하지 않았다면 접속 불가.

# # network : 도커 간 통신

## $ docker `network` create nat

> 컨테이너 간 통신에 사용되는 `nat` 도커 네트워크 생성

- docker network `create` [option]: `새로운 네트워크를 생성`
  > `--driver` : 네트워크 드라이버를 지정
  > `--subnet` : 네트워크의 서브넷을 지정
- docker network `inspect`: `네트워크의 세부 정보를 확인`
- docker network `ls`: `현재 시스템에 있는 모든 네트워크를 나열`
- docker network `rm`: `네트워크 삭제`
- docker network `prune`: 사용하지 않는 네트워크를 `모두 삭제`
- docker network `connect`: 컨테이너를 네트워크에 `연결`
- docker network `disconnect`: 컨테이너를 `네트워크에서 연결 해제`
