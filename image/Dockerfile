FROM redmine:latest

# add github webhook plugin
RUN mkdir /usr/src/redmine/plugins/tmp
RUN echo "gem \"redmine_github_hook\"" > /usr/src/redmine/plugins/tmp/Gemfile
RUN cd /usr/src/redmine && bundle
RUN rm /usr/src/redmine/plugins/tmp/Gemfile
RUN ln -s /usr/local/bundle/gems/redmine_github_hook-3.0.1/ /usr/src/redmine/plugins/redmine_github_hook


RUN mkdir /usr/src/redmine/repositories
# clone repo
RUN cd /usr/src/redmine/repositories && git clone --bare https://github.com/intervals-mining-lab/libiada-web
RUN cd /usr/src/redmine/repositories && git clone --bare https://github.com/intervals-mining-lab/foarlab.org
RUN cd /usr/src/redmine/repositories && git clone --bare https://github.com/intervals-mining-lab/libiada-core