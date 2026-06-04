#
# Self-baked pre-commit docker image.
#
FROM docker.io/library/python:3.12
RUN useradd noop -m
USER noop
RUN  pip3 --no-cache-dir install --user \
    tox==4.3.5 \
    pre-commit==4.2.0
ENTRYPOINT ["/home/noop/.local/bin/pre-commit", "run", "-a"]
HEALTHCHECK NONE
