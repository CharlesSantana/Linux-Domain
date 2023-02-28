#!/bin/bash
clear
echo
echo
echo
#verifica o nome do usuario atual
usuario=`users`

echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo 
echo “O Nome do usuario ROOT é: $usuario”  
echo  
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo
#pergunta
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo
echo DESEJA INSERIR UM USUARIO DE DOMINIO NESTE COMPUTADOR?
echo
echo Selecione uma opção:
echo S - SIM  - Acrescentar usuario de Dominio e  REINICIAR
echo N - NAO  - Nao Alterar USUARIO e Sair
echo X - SAIR - Para reiniciar e salvar nome alterado  
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo             
read opcao;
                                                                       
#mudar o nome do computador
if [ $opcao == "S" ];
then
echo DIGITE O NOME DO USUARIO DE DOMINIO PARA ESTE COMPUTADOR?
echo
read novousuario;
sudo adduser $novousuario root
clear
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
echo 
echo “O NOVO USARIO DE DOMINIO $novousuario@liliani.br”  
echo  
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII

sleep 4
clear

nome=`hostname`


echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII      
echo "INFORMACOES SOBRE O COMPUTADOR"
echo
echo “O NOVO USARIO DE DOMINIO $novousuario@liliani.br” 
echo IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII 
hostnamectl 
echo
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
#reboot
#nao mudar o nome do computador
elif [ $opcao == "N" ];
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

elif [ $opcao == "X" ];
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
