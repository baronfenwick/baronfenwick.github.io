FROM jekyll/jekyll

RUN mkdir -p $JEKYLL_DATA_DIR
ADD . $JEKYLL_DATA_DIR
WORKDIR $JEKYLL_DATA_DIR
RUN bundle install

ENTRYPOINT ["jekyll"]

CMD ["serve"]
