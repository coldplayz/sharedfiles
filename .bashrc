
# User code

# export LANG=en_US.UTF-8
# export LANGUAGE=en_US.UTF-8
# export LC_ALL=en_US.UTF-8

# export LC_ALL=en_US.UTF-8
# export LC_CTYPE=en_US.UTF-8
# export LANG=C

# export http_proxy='192.168.8.169:8080'

export XDG_RUNTIME_DIR=/home/userland/.docker/run
export PATH=/usr/bin:$PATH
# Some applications may require the following environment variable too:
# export DOCKER_HOST=unix:///home/userland/.docker/run/docker.sock

export RUBYOPT="-KU -E utf-8:utf-8"

# MySQL credentials
alias bashrc='vi /home/userland/.bashrc'
alias srcbashrc='source /home/userland/.bashrc'

export NODE_PATH=/usr/lib/node_modules

alias code-edit='vi /home/userland/http_status_codes.js'
alias code-search='node /home/userland/http_status_codes.js'

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

alias redis2on='cd /home/userland/Redis/redis-6.0.10 && src/redis-server &'
alias redis2in='cd /home/userland/Redis/redis-6.0.10 && src/redis-cli'
alias redis2mon='cd /home/userland/Redis/redis-6.0.10 && src/redis-cli monitor'

# export http_proxy='192.168.8.169:8080'
# export https_proxy='192.168.8.169:8080'

alias proxy='~/Utility_C-functions/proxy/proxy.sh && source /home/userland/.bashrc'

if [[ ! "$nvm_use_runs" ]]
then
  export nvm_use_runs=0
fi
if [[ "$nvm_use_runs" -eq 0 ]]
then
  nvm use 18.12.1
  nvm_use_runs=$((nvm_use_runs + 1))
fi

alias lr='ls -R'

alias indent-html='~/Utility_C-functions/indent_html.py'

alias cache-touch='~/Utility_C-functions/touch_cache.sh'

alias cwd='cd /home/userland/playground/learn-react/react-tutorial-vite/hacker-stories'
alias cwd2='cd /home/userland/ALX/alx-react/0x01-react_intro/'
alias api='cd /home/userland/playground/learn-react/react-tutorial'
alias style='cd /home/userland/playground/learn-react/react-tutorial-vite/hacker-stories/src/assets/styles/sass'

export IPINFO_IO_TOKEN='6fa5f0c565ea21'

alias gasdb-data='vi ~/Utility_C-functions/gasdb/data.py'

alias gbel-util='/home/userland/Utility_C-functions/gbel-util/gbel-util.js'

alias g2='/home/userland/Utility_C-functions/g2'

alias cwd3='cd /home/userland/Tezza/mtn_sim_project_backend'
alias backup-dir="la | grep -v node_modules | tr '\n' ' ' && echo"

alias search='/home/userland/Utility_C-functions/search/search.js'
alias edit-search='vi /home/userland/Utility_C-functions/search/search.ts'
# alias compile-search='tsc /home/userland/Utility_C-functions/search/search.ts --target es2015 --moduleResolution nodenext --noEmitOnError true'
# alias compile-search="$(cd /home/userland/Utility_C-functions/search && ./compile.sh)"
compileSearch() {
  $(cd /home/userland/Utility_C-functions/search && ./compile.sh)
}
export -f compileSearch

alias tsc2='tsc --target es2015 --moduleResolution nodenext --noEmitOnError true'

alias start-be='pm2 start /home/userland/playground/learn-react/react-tutorial/server.js'

# alias HOMEBREW_INSTALL="/bin/bash -c $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# End user code
