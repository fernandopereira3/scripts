#!/bin/bash
##################################################
#     CRIADO POR: FERNANDO AUGUSTO PEREIRA       #
#       SCRIPT PARA SERVIDOR DE BACKUP           #
#      DATA DA ULTIMA ATUALIZACAO: 01/02/2022    # 
##################################################

#Mountar diretorios NFT em logs e smb_backup
mount -t nfs 10.14.180.4:/home/smb /home/source
# /home/bkp/smb
# rsync -#ardzu
htpdate -s -l 201.49.148.135
hwclock --systohc
#Criar e iniciar a data do log
echo "  " > /home/source/sistema/logs/SMB_Backup.log
echo -e "Backup iniciado em" $(date) "\n" >> /home/source/sistema/logs/SMB_Backup.log

################ ARQUIVOS DOS SISTEMA ###################
rsync -ardzu /scripts /home/bkp/smb/sistema
rsync -ardzu /etc/crontab /home/bkp/smb/sistema/crontab5
rsync -ardzu /etc/samba/smb.conf /home/bkp/smb/sistema/smb5.conf

################################## BACKUP ##########################################################################################################
### ADMINISTRATIVO
rsync -ardzu /home/source/administrativo /home/bkp/smb/ && echo "Backup do ADMINISTRATIVO realizado com sucesso" >> /home/source/sistema/logs/SMB_Backup.log
### CIMIC
rsync -ardzu /home/source/cimic /home/bkp/smb/ && echo "Backup de CIMIC realizado com sucesso" >> /home/source/sistema/logs/SMB_Backup.log
### COMUNICADOS
rsync -ardzu /home/source/comunicados /home/bkp/smb/ && echo "Backup de COMUNICADOS realizado com sucesso" >> /home/source/sistema/logs/SMB_Backup.log
### CPD
rsync -ardzu /home/source/cpd /home/bkp/smb/ && echo "Backup de CPD realizado com sucesso" >> /home/source/sistema/logs/SMB_Backup.log
### EAT
rsync -ardzu /home/source/eat /home/bkp/smb/ && echo "Backup de EAT realizado com sucesso" >> /home/source/sistema/logs/SMB_Backup.log
### NOTES
rsync -ardzu /home/source/notes /home/bkp/smb/ && echo "Backup de NOTES realizado com sucesso" >> /home/source/sistema/logs/SMB_Backup.log
### PRODUCAO
rsync -ardzu /home/source/producao /home/bkp/smb/ && echo "Backup de PRODUCAO concluido com sucesso" >> /home/source/sistema/logs/SMB_Backup.log
### REINTEGRACAO
rsync -ardzu /home/source/reintegracao /home/bkp/smb/ && echo "Backup de REINTEGRACAO concluido com sucesso" >> /home/source/sistema/logs/SMB_Backup.log
### SEGURANCA
rsync -ardzu /home/source/seguranca /home/bkp/smb/ && echo -e "Backup de SEGURANCA concluido com sucesso" "\n" >> /home/source/sistema/logs/SMB_Backup.log

####################################### LIMPEZA #################################################################################
#echo -e "Vou mudar as permisses do BACKUP, tenha calma, isso pode e vai demorar" && chmod -R 777 /home/bkp/smb/
find /home/bkp -name "~*.*" -delete && find /home/source -name "~*.*" -delete
find /home/bkp -name "*.db" -delete && find /home/source -name "*.db" -delete
find /home/bkp -name "~*.*" -delete && find /home/source -name "~*.*" -delete
find /home/bkp -name "*.db" -delete && find /home/source -name "*.db" -delete
find /home/bkp -name "*.tmp" -delete && find /home/source -name "*.tmp" -delete
find /home/bkp -name "*.ini" -delete && find /home/source -name "*.ini" -delete
find /home/source -name ".*" -exec rm -f '{}' \;
find /home/source -name ".*" -exec rm -fd '{}' \;
chmod -R 777 /home/source/

#################################################################################################################################

echo -e "Backup finalizado em" $(date) "\n" >> /home/source/sistema/logs/SMB_Backup.log 
#cat /home/source/sistema/logs/SMB_Backup.log | mutt -s "LOG DO BACKUP DE $data" -- fernandopereira-3@hotmail.com
umount -l 10.14.180.4:/home/smb
