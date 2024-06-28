#!/bin/bash
# Entrega Ignacio Atrio - 337975



menuPrincipal(){
   echo " -MENU PRINCIPAL----------------------"   
   echo "| Saludar Al Mundo                [1]|" 
   echo "| Sumatoria de 1 hasta n          [2]|" 
   echo "| Lorem Ipsum                     [3]|"
   echo "| El proposito de la vida         [4]|"
   echo " ------------------------------------"
   echo
   echo "INGRESE NUMERO DE LA OPCION QUE QUIERA EJECUTAR:"
   read opcion
   case $opcion in                                
      1) clear
      echo "Hello World"
      read;;
      2) clear
      validSuma
      clear
      suma=$(((nuevo + 1)*nuevo / 2))
      echo "La sumatoria es $suma"
      read;;
      3) clear
      echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
      read
      clear;;
      4) clear
      echo 
      seguir=1   #Esto corta el while en el codigo principal por lo que se para de ejecutar el programa 
   esac
}



validSuma(){
   validSum=0
   nuevo=0
   while [[ $validSum = 0 ]] #while de validacion
   do
    echo "Porfavor ingrese un numero natural para calcular la sumatoria."
      read nuevo
      largo=${#nuevo}                        
         if [[ $largo -ne 0 ]]; then     #El if [[ $largo -ne 0 ]] se usa para no validar input vacio.
            if [[ $nuevo -gt 0 || $nuevo == "0" ]]; then       
                  validSum=1                                                  
            fi
         fi
   done
}

seguir=0
while [[ $seguir -lt 1 ]];do         
   clear
   menuPrincipal
done
exit