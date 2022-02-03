# Prática 03 - GIT

<p>
Atividade realizada em grupo pelos colaboradores deste projeto para a disciplina de Gerência de Configuração.
</p>

## Objetivo

<p>
Experimentar as ferramentas do GitHub para criação de Issues, PullRequests, entre outras opções no desenvolvimento de um projeto com vários colaboradores envolvidos, de forma a compreender a execução do gerenciamento e divisão de atividades.
</p>

## Onde encontrar

<p>
  Este sistema encontra-se publicado pelo serviço do GitHub Pages e pode ser encontrado no link abaixo.
</p>

<a href="https://oliveirad4vi.github.io/git-pratica-03/" target="_blank">Site publicado pelo GitHub pages</a>

## Docker

<p>
  Neste repositório é também possível encontrar um arquivo dockerfile referente à prática 04 - Docker. O arquivo configura a geração de uma imagem docker do sistema desenvolvido, que, pos sua vez, pode ser encontrada neste <a href="https://hub.docker.com/r/d4v1s/simplehouse">repositório do DockerHub</a>. Para baixar a imagem, basta executar o seguinte comando em um terminal, caso você possua o docker instalado na sua máquina.
</p>

```
docker pull d4v1s/simplehouse:v4
```

<p>
  Após baixar a imagem, para gerar um container e ver o sistema rodando, basta digitar o comando abaixo e acessar o endereço "localhost:80" no navegador.
</p>

```
docker run -d -p 80:80 d4v1s/simplehouse:v4
```
