# Projeto: Infraestrutura AWS com EC2 e VPC usando Terraform (Modular)

Este projeto realiza o provisionamento de uma infraestrutura básica na AWS utilizando o Terraform com uma arquitetura modular. A solução implementa uma VPC simplificada e uma instância EC2 com Apache instalado automaticamente via script de user data.

Este projeto foi originalmente desenvolvido por Kledson Hugo, professor do curso. As melhorias de modularização e organização foram feitas por Gabriel Lamata com o intuito de consolidar os aprendizados em infraestrutura como código.

> ✅ Projeto desenvolvido com base nas aulas do professor **Kledson Hugo**, com adaptações e melhorias feitas por **Gabriel Lamata**, incluindo a modularização do código.

---

## 🧱 Estrutura Modular

- **/modules/network**: Responsável pela criação da VPC, subnet pública, Internet Gateway e tabela de rotas.
- **/modules/compute**: Responsável pela criação da instância EC2 e seu respectivo Security Group.

---

## 🌐 Recursos Provisionados

- VPC customizada
- Subnet pública
- Internet Gateway
- Tabela de rotas com acesso à internet
- Security Group com liberação da porta 80 (HTTP)
- Instância EC2 Amazon Linux 2 com Apache instalado automaticamente

---

## 📁 Estrutura do Projeto

aws-terraform-ec2-modular/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│ ├── network/
│ └── compute/


---

## 📄 Pré-requisitos

- Conta na AWS
- AWS CLI configurado (`aws configure`)
- Terraform instalado na máquina
- Permissões suficientes para criar recursos de rede e EC2

---

## 🚀 Como usar

1. Clone este repositório:

```bash
git clone https://github.com/Lamataa/aws-terraform-ec2-modular.git
cd aws-terraform-ec2-modular

Execute os comandos Terraform:

terraform init
terraform plan
terraform apply
