#!/bin/bash
##################################################
#     CRIADO POR: FERNANDO AUGUSTO PEREIRA       #
#       SCRIPT PARA SERVIDOR DE BACKUP           #
#      DATA DA ULTIMA ATUALIZACAO: 22/02/2022    #
##################################################

# MONTAR ARQUIVOS
mount -t nfs 10.14.180.4:/home/bibliotecas /home/b_source

#Criar e iniciar a data do log
echo " " > /home/source/sistema/logs/BIBLI_Backup.log
echo -e "Backup iniciado em" $(date) "\n" >> /home/source/sistema/logs/BIBLI_Backup.log

rsync -ardzu /home/b_source/cimic /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DO CIMIC realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

rsync -ardzu /home/b_source/adm /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DO ADMINISTRATIVO realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

rsync -ardzu /b_source/aevp /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DO AEVP realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

rsync -ardzu /home/b_source/audiencia /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA AUDIENCIA realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

rsync -ardzu /home/b_source/chefia /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA CHEFIA realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

#cp -fRv /home/b_source/cpd /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DO CPD realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/cras /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DO CRAS realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/financas /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA FINANCAS realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/inclusao /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA INCLUSAO realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/infra /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA INFRA realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/judiciaria /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA JUDICIARIA realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/peculio /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DO PECULIO realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/pessoal /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DO PESSOAL realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/portaria /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA PORTARIA realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/producao /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA PRODUCAO realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/rol /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DO ROL realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log 

cp -fRv /home/b_source/saude /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA SAUDE realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/seguranca /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA SEGURANCA realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

cp -fRv /home/b_source/supervisao /home/bkp/biblioteca/ && echo "Backup da BIBLIOTECA DA SUPERVISAO realizado com sucesso" >> /home/source/sistema/logs/BIBLI_Backup.log

find /home/b_source -name "~*.*" -delete
find /home/b_source -name "*.db" -delete
find /home/b_source -name "~*.*" -delete
find /home/b_source -name "*.db" -delete
find /home/b_source -name "*.tmp" -delete
find /home/b_source -name "*.ini" -delete

echo -e "Backup finalizado em" $(date) "\n" >> /home/source/sistema/logs/BIBLI_Backup.log
# DESMONTAR
umount 10.14.180.4:/home/bibliotecas
