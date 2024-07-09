FROM jekyll/jekyll

RUN --mount=target=Gemfile,src=Gemfile \
  --mount=target=Gemfile.lock,src=Gemfile.lock \
  bundle

ENTRYPOINT ["jekyll"]

CMD ["serve"]

COPY . .
