FROM diamol/base AS build-stage
RUN echo 'building....' > /build.txt

FROM diamol/base AS test-stage
COPY --from=build-stage /build.txt /build2.txt
RUN echo 'testing....' >> /build2.txt

FROM diamol/base 
COPY --from=test-stage /build2.txt /build3.txt
CMD cat /build3.txt

