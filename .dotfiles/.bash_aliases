### System
alias volume="amixer set Master"
alias update="sh ~/.update"

### Django
alias djmg="clear && python manage.py makemigrations && python manage.py migrate"
alias djadmin="python manage.py initadmin"
alias djserv="clear && python manage.py runserver"
alias djapp="django-admin startapp"
alias djproj="django-admin startproject"

### Python
alias pyfreeze="pip install pip-chill && pip-chill > requirements.txt"
alias pyreq="pip install -r requirements.txt"
alias python="python3.9"
alias pybuild="rm -rf ./dist/ && python setup.py sdist bdist_wheel"
alias pyupload="twine upload --skip-existing dist/* -r testpypi"


### Docker
alias dc="sudo docker-compose"
alias dcprod="sudo docker-compose -f docker-compose.prod.yml"
alias dcdev="sudo docker-compose -f docker-compose.dev.yml"

### JS
alias npmserve="clear && npm run serve"

### CLI
alias clirel="source ~/.bashrc && clear"
alias cls="clear && clear"
alias copy='xclip -selection clipboard'
alias cddjango="cd ~/Documents/code/python/django/"
