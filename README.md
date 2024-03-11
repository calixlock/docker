## Docker 관련 자료 모음

- docker CMD
- docker script 작성

  - dockerFile 작성
  - docker-compose.yml 작성

- etc...

## .dockerignore 적용

```bash
# dockerFile 과 빌드 될 위치에 .dockerignore파일 생성 후 아래와 같이 작성.
.git
.gitignore
.dockerignore
Dockerfile
*.md
*.sh
*.yml
etc_scripts
```

## .gitignore 적용

- #### ignore 적용 안될 때 ( feat. 이전에 올린 파일 때문에 )

```bash
# add된 상태에서 .gitignore가 안통하기 때문에 스테이징 된 것들 일단 모두 되돌리고 다시 적용
$ git rm -r --cached .
$ git add .
$ git commit -m "Apply .gitignore"
```

- #### 참고 : gitignore 작성 시
  > - https://inpa.tistory.com/entry/GIT-%E2%9A%A1%EF%B8%8F-gitignore-%EC%9E%90%EB%8F%99-%EC%83%9D%EC%84%B1
