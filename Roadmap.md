# 🗺️ Roadmap DevOps
## Phase 1 – Linux Administration
## Phase 1.1 – Linux Fundamentals
- [x] File navigation: ls, cd, pwd, tree
- [x] File operations: cp, mv, rm, touch, cat, less, more, head, tail
- [x] File search: find, locate, which, whereis, grep, egrep, fgrep
- [x] Text processing: wc, sort, uniq, cut, tr, diff, cmp, file
- [x] User management: useradd, usermod, userdel, passwd, id, whoami, su, sudo
- [x] Group management: groupadd, groupmod, groupdel, gpasswd
- [x] Permission management: chmod, chown, chgrp, umask, SUID, SGID, sticky bit
- [ ] Process control: ps, top, htop, pgrep, kill, pkill, killall, jobs, bg, fg, nice, renice
- [ ] Service management: systemctl (start, stop, restart, enable, disable, status)
- [ ] System logs: journalctl, /var/log/syslog, /var/log/messages, /var/log/auth.log
- [ ] Network commands: ip a, ip route, ping, traceroute, netstat, ss, nslookup, dig, curl, wget
- [ ] Network files: /etc/network/interfaces, /etc/hosts, /etc/resolv.conf, /etc/hostname
- [ ] Storage management: df, du, mount, umount, lsblk, blkid, fdisk, parted, mkfs, fsck
- [ ] Compression/archiving: tar, gzip, gunzip, bzip2, zip, unzip
- [ ] Resource monitoring: uptime, free, vmstat, iostat, sar, lsof, dmesg
- [ ] Scheduling: cron, crontab -e, at, systemd timers
## Phase 1.2 – Scripting & Opérations
- [ ] Bash basics: variables, arguments, loops, conditions, functions
- [ ] Input/output redirection: >, >>, 2>, |, tee
- [ ] Error handling and exit codes: set -e, trap, logger, $?
- [ ] Text processing: awk, sed, grep, cut, paste, join, sort, uniq
- [ ] Automating repetitive tasks (backup, cleanup, monitoring scripts)
- [ ] Cron job creation for automated tasks
- [ ] Creating reusable bash scripts with parameters and logging
## Phase 1.3 – Scripting & Opérations
- [ ] System updates: apt package management
- [ ] SSH hardening: /etc/ssh/sshd_config, disable root login, custom port, key authentication
- [ ] Firewall management: ufw
- [ ] Connection monitoring: last, lastlog, who, w
- [ ] Security auditing tools: fail2ban
- [ ] Backup & restore: rsync, scp, tar, dd, cron jobs
- [ ] Database backup: mysqldump, pg_dump
- [ ] System hardening: permissions, updates, logging, limited sudo usage (sudoers)

# Phase 2 – AWS and Cloud

## Phase 2.1 – Fondations AWS & Réseau
- [x] VPC multi-AZ
- [x] Subnets publics / privates
- [ ] Internet Gateway
- [ ] NAT Gateway
## Phase 2.2 Security hardening : 
- [ ] Security Groups
- [ ] NACL (Network Access Control list)
- [ ] AWS Shild
- [ ] AWS WAF

## Phase 2.3 – Déploiement classique
- [ ] EC2 + Nginx
- [ ] RDS
- [ ] S3 (assets & logs)
- [ ] Load Balancer
- [ ] Auto Scaling

## Phase 2.4 – Conteneurisation
- [x] Docker Compose sur EC2
- [ ] ECS Fargate
- [ ] Registry (ECR)

## Phase 2.5 – Serverless
- [ ] Lambda
- [ ] EventBridge
- [ ] SNS

## Phase 3 – Automatisation
- [ ] Terraform
- [ ] Github action
- [ ] Ansible
- [ ] CI/CD complet

## Phase 4 – Monitoring
- [ ] CloudWatch metrics
- [ ] Logs centralisés
- [ ] Alerting
- [ ] Grafana / Prometheus
- [ ] Zabbix