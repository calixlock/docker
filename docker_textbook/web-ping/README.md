> $docker image history web-ping

- Docker 이미지의 히스토리는 이미지가 어떻게 생성되었는지를 보여주는 명령어들의 목록입니다.
- 각 라인은 이미지 빌드 과정에서 수행된 명령어를 나타내며, 이 명령어들은 Dockerfile에 기록된 순서대로 실행됩니다.

Docker 이미지 히스토리를 살펴보면 다음과 같습니다

- `CMD ["node" "/web-ping/app.js"]`
  - 이 명령어는 컨테이너가 시작될 때 실행되는 기본 명령어를 설정합니다. 여기서는 node를 사용하여 /web-ping/app.js를 실행합니다.
- `COPY app.js .`

  - 이 명령어는 app.js 파일을 현재 작업 디렉토리(.)로 복사합니다.

- `WORKDIR /web-ping`

  - 이 명령어는 작업 디렉토리를 /web-ping으로 변경합니다.

- `ENV INTERVAL=3000, ENV METHOD=HEAD, ENV TARGET=blog.sixeyed.com`

  - 이 명령어들은 각각 INTERVAL, METHOD, TARGET이라는 환경 변수를 설정합니다.

- `/bin/sh -c #(nop)  CMD ["node"]`

  - 이 명령어는 컨테이너가 시작될 때 실행되는 기본 명령어를 node로 설정합니다.

- `/bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…`

  - 이 명령어는 컨테이너가 시작될 때 항상 실행되는 명령어를 설정합니다.

- `/bin/sh -c #(nop) COPY file:238737301d473041…`

  - 이 명령어는 특정 파일을 이미지로 복사합니다.

- `/bin/sh -c apk add --no-cache --virtual .bui…`:

  - 이 명령어는 필요한 패키지를 설치합니다.

- `/bin/sh -c #(nop)  ENV YARN_VERSION=1.16.0`

  - 이 명령어는 YARN_VERSION이라는 환경 변수를 1.16.0으로 설정합니다.

- `/bin/sh -c addgroup -g 1000 node     && addu…`

  - 이 명령어는 node라는 이름의 그룹을 생성하고, 해당 그룹에 사용자를 추가합니다.

- `/bin/sh -c #(nop)  ENV NODE_VERSION=10.16.0`

  - 이 명령어는 NODE_VERSION이라는 환경 변수를 10.16.0으로 설정합니다.

- `/bin/sh -c #(nop)  CMD ["/bin/sh"]`

  - 이 명령어는 컨테이너가 시작될 때 실행되는 기본 명령어를 /bin/sh로 설정합니다.

- `/bin/sh -c #(nop) ADD file:a86aea1f3a7d68f6a…`
  - 이 명령어는 특정 파일을 이미지로 추가합니다.

이러한 명령어들은 이미지를 빌드하는 동안 각 단계에서 수행되며, 각 단계가 완료되면 그 결과는 새로운 이미지 레이어로 저장됩니다.
이렇게 생성된 이미지 레이어들은 최종 Docker 이미지를 구성합니다. 이 과정을 통해 Docker는 이미지의 변경 사항을 효율적으로 관리하고, 이미지 간에 공통된 레이어를 공유함으로써 저장 공간을 절약할 수 있습니다.

이러한 특성 덕분에 Docker 이미지는 가볍고 빠르게 배포할 수 있습니다.
