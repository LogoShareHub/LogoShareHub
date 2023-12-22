#!/bin/bash

function display_help() {
    echo "Uso: $0 [--find FIND_TERM] [--type TYPE] [--resolution RESOLUTION] [--category CATEGORY] [--style STYLE]"
    echo "   -f,--find FIND_TERM       Termo de pesquisa para encontrar o item"
    echo "   -t,--type TYPE            Tipo do item (ex: svg, png)"
    echo "   -r,--resolution RESOLUTION Resolução do item (ex: 32x32, 64x64)"
    echo "   -c,--category CATEGORY    Categoria do item (ex: icon, logo)"
    echo "   -s,--style STYLE          Estilo do item (ex: fill, outline)"
    echo "   -h, --help             Exibe esta mensagem de ajuda"
    exit 1
}
function check_link() {
    local url=$1
    local http_status=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    if [ "$http_status" -eq 200 ]; then
        echo "[Success]:$url"
    else
        echo "[Error]: not found."
    fi
}
if [ "$#" -lt 2 ]; then
    display_help
fi

while [ "$#" -gt 0 ]; do
    case "$1" in
        -f|--find)
            FIND_TERM="$2"
            shift 2
            ;;
        -t|--type)
            TYPE="$2"
            shift 2
            ;;
        -r|--resolution)
            RESOLUTION="$2"
            shift 2
            ;;
        -c|--category)
            CATEGORY="$2"
            shift 2
            ;;
        -s|--style)
            STYLE="$2"
            shift 2
            ;;
        -h|--help)
            display_help
            ;;
        *)
            echo "Opção desconhecida: $1"
            display_help
            ;;
    esac
done
GITHUB_REPO="https://raw.githubusercontent.com/LogoShareHub/LogoShereHub/main/assets"
SEARCH_URL="$GITHUB_REPO/$CATEGORY/$STYLE/$RESOLUTION/$FIND_TERM.$TYPE"
check_link "$SEARCH_URL" "$GITHUB_REPO"