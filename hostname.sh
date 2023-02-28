#!/bin/bash
clear
echo
echo
echo
#verifica o nome do computador
nome=`hostname`

echo “O nome atual do computador é: $nome”
echo 
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo 
echo FECHE E SALVE TODOS OS SEUS ARQUIVOS ANTES DE RENOMEAR  
echo  
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo
#pergunta se gostaria de mudar o nome do computador
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo GOSTARIA DE MUDAR O NOME DO COMPUTADOR?
echo Selecione uma opção:
echo S - SIM  - Mudar o nome do computador e REINICIAR
echo N - NAO  - Nao Alterar e Sair
echo X - SAIR - Para reiniciar e salvar nome alterado  
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo             
read opcao;
                                                                       
#mudar o nome do computador
if [ $opcao == "S" ];
then
echo DIGITE O NOVO NOME DO COMPUTADOR?
echo
read newname;
echo -e "127.0.0.1 localhost\n127.0.1.1 $newname">/etc/hosts
echo $newname>/etc/hostname
nome=`hostname`
clear

echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII      
echo "INFORMACOES SOBRE O COMPUTADOR"
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII 
hostnamectl 

echo
echo
echo
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII      
echo
echo “Você alterou o nome deste Computador”             
echo
echo “Voce Precisa Reiniciar para surtir efeito”
echo O COMPUTADOR IRA REINICIAR EM 5 SEGUNDOS
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII 
sleep 3

for((i = 5; i >= 1; i--))
do

    echo "Continuando em $i..."
    sleep 1
done 
echo REINICIANDO O COMPUTADOR     
sleep 2
reboot
#nao mudar o nome do computador
elif [ $opcao == "N or n" ];
then

clear
nome=`hostname`
echo
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo
echo "Obrigado por deixar o nome do computador como $nome!"
echo
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII

#Sair e confirmar a mudanca

elif [ $opcao == "X or x" ];
then
echo
nome=`hostname`
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII 
echo “O nome atual do computador é: $nome” 
echo
echo "agora seu computador $nome será reiciciado !"
echo
echo “Reinicie para surtir efeito”
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
reboot
fi
