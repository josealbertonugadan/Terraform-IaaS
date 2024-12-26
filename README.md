# Terraform - infraestructura como código
Curso de Terraform

## Configuración
Validar que la configuración local está lista:
```
aws sts get-caller-identity
```
Archivos donde se encuentran las credenciales:
```
cat ~/.aws/credentials
```

## Para aplicar cambios
```
terraform init
terraform plan
terraform apply
```

## Para eliminar recursos creados
```
terraform destroy
```
