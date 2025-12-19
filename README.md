### 💹 Automação de Cotação de Moedas

Integração Inteligente: n8n + Google APIs + JavaScript

### 📝 Descrição do Projeto

Este projeto foi desenvolvido no processo de aprendizagem da ferramenta N8N. Ele consiste em um fluxo de trabalho (workflow) automatizado que monitora a cotação do dólar em tempo real, realiza conversões financeiras e executa ações inteligentes com base em condições pré-definidas.
A lógica consiste em:

Monitoramento: Monitoramento Autônomo: Utiliza um gatilho de agendamento (Schedule Trigger) para realizar consultas periódicas sem intervenção humana.;
Processamento: Converte os valores para Real (BRL) usando JavaScript;
Tomada de Decisão: * Alertas: Se o valor atingir o mínimo esperado, gera um alerta por e-mail personalizado;
Histórico: Se o valor for superior a uma referência alta, ele registra os dados (valor, data e hora) em uma planilha, criando um histórico de picos.

### 🚀 Tecnologias Utilizadas

n8n (Self-hosted/Render): Orquestrador de workflows para automação de processos;
Google Sheets API: Utilizada para o armazenamento e persistência de dados históricos;
Gmail API: Integração para envio de notificações automáticas via OAuth 2.0;
JavaScript: Empregado no tratamento de dados, lógica condicional e formatação de mensagens em HTML;
AwesomeAPI: Fonte de dados externa para consumo de cotações em tempo real.

### 🔐 Destaques Técnicos & Segurança

Autenticação Robusta: Implementação de OAuth 2.0 para garantir uma conexão segura com o Google Cloud Console, utilizando Client ID e Client Secret;
Segurança de Dados: Uso de Variáveis de Ambiente para proteger informações sensíveis, evitando a exposição de chaves no código-fonte;
Ambiente de Teste: Configuração de usuários de teste na tela de consentimento do Google para validação de fluxos pessoais;
Comunicação Limpa: E-mails disparados via API oficial.

### 💡 Variáveis de Ambiente:

| Variável | Valor Sugerido | Descrição |
| :--- | :--- | :--- |
| `N8N_PORT` | `10000` | Porta padrão para o plano Free do Render |
| `WEBHOOK_URL` | `https://seu-app.onrender.com/` | Essencial para o redirecionamento OAuth do Google |

### 🌐 Aplicação em Produção

A aplicação está hospedada e operando de forma autônoma no Render. Você pode visualizar o endpoint da automação através do link abaixo:

Link do Serviço: https://n8n-automacao-cotacao-de-moeda.onrender.com/

Status: Online (Operando via Gatilho de Agendamento Diariamente)

### 📂 Como Replicar este Projeto

Importação: Faça o download do arquivo .json deste repositório e importe-o no seu painel do n8n;
Google Cloud: Crie um projeto no Google Cloud Console, ative as APIs do Gmail e Sheets e configure suas credenciais;
Configuração de Redirecionamento:No Google, adicione o seu endereço de callback do n8n. Importante: Se usar o Render, configure a variável de ambiente WEBHOOK_URL com o link do seu serviço para evitar erros de redirect_uri_mismatch.;
Ativação: Vincule suas credenciais no n8n e execute o fluxo!

### 📸 Visual do Fluxo

<img width="1920" height="921" alt="novo fluxo" src="https://github.com/user-attachments/assets/45694455-98c2-40ec-9b97-4d40d5677640" />

