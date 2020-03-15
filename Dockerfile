FROM bitnami/kubectl:1.17

LABEL maintainer "Sinlead <opensource@sinlead.com>"

COPY init-kubectl kubectl /opt/sinlead/kubectl/bin/

USER root

RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

ENV PATH="/opt/sinlead/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
