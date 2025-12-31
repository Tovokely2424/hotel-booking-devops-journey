# AWS VPC – Architecture multi-AZ

## 🎯 Objectif
Concevoir un réseau AWS isolé et hautement disponible
pour héberger une application web en production.
Ce VPC est utilisé pour l"ensemble des labs sur ce portfolio.

## 🏗️ Architecture
- 1 VPC
- 2 AZ
- 2 subnets publics / 2 privés
- Internet Gateway
- Tables de routage dédiées

## 🛠️ Difficultés rencontrées
- Mauvaise association des tables de routage
- Confusion IGW / NAT Gateway

## ✅ Acquis
- Compréhension du découpage CIDR
- Séparation public / privé
- Logique haute disponibilité AWS

## 📄 Détails techniques
- [Lab VPC basique (PDF)](./lab-vpc-basic.pdf)
- [Lab VPC multi-AZ (PDF)](./lab-vpc-multi-az.pdf)
