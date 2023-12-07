# Load Angular CLI autocompletion.
source <(ng completion script)

export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:~/.docker/bin
export PATH="/usr/local/mysql/bin:$PATH"

# Git branch in prompt.
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
export PS1="\u@\h \W\[\033[01;33m\]\$(parse_git_branch)\[\033[00m\] $ "