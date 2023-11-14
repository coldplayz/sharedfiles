
# User code

# export LANG=en_US.UTF-8
# export LANGUAGE=en_US.UTF-8
# export LC_ALL=en_US.UTF-8

# export LC_ALL=en_US.UTF-8
# export LC_CTYPE=en_US.UTF-8
# export LANG=C

# export http_proxy='192.168.8.169:8080'

export PATH=/usr/bin:$PATH
# Some applications may require the following environment variable too:
# export DOCKER_HOST=unix:///home/coldplayz/.docker/run/docker.sock

export RUBYOPT="-KU -E utf-8:utf-8"

alias bashrc='vi /home/coldplayz/.bashrc'
alias srcbashrc='source /home/coldplayz/.bashrc'

export NODE_PATH=/usr/lib/node_modules

alias code-edit='vi /home/coldplayz/http_status_codes.js'
alias code-search='node /home/coldplayz/http_status_codes.js'

alias gasdb='~/Utility_C-functions/gasdb/gasdb.py'

alias redison='sudo service redis-server start'
alias redisin='redis-cli'  # access the shell
alias redisstop='sudo service redis-server stop'

alias mongoon='sudo service mongod start'
alias mongoin='mongo'  # access the shell
alias mongostop='sudo service mongod stop'

alias nginxon='sudo service nginx start'
alias nginxon2='sudo service nginx restart'
alias nginxoff='sudo service nginx stop'

alias redis2on='cd /home/coldplayz/Redis/redis-6.0.10 && src/redis-server &'
alias redis2in='cd /home/coldplayz/Redis/redis-6.0.10 && src/redis-cli'
alias redis2mon='cd /home/coldplayz/Redis/redis-6.0.10 && src/redis-cli monitor'

# export http_proxy='192.168.8.169:8080'
# export https_proxy='192.168.8.169:8080'

alias proxy='~/Utility_C-functions/proxy/proxy.sh && source /home/coldplayz/.bashrc'

alias lr='ls -R'

alias indent-html='~/Utility_C-functions/indent_html.py'

alias cache-touch='~/Utility_C-functions/touch_cache.sh'

alias cwd='cd /home/coldplayz/playground/learn-react/react-tutorial-vite/hacker-stories'
alias cwd2='cd /home/coldplayz/ALX/alx-react/0x01-react_intro/'
alias api='cd /home/coldplayz/playground/learn-react/react-tutorial'
alias style='cd /home/coldplayz/playground/learn-react/react-tutorial-vite/hacker-stories/src/assets/styles/sass'

alias gasdb-data='vi ~/Utility_C-functions/gasdb/data.py'

alias gbel-util='/home/coldplayz/Utility_C-functions/gbel-util/gbel-util.js'

alias g2='/home/coldplayz/Utility_C-functions/g2'

alias cwd3='cd /home/coldplayz/Tezza/mtn_sim_project_backend'
alias backup-dir="la | grep -v node_modules | tr '\n' ' ' && echo"

alias search='/home/coldplayz/Utility_C-functions/search/search.js'
alias edit-search='vi /home/coldplayz/Utility_C-functions/search/search.ts'
# alias compile-search='tsc /home/coldplayz/Utility_C-functions/search/search.ts --target es2015 --moduleResolution nodenext --noEmitOnError true'
# alias compile-search="$(cd /home/coldplayz/Utility_C-functions/search && ./compile.sh)"
compileSearch() {
  $(cd /home/coldplayz/Utility_C-functions/search && ./compile.sh)
}
export -f compileSearch

alias tsc2='tsc --target es2015 --moduleResolution nodenext --noEmitOnError true'

alias start-be='pm2 start /home/coldplayz/playground/learn-react/react-tutorial/server.js'

# alias HOMEBREW_INSTALL="/bin/bash -c $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# End user code
