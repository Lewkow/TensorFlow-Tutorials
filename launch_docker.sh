
docker build -t alpine_tensor .
docker run -it -v $(pwd):/shared alpine_tensor /bin/bash
