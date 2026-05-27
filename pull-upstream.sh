#!/bin/bash
# Faz pull do upstream (Insper/md-bcc) e resolve conflitos preferindo a versão do upstream

set -e

echo "Buscando atualizações do upstream..."
git fetch upstream

echo "Fazendo merge com estratégia 'theirs' (upstream prevalece nos conflitos)..."
git merge upstream/main -X theirs --no-edit

echo "Sincronizando fork no GitHub..."
git push origin main

echo "Pronto! Repositório atualizado."
