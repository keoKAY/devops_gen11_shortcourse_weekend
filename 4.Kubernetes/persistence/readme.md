## NOTE for backing up data 

1. configmap
- used to store or provide confiugration normally as key-value for your deployment 

ex. Postgres service 
POSTGRES_USER,POSTGRES_PASSWORD,POSTGRES_DB


Review from ytd 
- Configmap -> store configuration (key-value pair )
            -> volumeMount -> configuration ( file )
- HostPath -> store data on the node 
- NFS -> nfs network file system , distributed 
    -> store file on nfs server instead of one single node 

-> PV / PVC 
    PV = Persistent Volume ( declare storage space that allow PVC to use )
    PVC = PV + Claim ( allocate from PV for storing data )