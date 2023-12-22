# LogoShareHub

O LogoShareHub é um repositório de ícones e logotipos disponíveis para uso de desenvolvedores. Você pode pesquisar, encontrar e acessar facilmente assets para melhorar suas aplicações.

## Execução

1. Clone o repositório para o seu ambiente local:

    ```bash
    git clone https://github.com/LogoShareHub/LogoShereHub.git
    ```

2. Navegue até o diretório do projeto:

    ```bash
    cd LogoShareHub/scripts
    ```
3. Conceda permissão de execução ao script de pesquisa:

   ```bash
   chmod +x search.sh
   ```

4. Execute o script de pesquisa de assets:

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

Pesquisar um ícone preenchido de 16x16 pixels:

```bash
./search.sh --find star --type svg --resolution 16x16 --category icon --style fill
```

## Adicionando Novos Itens

Se você deseja contribuir adicionando novos ícones ou logotipos ao LogoShareHub, siga estas etapas:

1. **Estrutura do Diretório:**
   - Adicione o novo item ao diretório correspondente usando o padrão: `$CATEGORY/$STYLE/$RESOLUTION/$FIND_TERM.$TYPE`
   - Exemplo: `logo/color/64x64/star_wars.svg`
   - **Importante:** O `FIND_TERM` deve ser em letras minúsculas e, se necessário, utilize `_` como separador.

2. **Atualizando o Arquivo JSON de Catálogo:**
   - Abra o arquivo `catalog.json` no diretório raiz do projeto.
   - Adicione uma nova entrada para o item no formato:

     ```json
     {
        "name": "nome-do-item",
        "styles": ["estilo"],
        "category": ["categoria"],
        "resolutions": ["resolucao"],
        "types": ["tipo"]
     }
     ```

     - `nome-do-item`: Nome do novo ícone ou logotipo.
     - `estilo`: Estilo do item (ex: fill, outline).
     - `categoria`: Categoria do item (ex: icon, logo).
     - `resolucao`: Resolução do item (ex: 16x16).
     - `tipo`: Tipo do item (ex: svg, png).

3. **Envio de Pull Request:**
   - Faça um fork do repositório para a sua conta GitHub.
   - Clone o seu fork para o seu ambiente local.
   - Adicione o novo item conforme as etapas acima.
   - Commit e envie um pull request.

4. **Análise e Integração:**
   - Seu pull request será revisado e, se estiver de acordo com as regras acima, será integrado ao projeto.

Lembre-se de seguir as melhores práticas de contribuição e fornecer informações detalhadas sobre o novo item no arquivo JSON. Obrigado por contribuir para o LogoShareHub!
