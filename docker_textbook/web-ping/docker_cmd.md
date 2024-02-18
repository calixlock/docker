## $ docker images

- 이미지의 용량 확인 할 수 있다.

## $ docker system df > 실제 용량

- docker에 사용되는 이미지의 실제 용량을 확인 할 수 있다.
- 이미지 레이어를 공유시 축소되므로 실제 캐시 이미지 용량은 적을 수 있다.

## $ docker imaages build -t [image name]:[v2] .

- `docker imaages build` Docker 이미지를 빌드하는 명령어입니다. Dockerfile이라는 스크립트를 사용하여 이미지를 생성
- `-t` tag 옵션 생성될 이미지에 이름 붙이는 옵션
- `web-ping`:`v2`: 생성될 이미지의 이름 / 버전을 지정

-
