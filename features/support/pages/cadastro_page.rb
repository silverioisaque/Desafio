class CadastroPage
  include Capybara::DSL

  def abrir_pagina
    visit "/?corretor_id=f6931093-e743-4553-88f6-9d04e3cec067"
  end

  def campo_email
    find("[name='email']")
  end

  def campo_telefone
    find("[name='phone']")
  end

  def campo_nome
    find("#id-name")
  end

  def campo_data_nasc
    find("input[class='MuiInputBase-input MuiInput-input MuiInputBase-inputAdornedEnd']")
  end

  def campo_profissao
    find("#professionalActivityId")
  end

  def botao_aceitar_cookies
    click_button ("Continuar")
  end

  def botao_iniciar_simulacao
    click_on("EU QUERO SIMULAR", match: :first)
  end

  def botao_proximo
    click_button "PRÓXIMO"
  end

  def checkbox_ligacao
    find("[name='checkedPhoneCall']", :visible => false)
  end

  def checkbox_whatsapp
    find("[name='checkedWhatsApp']", :visible => false)
  end

  def checkbox_email
    find("[name='checkedEmail']", :visible => false)
  end

  def campo_telefone
    find("[name='phone']")
  end

  def campo_email
    find("[name='email']")
  end

  def checkbox_autorizacao
    find("[name='shareDataWithPartners']", :visible => false)
  end

  def botao_encontrar_seguro
    click_button "ENCONTRAR MEU SEGURO"
  end

  def botao_contratar
    click_button "CONTRATAR"
  end

  def validacao_texto_form2
    find("p", text: "Quais são as melhores formas de entrar em contato?")
  end

  def validacao_pagina
    find("p", text: "Precisamos de mais alguns dados")
  end
end
