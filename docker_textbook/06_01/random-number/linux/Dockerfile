FROM alpine
WORKDIR /random
COPY random.sh /random/
RUN chmod +x random.sh

# CMD [ "/random/random.sh" 
# CMD [ "ls", "-al" ]

### 작동 안함 / errorCode : bash: ./random: No such file or directory
# CMD ./random.sh 

### 정상작동
# CMD [ "sh","random.sh" ]
CMD sh random.sh 