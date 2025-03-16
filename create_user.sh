# Create directories
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Set permissions for directories
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# Change group ownership of directories
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# Create users and assign them to groups
useradd carlos -c "Carlos" -m -g GRP_ADM -d /adm/carlos -s /bin/bash
useradd maria -c "Maria" -m -g GRP_ADM -d /adm/maria -s /bin/bash
useradd joao -c "Joao" -m -g GRP_ADM -d /adm/joao -s /bin/bash

useradd debora -c "Debora" -m -g GRP_VEN -d /ven/debora -s /bin/bash
useradd sebastiana -c "Sebastiana" -m -g GRP_VEN -d /ven/sebastiana -s /bin/bash
useradd marcos -c "Marcos" -m -g GRP_VEN -d /ven/marcos -s /bin/bash

useradd jose -c "Jose" -m -g GRP_SEC -d /sec/jose -s /bin/bash
useradd ana -c "Ana" -m -g GRP_SEC -d /sec/ana -s /bin/bash
useradd pedro -c "Pedro" -m -g GRP_SEC -d /sec/pedro -s /bin/bash