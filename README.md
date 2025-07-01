
# AWS Infrastructure - Producción

Este repositorio contiene la infraestructura como código para el entorno de producción en AWS, definida y gestionada mediante Terraform.

---

## ✅ Componentes actualmente registrados

### Red (módulo `vpc`)
- VPC: `vpc-produccion` (`10.0.0.0/16`)
- Subnets públicas:
  - `subnet_a1`, `subnet_a3`, `subnet_a4`
- Subnets privadas:
  - `subnet_c2`, `subnet_d2`, `subnet_e2`, `subnet_f2`
- 4 tablas de rutas (`rt_1` a `rt_4`), con asociaciones a subnets
- Nombres estandarizados mediante `tags`

### Cómputo (módulo `compute`)
- Instancia EC2 de producción: `contenedores`
- IP pública fija mediante Elastic IP (`52.201.37.75`)
- Asociación de EIP gestionada por Terraform
- IAM Instance Profile: `AccessDynamo`
- `Security Group IDs` definidos como variables
- Volumen EBS raíz gestionado por configuración (`gp3`, 12 GB)

---

## ⚙️ Módulos definidos

```hcl
module "vpc" {
  source = "./vpc"
}

module "compute" {
  source              = "./compute"
  subnet_id           = module.vpc.subnet_a3_id
  security_group_ids  = [
    "sg-02f937cdb5c5d27f9",
    "sg-063522d650bc29e1f"
  ]
}
```

---

## 📤 Outputs configurados

- ID de instancia EC2
- IP pública (EIP)
- ID de VPC
- Subnets públicas

---

## 🚧 Próximos pasos

1. **Reorganizar y limpiar subnets** y sus tags/nombres
2. Revisión y estandarización de **tablas de rutas**
3. Implementar y auditar **Security Groups**
4. Incorporar **recursos IAM** (roles, policies)
5. Registrar recursos **serverless y bases de datos** (Lambda, DynamoDB, etc.)

---

## 🗂 Estructura del repositorio

```
infra/
├── main.tf
├── provider.tf
├── versions.tf
├── outputs.tf
├── vpc/
│   ├── vpc.tf
│   ├── subnets.tf
│   ├── route_tables.tf
│   ├── route_table_association.tf
│   ├── outputs.tf
├── compute/
│   ├── ec2.tf
│   ├── eip.tf
│   ├── variables.tf
│   ├── outputs.tf
```