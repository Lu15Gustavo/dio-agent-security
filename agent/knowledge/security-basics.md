# Fundamentos de segurança

## O que é uma vulnerabilidade

Uma vulnerabilidade é uma fraqueza que pode permitir um comportamento não previsto. A existência da fraqueza não prova que houve exploração. Para concluir, é preciso separar evidências observadas de hipóteses.

## Ameaça, risco e incidente

- **Ameaça:** algo ou alguém capaz de causar dano.
- **Risco:** combinação entre a chance de um evento e o impacto dele.
- **Incidente:** evento confirmado ou suspeito que afeta a segurança ou exige investigação.
- **Vulnerabilidade:** condição que aumenta a chance de um incidente.

## Tríade CIA

- **Confidencialidade:** somente pessoas autorizadas acessam a informação.
- **Integridade:** a informação e o sistema não são alterados indevidamente.
- **Disponibilidade:** o serviço permanece acessível quando necessário.

Uma mesma falha pode afetar mais de uma propriedade. Uma injeção em uma consulta, por exemplo, pode expor dados e permitir alteração deles.

## Boa análise

Uma análise responsável:

1. confirma escopo e autorização;
2. evita dados reais e ações destrutivas;
3. registra evidências com horário e origem;
4. prioriza contenção quando há risco ativo;
5. corrige a causa raiz, não apenas o sintoma;
6. valida a correção com testes seguros;
7. documenta o que foi aprendido.

## Correções comuns

- Use consultas parametrizadas em vez de concatenar entrada do usuário.
- Valide entradas no servidor e aplique regras de negócio.
- Conceda somente os privilégios necessários ao usuário da aplicação.
- Não registre senhas, tokens ou dados pessoais em logs.
- Mantenha dependências e imagens atualizadas.
- Use testes automatizados para impedir regressões.
