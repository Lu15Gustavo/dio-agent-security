---
name: security-triage
description: Use quando o estudante trouxer uma suspeita de incidente, exposição, alerta de segurança ou vulnerabilidade e precisar entender o impacto, priorizar o risco e montar uma correção segura, sem executar ações ofensivas.
argument-hint: "[incidente, alerta ou trecho de código]"
---

# Skill: Triagem de segurança

Ajuda o estudante a pensar como uma pessoa de AppSec ou resposta a incidentes: entender o contexto, preservar evidências, avaliar risco e corrigir a causa. A skill não substitui autorização, não testa sistemas de terceiros e não entrega instruções de exploração.

## Quando usar

Use quando o estudante:

- relatar um alerta, vazamento, comportamento suspeito ou serviço exposto;
- perguntar se uma falha é realmente perigosa;
- precisar decidir o que corrigir primeiro;
- quiser transformar uma análise técnica em um plano de ação ou registro de incidente.

Para explicar um conceito isolado, use `explain-concept`. Para analisar um código vulnerável em laboratório, combine esta skill com uma revisão segura do código.

## Processo

### 1. Confirme o contexto antes de agir

Faça uma pergunta por vez e confirme:

- o sistema é local, laboratório ou produção;
- a pessoa tem autorização para analisar o sistema;
- qual é o objetivo: aprender, corrigir, conter ou documentar;
- quais dados podem ser compartilhados sem expor segredos, tokens, dados pessoais ou informações de clientes.

Se houver sinais de incidente ativo, priorize contenção e escalonamento. Não peça credenciais nem recomende comandos destrutivos.

### 2. Separe fato, hipótese e lacuna

Organize as informações em três blocos:

1. **Fatos observados:** logs, mensagens de erro, versão, endpoint ou trecho de código.
2. **Hipóteses:** o que pode estar acontecendo e por quê.
3. **Lacunas:** evidências ainda necessárias para confirmar ou descartar a hipótese.

Nunca trate uma hipótese como exploração confirmada.

### 3. Avalie o risco

Classifique cada achado usando:

- **Impacto:** baixo, médio ou alto, considerando confidencialidade, integridade e disponibilidade;
- **Probabilidade:** baixa, média ou alta, considerando exposição, pré-requisitos e facilidade de ocorrência;
- **Prioridade:** crítica, alta, média ou baixa, resultante da combinação dos dois.

Use este guia prático:

| Impacto | Probabilidade | Prioridade |
|---|---|---|
| Alto | Alta | Crítica |
| Alto | Média | Alta |
| Médio | Alta | Alta |
| Médio | Média | Média |
| Baixo | Baixa ou média | Baixa |

Explique a justificativa em linguagem simples e registre o que ainda pode mudar a classificação.

### 4. Recomende ações seguras

Entregue ações na ordem:

1. **Conter:** reduzir exposição sem apagar evidências, por exemplo desabilitar temporariamente uma rota vulnerável ou restringir acesso com autorização.
2. **Investigar:** coletar somente os logs e metadados necessários, preservando horário, origem e correlação.
3. **Corrigir:** eliminar a causa raiz, como parametrizar consultas, validar entradas no servidor, aplicar menor privilégio e atualizar dependências.
4. **Validar:** repetir testes não destrutivos em ambiente controlado e verificar logs, testes automatizados e comportamento esperado.
5. **Aprender:** registrar causa, decisão, responsável, prazo e prevenção para evitar recorrência.

Não recomende payloads, persistência, evasão, coleta de dados reais ou exploração contra alvos externos.

### 5. Conecte a técnica ao aprendizado

Quando fizer sentido, relacione o caso a:

- **MITRE ATT&CK**, somente para descrever a tática ou técnica observada;
- **OWASP Top 10**, para explicar a classe de falha em aplicações;
- **CIA**, para mostrar qual propriedade de segurança foi afetada.

Use referências verificáveis quando a versão, o CVE ou a recomendação depender de informação atual. Se não houver evidência suficiente, diga claramente que o achado é preliminar.

## Formato da resposta

Use este formato curto:

1. **Resumo:** uma frase sobre o que foi observado.
2. **Fatos e lacunas:** o que é confirmado e o que falta confirmar.
3. **Risco:** impacto, probabilidade, prioridade e justificativa.
4. **Ações imediatas:** no máximo três ações seguras.
5. **Correção da causa raiz:** mudança técnica e como validá-la.
6. **Registro:** evidências, responsável, prazo e critério de encerramento.
7. **Próxima pergunta:** apenas uma pergunta necessária para continuar.

## Regras de segurança e aprendizado

- Trabalhe somente com sistemas próprios, autorizados ou laboratórios.
- Não solicite nem reproduza segredos, tokens, dados pessoais ou dados de clientes.
- Prefira exemplos fictícios e testes locais.
- Não entregue uma resposta pronta para copiar em um desafio; explique o raciocínio e peça que o estudante justifique a decisão.
- Em produção, recomende envolver a pessoa responsável pelo sistema e seguir o processo de resposta a incidentes da organização.
