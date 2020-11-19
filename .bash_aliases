### System
alias volume="amixer set Master"
alias update="sh ~/.update"

### Django
alias djmg="clear && python manage.py makemigrations && python manage.py migrate"
alias djuser="python manage.py createsuperuser --email='' --username='admin'"
alias djserv="clear && python manage.py runserver"
alias djenv=". env/bin/activate && clear"
alias djapp="django-admin startapp"
alias djproj="django-admin startproject"

### Python
alias httpserver="python3 -m http.server"
alias pfreeze="pip freeze > requirements.txt"
alias pireq="pip install -r requirements.txt"

### CLI 
alias clirel="source ~/.bashrc && clear"
alias cls="clear && clear"
alias vpsconn="ssh mtkg@194.67.92.47"
alias cc='xclip -selection clipboard'
alias cv='xclip -selection clipboard -o'

### Other 
alias walink="python3 ~/Documents/programming/python/wa.me-linker/main.py"
