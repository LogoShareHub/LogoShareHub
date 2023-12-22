# LogoShareHub

O LogoShareHub é um repositório de ícones e logotipos disponíveis para uso de desenvolvedores. Você pode pesquisar, encontrar e acessar facilmente assets para melhorar suas aplicações.

## Instalação

1. Clone o repositório para o seu ambiente local:

    ```bash
    git clone https://github.com/SeuUsuario/LogoShareHub.git
    ```

2. Navegue até o diretório do projeto:

    ```bash
    cd LogoShareHub
    ```

3. Execute o script de pesquisa de assets:

    ```bash
    ./search.sh --find termo --type png --resolution 64x64 --category icon --style fill
    ```

4. Siga as instruções no guia de uso para encontrar e acessar os assets.

## Guia de Uso

### Opções do Script

- `-f, --find`: Termo de pesquisa para encontrar o item.
- `-t, --type`: Tipo do item (ex: svg, png).
- `-r, --resolution`: Resolução do item (ex: 32x32, 64x64).
- `-c, --category`: Categoria do item (ex: icon, logo).
- `-s, --style`: Estilo do item (ex: fill, outline).
- `-h, --help`: Exibe a mensagem de ajuda.

### Exemplo de Uso

Pesquisar um ícone preenchido de 64x64 pixels:

```bash
./search.sh --find coração --type svg --resolution 64x64 --category icon --style fill
