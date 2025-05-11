# aws-terraform-ec2-modular

Este projeto faz o **provisionamento de uma infraestrutura básica na AWS** utilizando o **Terraform** com arquitetura modular. O projeto cria uma rede VPC simplificada e uma instância EC2 com Apache instalado via script de _user data_.

## ✅ Recursos criados
- VPC customizada
- Subnet pública
- Internet Gateway
- Tabela de rotas
- Security Group com acesso à porta 80 (HTTP)
- Instância EC2 Amazon Linux 2 com Apache instalado automaticamente

## 📁 Estrutura do projeto
aws-terraform-ec2-modular/
├── main.tf  
├── variables.tf  
├── outputs.tf  
├── modules/  
│ ├── network/  
│ └── compute/

## Como usar
1. Configure suas credenciais AWS no terminal (via `aws configure` ou variáveis de ambiente).
2. Clone o repositório e entre na pasta:
   ```bash
   git clone https://github.com/seu-usuario/aws-terraform-ec2-modular.git
   cd aws-terraform-ec2-modular

Execute os comandos Terraform:

terraform init
terraform plan
terraform apply

Este projeto foi originalmente criado por Kledson Hugo (meu professor), e eu realizei adaptações e melhorias, incluindo a modularização do código. Agradeço ao Kledson pelo excelente trabalho inicial!
