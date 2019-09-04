################## Usage ##################
# 1. Make file executable
##   chmod 754 execute.sh
# 2. Check destructive changes against org
##   ./execute <sfdxAlias> --check-only
# 3. Deploy destructive changes to org
##   ./execute <sfdxAlias> --check-only

ORG="$1"
echo "Deploying destructive changes to $ORG"
sfdx force:mdapi:deploy -d . -u $ORG -w -1 $2