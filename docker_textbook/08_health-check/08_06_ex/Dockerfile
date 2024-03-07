FROM diamol/node

ENV MAX_ALLOCATION_MB=4096 \
    LOOP_ALLOCATION_MB=512 \
    LOOP_INTERVAL_MS=2000

# CMD ["node", "memory-hog.js"]
# 조건 1 : dependency
CMD node memory-check.js && \
    node memory-hog.js
# 조건 2 : interval memory check
HEALTHCHECK --interval=5s \
CMD node memory-check.js


WORKDIR /app
COPY src/ .