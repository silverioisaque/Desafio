# Desafio Automação usando Capybara


Baixar e instalar o ruby (recomendo versão Ruby+Devkit 2.6.8-1 (x64))

	https://rubyinstaller.org/downloads/

Baixar e copiar a pasta do projeto para um diretório

No terminal apontando para a pasta do projeto rode os comandos:
	gem install bundle
	
	bundle install 
	
	cucumber --init

Também é necessário fazer o download do chromedriver

Acesse o link pelo navegador do chrome e veja qual é a sua versão:

	chrome://settings/help
	
Baixar a versão correspondente do chromedriver no link:

	https://chromedriver.storage.googleapis.com/index.html
	
O chormedriver deve ficar armazenado em uma das pastas do PATH (echo %path%) (caso seja windows)

Para executar o teste regressivo basta estar na pasta do projeto e usar o comando "cucumber" no terminal.

Para rodar um cenário especifico usar o comando "cucumber -t @cadastro" ou "cucumber -t @inconsistencias"
