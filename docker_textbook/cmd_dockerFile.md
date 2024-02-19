## FROM [image] AS [alias newNaming]

>

- baseImage를 선택 / 이름을 변경 가능

## COPY [option] [beforeImage_fileAddress] [nowImage_fileAddress]

> 파일을 복사해서 이미지에 넣는 기능

- `--from=[beforeImage] [beforeImage_fileAddress] [nowImage_fileAddress]`

## RUN [shell command]

> 명령을 실행하고 그 결과를 이미지 레이어에 저장하는 기능
