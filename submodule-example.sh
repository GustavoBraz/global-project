#!/bin/bash
echo "👨‍💻️Cria estrutura de exemplo utilizando submodules. Primeiramente cria o repositório raiz global-project e os subrepositórios back-end-project e front-end-project."
echo "Qual seu nome de usuário no GitHub?"
read nome_github;
echo "Repositório de $nome_github."
mkdir global-project
mkdir ./global-project/back-end-project
mkdir ./global-project/front-end-project
cd global-project
echo "# global-project" >> README.md
git init
git add README.md
git commit -m "Primeiro commit. Repositório raiz."
git remote add origin https://github.com/$nome_github/global-project.git
git push -u origin master
cd back-end-project
echo "# back-end-project" >> README.md
git init
git add README.md
git commit -m "Primeiro commit. Subrepositório BACK-END."
git remote add origin https://github.com/$nome_github/back-end-project.git
git push -u origin master
cd ../front-end-project
echo "# front-end-project" >> README.md
git init
git add README.md
git commit -m "Primeiro commit. Subrepositório FRONT-END."
git remote add origin https://github.com/$nome_github/front-end-project.git
git push -u origin master
cd ../
git submodule add https://github.com/$nome_github/back-end-project.git
git submodule add https://github.com/$nome_github/front-end-project.git
git commit -m "Adiciona submodules na pasta raiz."
git push -u origin master
echo "Insere um novo repositório dentro do repositório raiz chamado mobile-project, após a prieira estrutura já estar no GitHub."
mkdir mobile-project
cd mobile-project
echo "# mobile-project" >> README.md
git init
git add README.md
git commit -m "Primeiro commit. Subrepositório MOBILE-PROJECT."
git remote add origin https://github.com/$nome_github/mobile-project.git
git push -u origin master
cd ../
git submodule add https://github.com/$nome_github/mobile-project.git
git commit -m "Inclui mobile-project como novo submodule."
git push -u origin master
