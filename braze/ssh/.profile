# Braze Console Shortcuts
ssh-staging() {
  ssh -t toks@dashboard-001.staging-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-01() {
  ssh -t toks@dashboard-004.production-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-02() {
  ssh -t toks@dashboard-001.production-02-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-03() {
  ssh -t toks@dashboard-a-001.production-03-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-04() {
  ssh -t toks@dashboard-a-001.production-04-east-1.appboy.com "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}

ssh-eu() {
  ssh -t toks@dashboard-002.production-euc-1.appboy.eu "/bin/bash --login -c 'sudo -iH -u platform /opt/platform/bin/platform-dashboard-console'"
}
