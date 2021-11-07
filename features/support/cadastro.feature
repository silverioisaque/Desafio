#language: pt

Funcionalidade:  Simular Seguro

    @cadastro
    Cenario: Cadastro com sucesso
        Dado que acesso a página principal
            E clico no botão para iniciar a simulação
        Quando preencho os meus dados pessoais:
            | nome   | dataNasc   | profissao |
            | Isaque | 02/02/1981 | ADM       |
            E submeto a primeira parte do formulário
            E preencho os dados de contato:
            | cel         | mail            |
            | 48989134999 | teste@gmail.com |
            E clico no botão para contratar
        Então sou redirecionado para a tela de escolha dos produtos

    Esquema do Cenario: Tentativa de Cadastro com inconsistências no primeiro formulário

        Dado que acesso a página principal
            E clico no botão para iniciar a simulação
        Quando preencho os meus dados pessoais:
            | nome         | dataNasc         | profissao         |
            | <nome_input> | <dataNasc_input> | <profissao_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input     | dataNasc_input | profissao_input | mensagem_output                               |
            |                | 17/05/1990     | DETETIVE        | Campo obrigatório                             |
            | João Carlos    | 07/03/2030     | ARQUIVISTA      | Data de Nascimento deve ser menor que a atual |
            | Ana Maria      | 04/15/2000     | BIOM            | Data inválida                                 |
            | Anderson Silva | 05/10/2010     | JARDINEIRO      | A idade deve ser maior que 18 anos            |

    @inconsistencias
    Esquema do Cenario: Tentativa de Cadastro com inconsistências no segundo formulário

        Dado que acesso a página principal
            E clico no botão para iniciar a simulação
        Quando preencho os meus dados pessoais:
            | nome            | dataNasc   | profissao |
            | Isaque Silverio | 02/02/1990 | ADV       |
            E submeto a primeira parte do formulário
            E preencho os dados de contato:
            | cel         | mail         |
            | <cel_input> | <mail_input> |
        Então vejo a mensagem de alerta: "<msg_output>"

        Exemplos:
            | cel_input   | mail_input          | msg_output                                   |
            |             | teste@gmail.com     | Campo obrigatório                            |
            | 4899999999  | teste@gmail.com     | Telefone (Celular) deve conter 11 caracteres |
            | 47987771414 |                     | Campo obrigatório                            |
            | 48930002477 | teste               | E-mail inválido                              |
            | 48911114741 | testestes#gmail.com | E-mail inválido                              |

