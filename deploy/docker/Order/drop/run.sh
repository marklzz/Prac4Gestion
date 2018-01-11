#!/bin/bash
#no lanzar el .jar hasta que no esté accesible el servicio de MongoDB
#el host ‘mongo’ tendrá una IP otorgada al lanzar la pila de
#servicios, y le damos el apodo ‘mongo’, utilizado aquí y en el
#archivo application.propertieswhile
! curl http://mongo:27017/
do
echo "$(date) - still trying"
sleep 1
done
echo "$(date) - it seems mongo server is connected successfully"
