# 🤖 DIO Agent

> Seu mentor com Inteligência Artificial para aprender mais e melhor na [DIO](https://dio.me).

O **DIO Agent** é um agente de IA que acompanha você na sua jornada de estudos. Ele conhece as experiências da DIO (Bootcamps, Formações, Cursos, Desafios e muito mais) e ajuda você a estudar, praticar e planejar a sua carreira.

Você não precisa saber programar nem instalar nada complicado. Em **3 passos**, o seu mentor está pronto para usar.

---

## ✨ Três palavras para começar

- 🧠 **Agente de IA:** um chatbot responde perguntas. Um *agente* vai além: lê, planeja e executa passos para ajudar você a alcançar um objetivo. É a diferença entre alguém que explica o caminho e alguém que caminha junto com você.
- 🖥️ **Harness:** é o programa onde o agente roda. O agente é o mentor, e o harness é a sala onde vocês se encontram. O mesmo mentor atende em salas diferentes, por isso o DIO Agent funciona em vários harnesses.
- 🧩 **Skill:** é uma habilidade do agente, descrita em um guia passo a passo. Você não precisa chamar a skill: o agente percebe o que você precisa e usa a certa sozinho.

Esses e outros termos estão no [Glossário](docs/glossary.md).

---

## 🚀 Comece em 3 passos

### 1️⃣ Instale um harness

Recomendamos o **Google Antigravity**, que tem limites de uso generosos para quem está começando. Mas qualquer harness da lista funciona: escolha um e siga a instalação da documentação oficial dele.

| Harness | Documentação oficial |
|---------|----------------------|
| Google Antigravity (recomendado) | https://antigravity.google/docs |
| Claude Code | https://code.claude.com/docs |
| Codex | https://developers.openai.com/codex |
| OpenCode | https://opencode.ai/docs |
| Hermes | https://hermes-agent.nousresearch.com/docs |

### 2️⃣ Baixe o DIO Agent e abra no harness

Baixe este repositório do jeito mais simples para você:

- **Com Git:** no terminal, rode `git clone https://github.com/digitalinnovationone/dio-agent.git`
- **Sem Git:** no topo desta página, clique no botão verde **Code**, depois em **Download ZIP**, e extraia a pasta.

Depois, abra no harness a pasta do projeto, a que tem o arquivo `AGENTS.md` (pelo Git, ela se chama `dio-agent`; pelo .zip, `dio-agent-main`). O harness lê esse arquivo sozinho, e o agente já sabe quem é: o seu mentor de estudos da DIO.

### 3️⃣ Converse

Fale naturalmente, com as suas palavras. Nas primeiras vezes, vale usar um dos [modelos de prompt](#-modelos-de-prompt) abaixo: quanto mais contexto você dá, melhor o agente ajuda.

---

## 🧩 As skills do agente

| Skill | Para que serve | Experimente pedir |
|-------|----------------|-------------------|
| [Plano de estudos](skills/study-plan/SKILL.md) | Organiza o que estudar, em que ordem e em quanto tempo | "Quero concluir este Bootcamp em 2 meses, me ajuda?" |
| [Destravar desafio](skills/unblock-challenge/SKILL.md) | Conduz você até a solução de um desafio, sem dar a resposta pronta | "Travei nesse desafio, me ajuda?" |
| [Explicar conceito](skills/explain-concept/SKILL.md) | Explica conceitos de forma simples, com analogias e exemplos | "Não entendi o que é uma API." |
| [Pesquisa na web](skills/web-search/SKILL.md) | Responde dúvidas atuais (versões, lançamentos, mercado) com fontes citadas | "Qual a versão estável do Node hoje?" |
| [Revisão de portfólio](skills/portfolio-review/SKILL.md) | Dá feedback sobre o seu portfólio e GitHub antes de buscar vagas | "O que falta no meu GitHub para uma vaga júnior?" |
| [Caminho AI Builder](skills/ai-builder-path/SKILL.md) | Ajuda você a escolher o próximo passo na Carreira AI Builder | "Qual Formação AI Builder combina comigo?" |
| [Triagem de segurança](skills/security-triage/SKILL.md) | Ajuda a entender alertas e vulnerabilidades, priorizar riscos e planejar correções seguras | "Recebi este alerta de segurança; por onde começo?" |

A pesquisa na web usa a busca do seu harness. Se ele não tiver busca própria, veja [como conectar o You.com](docs/youcom-mcp.md), que tem uma opção gratuita.

---

## 🛡️ Evolução deste projeto: triagem de segurança

Este projeto foi especializado para orientar estudantes em uma **triagem segura de vulnerabilidades e incidentes**. A melhoria foi escolhida porque vai além de identificar uma falha: o agente organiza fatos e hipóteses, avalia impacto e probabilidade, prioriza o risco e conduz a correção sem incentivar exploração de sistemas reais.

### O que foi criado ou alterado

- [skills/security-triage/SKILL.md](skills/security-triage/SKILL.md): skill com perguntas de contexto, verificação de autorização, matriz de risco, contenção, investigação, correção e validação.
- [agent/knowledge/security-basics.md](agent/knowledge/security-basics.md): conhecimento sobre vulnerabilidade, ameaça, risco, incidente, tríade CIA e boas práticas defensivas.
- [agent/persona.md](agent/persona.md): orientações para o agente agir com responsabilidade quando o assunto envolver segurança.
- [AGENTS.md](AGENTS.md): registro da nova skill e da base de conhecimento, permitindo que o harness a descubra.
- [README.md](README.md): documentação da especialização e roteiro de uso.

### Como usar no Hermes

Abra um terminal na pasta que contém o [AGENTS.md](AGENTS.md) e execute o Hermes a partir dela:

```powershell
cd C:\caminho\para\dio-agent
hermes
```

Depois, envie um cenário autorizado e sem dados sensíveis. Por exemplo:

```text
Estou analisando um laboratório local autorizado.
Uma aplicação concatena a entrada do usuário em uma consulta SQL.
Faça uma triagem segura: separe fatos, hipóteses e lacunas,
avalie impacto e probabilidade e proponha uma correção defensiva.
Não use payloads nem tente acessar sistemas externos.
```

O agente deve perguntar pelo contexto antes de sugerir ações, indicar o risco com justificativa e propor uma correção que possa ser validada em laboratório. Para a evidência do projeto, registre prints da conversa no Hermes mostrando:

1. a análise do cenário;
2. as perguntas de contexto e autorização;
3. a classificação de risco;
4. o plano de correção e validação.

> Não compartilhe tokens, senhas, dados pessoais, logs de clientes ou endpoints reais nos prints.

### Como executar os testes do laboratório

Abra o terminal na raiz do projeto, a pasta que contém o [AGENTS.md](AGENTS.md). O comando correto é:

```powershell
cd C:\Users\luisb\OneDrive\Documentos\DIO-AGENT
python -m unittest agent.test_lab -v
```

Também é possível executar o [run_lab.ps1](run_lab.ps1), que ajusta o diretório automaticamente:

```powershell
cd C:\Users\luisb\OneDrive\Documentos\DIO-AGENT
.\run_lab.ps1
```

O resultado esperado termina com:

```text
Ran 9 tests
OK
```

Deixe esse resultado visível no terminal e use a captura de tela como evidência em [docs/evidence/](docs/evidence/).

---

## 📝 Modelos de prompt

Copie, preencha o que está entre colchetes e envie. Não precisa de formato perfeito: o agente pede mais detalhes se precisar.

**🗺️ Plano de estudos**

```
Quero montar um plano de estudos.
- Meu objetivo: [ex: ser dev back-end, concluir um Bootcamp]
- O que quero fazer na DIO: [link ou nome do Bootcamp, Formação, Aceleração ou Carreira]
- O que já tenho: [um plano de ação ou de estudos, se tiver]
- Meu nível hoje: [iniciante, intermediário, avançado]
- Tempo disponível: [ex: 1 hora por dia, de segunda a sexta]
```

**🔓 Destravar desafio**

```
Estou travado em um Desafio de [Código, Projeto ou Criativo] da DIO.
- O que o desafio pede: [cole o enunciado ou, no Desafio de Projeto, o link do repositório do desafio]
- Onde eu travei: [explique o ponto da dificuldade]
- Meu código ou repositório: [cole o código ou o link, se tiver]
Me ajuda a destravar sem dar a resposta pronta.
```

**💡 Explicar conceito**

```
Me explica o conceito de [ex: API, laço de repetição, herança].
- Meu nível: [nunca vi, já ouvi falar, quero aprofundar]
```

**🧭 Caminho AI Builder**

```
Quero escolher meu próximo passo na Carreira AI Builder.
- O que quero construir com IA: [ex: um produto para o meu negócio, um software, agentes que automatizam processos, ainda não sei]
- Minha experiência com programação: [nenhuma, o básico, trabalho com desenvolvimento]
- Meu objetivo: [ex: mudar de carreira, tirar uma ideia do papel]
```

**🛡️ Triagem de segurança**

```
Estou analisando um sistema [local/laboratório/produção] e tenho autorização.
O que observei foi: [descreva o alerta ou vulnerabilidade sem dados sensíveis].
Quero separar fatos, hipóteses e lacunas, avaliar impacto e probabilidade,
priorizar o risco e montar um plano de contenção, correção e validação segura.
```

---

## 🔄 Mantenha o DIO Agent atualizado

O DIO Agent evolui com o tempo. Se você usou Git, rode `git pull` no terminal, dentro da pasta (ou peça para o próprio agente rodar). Se baixou o .zip, baixe de novo.

---

## 🗂️ Estrutura do repositório

```
dio-agent/
├── README.md                Este guia
├── AGENTS.md                Definição do agente (lida pelo harness)
├── CLAUDE.md                Atalho para o Claude Code
├── agent/
│   ├── persona.md           A personalidade e o tom do agente
│   └── knowledge/           O que o agente sabe sobre a DIO e segurança
├── skills/                  Uma pasta por skill, cada uma com o seu SKILL.md
└── docs/
    ├── glossary.md          Glossário de termos
    └── youcom-mcp.md        Como conectar a busca do You.com
```

---

## 🤝 Contribua

Tem uma ideia de skill? Veja [como criar uma skill](skills/README.md) e abra um pull request.

---

## 💬 Sobre este projeto

O DIO Agent foi criado para acompanhar você nos Bootcamps e Formações da DIO. A ideia é simples: aprender na era da IA fica mais fácil quando você tem um mentor disponível a qualquer hora.

Bons estudos, e vem com a gente. 🚀
