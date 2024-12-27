# Terraform - infraestructura como código
Curso de Terraform

## Configuración
Validar que la configuración local está lista:
```
aws sts get-caller-identity
```
Archivo donde se encuentran las credenciales:
```
cat ~/.aws/credentials
```

## Para descargar los archivos necesarios de terraform
```
terraform init
```

## Para validar la sintaxis del código
```
terraform validate
```

## Para ver los cambios que se aplicarán
```
terraform plan
```

## Para aplicar los cambios
```
terraform apply
```

## Para eliminar recursos creados
```
terraform destroy
```
