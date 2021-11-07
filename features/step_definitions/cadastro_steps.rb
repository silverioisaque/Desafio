Dado("que acesso a página principal") do
  @cadastro_page = CadastroPage.new
  @cadastro_page.abrir_pagina
  @cadastro_page.botao_aceitar_cookies
end

Dado("clico no botão para iniciar a simulação") do
  @cadastro_page.botao_iniciar_simulacao
end

Quando("preencho os meus dados pessoais:") do |table|
  #checkpoint para garantir que está na página correta
  expect(current_path).to have_content ("identificacao")

  user = table.hashes.first
  @cadastro_page.campo_nome.set user[:nome]
  @cadastro_page.campo_data_nasc.set user[:dataNasc]
  @cadastro_page.campo_profissao.set user[:profissao]
  #sleep necessário para dar tempo de carregar o dado antes de selecionar
  sleep 2
  @cadastro_page.campo_profissao.send_keys(:arrow_down)
  @cadastro_page.campo_profissao.send_keys(:enter)
end

Quando("submeto a primeira parte do formulário") do
  @cadastro_page.botao_proximo
end

Quando("preencho os dados de contato:") do |table|
  #checkpoint para garantir que estou na página correta
  validacaoSegundoFormulario = @cadastro_page.validacao_texto_form2
  expect(validacaoSegundoFormulario).to have_content "Quais são as melhores formas de entrar em contato?"

  user = table.hashes.first
  @cadastro_page.checkbox_ligacao.set(false)
  @cadastro_page.checkbox_whatsapp.set(true)
  @cadastro_page.checkbox_email.set(true)

  @cadastro_page.campo_telefone.set user[:cel]
  @cadastro_page.campo_email.set user[:mail]
  @cadastro_page.checkbox_autorizacao.set(true)
  @cadastro_page.botao_encontrar_seguro
end

Quando("clico no botão para contratar") do
  @cadastro_page.botao_contratar
end

Então("sou redirecionado para a tela de cadastro completo") do
  #sleep necessário pois a atualização de dados da página demora
  sleep 2
  #checkpoint para garantir que estou na página correta
  expect(current_path).to have_content ("cadastro")
end

Então("vejo a mensagem de alerta: {string}") do |alerta_esperado|
  msg_alerta = find("p", text: alerta_esperado)
  expect(msg_alerta.text).to eql alerta_esperado
end
