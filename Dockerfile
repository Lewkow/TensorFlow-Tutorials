# https://github.com/nlzimmerman/alpine-anaconda3
FROM nlzimmerman/alpine-anaconda3
USER root

ENV TF_BINARY_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp35-cp35m-linux_x86_64.whl
RUN pip install --upgrade $TF_BINARY_URL --ignore-installed

RUN apk add --no-cache vim

WORKDIR /shared

ENTRYPOINT [ "/sbin/tini", "--" ]
CMD [ "/bin/bash" ]
