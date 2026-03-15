#!/bin/bash

# ═══════════════════════════════════════════════════════════
# CLEAN REMOTE REFERENCES FOR LOCAL AFTER FINISHING WITH A REMOTE BRANCH
# ═══════════════════════════════════════════════════════════

# Variables
BRANCH_TYPE=$1
ISSUE_NUM=$2
DESCRIPTION=$3

if [[ $# -lt 2 || $# -gt 3 ]]; then
	echo "❌ Error: Faltan argumentos"
        echo "Uso: ./cleanup-branch.sh <type> <issue-num> [description]"
        echo "Ejemplo: ./cleanup-branch.sh feat 15"
        exit 1

elif [[ -n "$DESCRIPTION" ]]; then
	BRANCH_NAME="${BRANCH_TYPE}/issue-${ISSUE_NUM}-${DESCRIPTION}"
else
  BRANCH_NAME="${BRANCH_TYPE}/issue-${ISSUE_NUM}"

fi

echo "Cleaning branch: $BRANCH_NAME"

#Change Branch Main (avoid errors)
git checkout main

if [[ $? -ne 0 ]]; then
  echo "Error al cambiar a main"
  exit 1
fi

echo "Cleaning Local Branch"
git branch -d "$BRANCH_NAME"


if [[ $? -ne 0 ]]; then
	  echo "Warning: Branch local no existe o tiene cambios sin mergear"
  echo "💡 Si estás seguro, usa: git branch -D $BRANCH_NAME"
fi

#Delete remote branch
echo "Deleting Remote Branch"
git push origin --delete "$BRANCH_NAME"


if [[ $? -ne 0 ]]; then
  echo "Warning: Branch remoto no existe o ya fue borrado"
fi


# Clean Leftover Remote References from local
echo "Clean Leftover Remote References from local"
git fetch --prune

echo "Complete Remote Branch Cleaning"

