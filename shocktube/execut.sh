#./clean.sh
   currentdir=`pwd`
   echo $currentdir
  
   cd /media/senol/579d6adf-2f6f-4ca2-84d1-4a70c713f36b/simulations/backup_barot_singlephase/src
  
   make
  
   retVal=$?
 cd $currentdir

 if [ $retVal -ne 0 ]; then
     echo "Error"
     exit $retVal
 fi

/home/senol/local/petsc-3.17.4/install/bin/mpirun -np 36  /media/senol/579d6adf-2f6f-4ca2-84d1-4a70c713f36b/simulations/backup_barot_singlephase/bld/ForestHLLC_V1.0 sh 
# /home/senol/local/petsc-3.17.4/install/bin/mpirun -np 4 valgrind --leak-check=yes /media/senol/579d6adf-2f6f-4ca2-84d1-4a70c713f36b/simulations/backup_barot_singlephase/bld/ForestHLLC_V1.0 sh 
