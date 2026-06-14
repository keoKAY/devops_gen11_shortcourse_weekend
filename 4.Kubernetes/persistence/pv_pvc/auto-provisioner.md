### NOTE 
- to avoid having create pv, pvc , ... 

```bash
helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/

helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=10.148.0.4 \
    --set nfs.path=/srv/nfs_shared

```
