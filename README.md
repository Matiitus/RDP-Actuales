# 💾 RDP actuales y económicos

**Soluciones de Backup modernas y accesibles **

Este proyecto proporciona **scripts reutilizables y adaptables** para implementar planes de respaldo a largo plazo utilizando **AWS Glacier** y **Azure Archive**, pensados para entornos virtualizados como **Proxmox, VMware y Hyper-V**.

> 📌 Ideal para empresas que no pueden invertir en cintas o robots, pero entienden la importancia de proteger su información crítica.

---

## 🧠 ¿Qué soluciona esto?

- Backups automáticos de file servers o carpetas críticas
- Almacenamiento seguro, inmutable y duradero (10+ años)
- Alternativa eficiente a soluciones tradicionales (LTO, robótica)
- DRP moderno a bajo costo

---

Estos scripts pueden utilizarse tanto para respaldar carpetas compartidas (file servers) como archivos de imágenes de máquinas virtuales (.vma, .vhdx, .vmdk, etc.). Basta con ajustar la ruta de origen (SOURCE) a la carpeta correspondiente.

---

## ⚙️ ¿Qué incluye?

| Script                          | Entorno              | Plataforma destino |
|-------------------------------|----------------------|--------------------|
| `backup_proxmox_glacier.sh`   | Proxmox / Linux      | AWS Glacier        |
| `backup_vmware_glacier.sh`    | VMware / Linux       | AWS Glacier        |
| `backup_hyperv_azure.ps1`     | Windows / Hyper-V    | Azure Archive      |

Todos los scripts están **comentados** y listos para personalizar:
- Cambiá la ruta de origen (`SOURCE`)
- Configurá tus credenciales y destino (`BUCKET` / `CONTAINER`)
- Automatizá con cron o tareas programadas

---

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

Esto es de uso libre para la comunidad. ¡Ayudemos a proteger los datos críticos de las PYMES argentinas!  
Se agradece mención si lo reutilizás o expandís.

---

