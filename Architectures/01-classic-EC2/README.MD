## Deploiement of the application on classic EC2

# AWS VPC – Architecture multi-AZ

## 🔧 applied Skills
- [x] Utiliser Git/Github pour le versionning
- [x] 3 branchs : PR (local), develop(staging), main(prod)
- [x] CI/CD via github action en fonction des push sur une branch
- [x] configuration et bonnes pratiques VPC
- [x] Division de VPC en 4 subnets
- [x] COnfigurtaion des tables de routages attachées à chaque route
- [x] Configuration d'internet Gateway
- [x] Configuration des règles sortant/Entrant via security group
- [x] Configuration Network ACL pour une couche suplémentaire de sécurité des sous réseausx
- [x] Mettre en place un suivi de log est cache de l'application

## 🛠️ Securisation de l'infrastructure
- [x] Bonnes pratiques de securisation linux  
- Connexion par clé ssh pas de mot de passe
- Limiter les accès par IP au niveau du firewall
- Ajouter une couche de sécurité avec Fail2ban
- Surveiller les log

## 🏗️ Architecture


## 🛠️ Difficultés rencontrées
- Site inaccessible après avoir parametré IGW, Route table, Security groups
==> Investigation faite via l'instance EC2 local via ssh
    systemctl status nginx => 
    ![Image troubleshooting arror access http EC2](./images/nginx_ssh.png)

    Reinstallation propre des package nécessaire 
    ![Image commandeline of installation package with nginx & php](./images/install_package_linux.png)

==> Curl local en session ssh : curl http://localhost : resulta correct ✅ mais toujours pas de reponse via le navigateur

- Verification nginx et les ports ecoutés :  sudo ss -tulpn | grep :80 
==> Le port 80 est bien en ecoute depuis n'importe quelle source

   ![tulpn troubleshooting ssh session](./images/tulpn_nginx.png)

- ping de l'ip publique depuis ma machine distant : KO
- curl -v http://16.171.62.43 : OK ✅
- Erreur : j'ai executé le test directement 16.171.62.43 et le protocole par défaut du navigateur était https , il suffisait juste ecrire correcte http://16.171.62.43

## ✅ Acquis


## 📄 Détails techniques
