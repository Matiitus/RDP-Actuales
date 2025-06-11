# 💾 RDP actuales y económicos

**Soluciones de Backup modernas y accesibles**

Este proyecto proporciona **scripts reutilizables y adaptables** para implementar planes de respaldo a largo plazo utilizando **AWS Glacier** y **Azure Archive**, pensados especialmente para entornos virtualizados como **Proxmox, VMware y Hyper-V**.

> 📌 Ideal para empresas que no pueden invertir en cintas o robots, pero entienden la importancia de proteger su información crítica.

---

## 🧠 ¿Qué soluciona esto?

- Backups automáticos de file servers o carpetas críticas.
- Almacenamiento seguro, inmutable y duradero (10+ años).
- Alternativa eficiente y económica frente a soluciones tradicionales (LTO, robótica).
- Implementación sencilla de un plan DRP moderno.

---

Estos scripts pueden utilizarse tanto para respaldar carpetas compartidas (file servers) como archivos de imágenes de máquinas virtuales (`.vma`, `.vhdx`, `.vmdk`, etc.). Solo tenés que ajustar la ruta de origen (`SOURCE`) a la carpeta correspondiente.

---

## ⚙️ ¿Qué incluye?

| Script                        | Entorno           | Plataforma destino |
|-------------------------------|-------------------|--------------------|
| `backup_proxmox_glacier.sh`   | Proxmox / Linux   | AWS Glacier        |
| `backup_vmware_glacier.sh`    | VMware / Linux    | AWS Glacier        |
| `backup_hyperv_azure.ps1`     | Windows / Hyper-V | Azure Archive      |

Todos los scripts están **comentados** y listos para personalizar:

- Cambiá la ruta de origen (`SOURCE`).
- Configurá tus credenciales y destino (`AWS_BUCKET` / `AZURE_CONTAINER`).
- Automatizá con cron (Linux) o tareas programadas (Windows).

---

## 🔑 Autenticación y seguridad (Importante)

**👉 AWS Glacier (S3):**

Antes de ejecutar el script por primera vez, configurá AWS CLI con tus credenciales mediante el siguiente comando en tu consola:

```bash
aws configure
# AWS Access Key ID [None]: TU_ACCESS_KEY
# AWS Secret Access Key [None]: TU_SECRET_KEY
# Default region name [None]: us-east-1
# Default output format [None]: json
```
## 📥 Descarga rápida

También podés descargar todos los archivos desde el paquete ZIP original:  
🔗 https://github.com/Matiitus/RDP-Actuales

---

## 👤 Autor

📌 **Matías Sánchez**  
🛠️ Especialista en Infraestructura, Virtualización y Seguridad  
📫 https://www.linkedin.com/in/matisanchez1993/


---

## 🤝 Licencia y uso

Esto es de uso libre para la comunidad.  
Se agradece mención si lo reutilizás o expandís.

---

