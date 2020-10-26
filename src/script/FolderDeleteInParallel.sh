
 folderName=(epsiloncommonlibrary epsiloncommonenum epsiloncommonrules epsilonplaninstructionlibrary epsilonrules epsilonaccountingcomponent epsiloncommunicationcomponent epsiloninsuranceeventcomponent epsilonplancomponent epsilonpaymentarrangementcomponent epsilonsecuritycomponent epsilonutilitycomponent epsiloncommunicationmanagementcomponent epsilonplanmanagementcomponent epsilonbatch epsilonbatchbootstrap epsilonbatchbuildtemplate epsilonbatchcore epsilonbatchinifiles epsilonbatchscripts autobuildonline autobuildbatch ui toolsanddependencies synchronizationscript groovy-scripts epsilonpartycomponent epsiloninterfacetest compositeframeworkv1.0 composite-framework-api composite-framework-scheduler epsilon-qrt-helper epsilon-ejb-invoker epsilon-quick-regression-tool epsilon-cucumber-test epsilonproductvaluetest epsilon-excel-based-product-value-test epsilon-db-migrate epsilon-full-build epsilon-full-build-dar reports)
 echo -e "\e[97m##################################################################\e[0m"
 echo -e "\e[93m\t\t\t Deleting Rebased projects Task \e[0m"
 echo -e "\e[97m##################################################################\e[0m \n\n"
 declare -a pids
 for i in "${folderName[@]}"
 do
	# cd $i
	# echo -e "\n\e[92m"Checking Foldder: $i "\e[0m\n"
     rm -rf $i &
	   pids+=($!);
     echo -e "\e[92m Deleted " $i "\e[0m\n"
  
 done	
# wait for all pids
#echo -e ${pids[*]}
for pid in ${pids[@]}; do
	echo -e "Waiting for process to complete: " $pid
    wait $pid
done


read -p "Press Enter key to exit" enter
