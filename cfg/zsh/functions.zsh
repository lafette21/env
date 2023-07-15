function colormap() {
    for i in {0..255}; do print -Pn "%K{$i} %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%8)):#7}:+$'\n'}; done
}

function disas() {
    objdump -D -M intel "$1" | bat --language asm --paging=never
}

function godbolt() {
    local SOURCE_FILE="$1"
    shift
    local CXX_FLAGS="$@"
    gcc -std=c++20 -O3 "$CXX_FLAGS" "$SOURCE_FILE" -S -o - -masm=intel | c++filt | grep -vE '\s+\.'
}

function field() {
    FIELD_NUM="$1"
    while read INPUT; do
        awk '{print $'"$FIELD_NUM"'}' <<< "$INPUT"
    done
}

# git log
function gl() {
    if [ $# -eq 0 ]; then
        ARGS="-n10"
    else
        ARGS="$@"
    fi

    git --no-pager log \
        --decorate \
        --graph \
        --date=format:'%a %d %b %Y %H:%M:%S' \
        --pretty="tformat:%C(178)%h %C(029)%cd %C(027)%<(20,trunc)%cn %C(250)%s %C(auto)%d" \
        ${(z)ARGS}
}

function random-string() {
    local LENGTH="$1"
    local PATTERN="$2"

    if [[ -z $LENGTH ]]; then
        echo -e "Usage: random-string LENGTH [PATTERN]\n\nPattern is given to 'tr'"
    else
        cat /dev/urandom | base64 | tr -dc "${PATTERN:="0-9a-zA-Z"}" | head -c${LENGTH}
    fi
}
