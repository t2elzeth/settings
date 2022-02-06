#!/bin/bash

function gcommit() {
	git add .
    
    if [ "$#" -eq  "0" ]
        then
            MESSAGE="Update"
    else
        MESSAGE="$@"
    fi
	git commit -m "$MESSAGE"
}

function gpush() {
	git push origin $(git branch --show-current)
}

function gitlazy() {
    gcommit $@
	gpush
}

function gitrmignored() {
	git ls-files -ic --exclude-from=.gitignore | xargs git rm --cached -r
}

function gitlsignored() {
	git ls-files -ic --exclude-from=.gitignore
}

function pyenv() {
	if ! ls | grep env;
	then
		python -m venv env
	else
		echo "Virtualenv exists!"
	fi

	. env/bin/activate && clear
}
