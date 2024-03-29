```

Service accounts in GCP
# A service account is a special kind of account used by an application and other gcp resouce to communication like and  rather than a person. Applications use service accounts to make authorized API calls, authorized as either the service account itself. They are the most common way 
applications authenticate with Google Cloud Storage. Every project has service accounts associated with it,
which may be used for different authentication scenarios, as well as to enable advanced features such as Signed URLs and browser uploads using POST.

# bukets: Google storage is a file storage service available from Google Cloud. Quite similar to Amazon S3 it offers interesting functionalities such as signed-urls, bucket synchronization, 
collaboration bucket settings, parallel uploads and is S3 compatible.

#start using gsutil, you first need to authenticate it with your Google Cloud Platform account. Issue the command gcloud auth login

#flag -m, to perform a parallel (multi-threaded/multi-processing) copy include local subfolders in your upload, -r 

# https://jayendrapatil.com/google-cloud-gcloud-cheat-sheet/

=============================Google Cloud GCloud Cheat Sheet==========================================
=======================Google Cloud Config==============================


         PURPOSE                             	             COMMAND
Check gsutil version                                ## gsutil -v        
Initialize, authorize, and configure gcloud        ## gcloud init 
Display version and installed components           ## gcloud version
Display current gcloud environment details         ## gcloud info
Fetch value of a gcloud CLI property               ## gcloud config get value 
set current account as active                      ## gcloud auth activate-service-account
List all credentialed accounts                     ## gcloud auth list
Display the current account’s access token         ## gcloud auth print-access-token
Remove access credentials for an account           ## gcloud auth revoke
Display metadata for a project (including its ID)  ## gcloud projects describe
Add an IAM policy binding to a project             ## gcloud projects add-iam-policy-binding
List projects	gcloud config list                   ## gcloud config list project
List projects	gcloud config list                   ## gcloud config list project
Show project info	gcloud compute                   ## project-info describe
Switch project	gcloud                              ## config set project <project-id>
Set the active account	                            ## gcloud config set account <ACCOUNT>
Set default region	                                ## gcloud config set compute/region us-west
Set default zone	                                  ## gcloud config set compute/zone us-west1-b
Create a new named configuration                   ## gcloud config configurations create
List configurations	                               ## gcloud config configurations list
Activate configuration	                            ## gcloud config configurations activate
Show project info                                  ## gcloud compute project-info describe
Switch project                                     ## gcloud config set project <project-id>
===================Google Cloud IAM====================================
    PURPOSE	                                COMMAND
get project roles	                  ## gcloud projects get-iam-policy
copy roles across org and projects  ## gcloud iam roles copy
get project roles	                  ## gcloud projects get-iam-policy
copy roles across org and projects 	## gcloud iam roles copy

================================Google Cloud Auth===================
PURPOSE                                         	COMMAND
Display a list of credentialed accounts	      ## gcloud auth list
Authenticate client using service account	    ## gcloud auth activate-service-account --key-file <key-file>
Auth to GCP Container Registry	               ## gcloud auth configure-docker
Print token for active account	               ## gcloud auth print-access-token, gcloud auth print-refresh-token
Revoke previous generated credential	         ## gcloud auth <application-default> revoke

===================================Google Cloud Storage==================================
PURPOSE	                                       COMMAND
List all buckets and files	               ## gsutil ls, gsutil ls -lh gs://<bucket-name>
Create bucket	                            ## gsutil mb gs://<bucket-name>
Download file                             ## 	gsutil cp gs://<bucket-name>/<dir-path>/app.txt
Upload file                               ## 	gsutil cp <filename> gs://<bucket-name>/<directory>/
Delete file	                              ## gsutil rm gs://<bucket-name>/<filepath>
Move file                                 ## 	gsutil mv <src-filepath> gs://<bucket-name>/<directory>/<dest-filepath>
Copy folder	                              ## gsutil cp -r ./conf gs://<bucket-name>/
Show disk usage	                          ## gsutil du -h gs://<bucket-name/<directory>
Make all files readable	                  ## gsutil -m acl set -R -a public-read gs://<bucket-name>/
Create signed url with duration	          ## gsutil signurl -d 1m

========================================Google Cloud Compute Engine================================
PURPOSE	                                                    COMMAND
List all instances	                          ## gcloud compute instances list , gcloud compute instance-templates list
Show instance info	                          ## gcloud compute instances describe "<instance-name>" --project "<project-name>" --zone "us-west2-a"
Stop an instance	                            ## gcloud compute instances stop instance-name
Start an instance	                           ## gcloud compute instances start instance-name
Create an instance	                          ## gcloud compute instances create vm1 --image image-1 --tags test --zone "<zone>" --machine-type f1-micro
Create premptible instance	                  ## gcloud compute instances create "preempt" --preemptible
SSH to instance	                             ## gcloud compute ssh --project "<project-name>" --zone "<zone-name>" "<instance-name>"
Images list	                                 ## gcloud compute images list

================================Virtual Private Network ================================================
PURPOSE	                                           COMMAND
List all networks	                                 ## gcloud compute networks list
Detail of one network	                             ## gcloud compute networks describe <network-name> --format json
Create network	                                    ## gcloud compute networks create <network-name>
Create subnet	                                     ## gcloud compute networks subnets create subnet1 --network subnet-1 --range 10.0.0.0/24
List all firewall rules	                           ## gcloud compute firewall-rules list
List all forwarding rules	                         ## gcloud compute forwarding-rules list
Describe one firewall rule	                        ## gcloud compute firewall-rules describe <rule-name>
Create firewall rule	                              ## gcloud compute firewall-rules create my-rule --network default --allow tcp:22
Update firewall rule	                              ## gcloud compute firewall-rules update default --network default --allow tcp:80

============================================Components======================================================================
PURPOSE                                    	COMMAND
List down the components	               ## gcloud components list
Update the components	                  ## gcloud components update
Install the components	                 ## gcloud components install <component-name>

=======================================Deployment Manager =============================
PURPOSE                     	COMMAND
Create deployments	        ## gcloud deployment-manager deployments create
Update deployments	        ## gcloud deployment-manager deployments update

-------------------------------------------------------------------------------------------------------------------------------------------

https://support.google.com/elastifile-support/answer/9899169?hl=en

#############################################################

https://medium.com/@raigonjolly/cheat-sheets-gcloud-bq-gsutil-kubectl-for-google-cloud-associate-certificate-4093b8977a01

  ##gcloud compute instance-groups list-instances 
  ## gcloud compute instance-groups list
  ## gcloud compute instance-groups managed instance-configs list
  
  ## gcloud compute target-instances list
  ## gcloud compute regions list
  ## gcloud compute instances os-inventory list-instances
  ## gcloud compute instance-groups managed list-instances
  ## gcloud compute instance-groups unmanaged list-instances

Set lifecycle in buket          ## gsutil lifecycle set <config_file.json> gs://<bucket_name> is met.
Make all files readable         ## gsutil -m acl set -R -a public-read gs://<bucket-name>/
Config auth gsutil config -a
Grant bucket access             ## gsutil iam ch user:denny@gmail.com:objectCreator,objectViewer gs://<bucket-name>
Remove bucket access            ## gsutil iam ch -d user:denny@gmail.com:objectCreator,objectViewer gs://<bucket-name>
gsutil mb gs://mybuketname  # create buket
gsutil cp * gs://mybuketname   # copy all file from current directory to buket
# gsutil ls gs://mybuketname  # list buket conatin 
# gsutil rm * gs://mybuketname/*  # remove the objects from the storage bucket
# gsutil rb gs://mybuketname/  #deleting the Cloud Storage bucket

# gsutil cp  gs://<bucket_A>/<remote_file> gs://<bucket_B>/ # transfer a file between buckets 

# sutil cp <new_folder> gs://<bucketname>/  #Create a folder in a bucket with cp

# gsutil du -h gs://<bucketname>/   # Check storage space with du

# gsutil -m rsync -r -d ./myfolder gs://<bucketname> #synchronizes the content of the local folder with the storage bucket
# gsutil ls -L -b gs://bucket #listing-bucket-details
# gsutil versioning set on gs://<bucketname>
# gsutil versioning set off gs://<bucketname>

##############Lifecycle#############################
Lifecycle configurations allows you to automatically delete or change the storage class of objects when some criterion
To enable lifecycle for a bucket with settings defined in the config_file.json file, run:


################################ Network##################################
List all networks gcloud compute networks list
Detail of one network gcloud compute networks describe <network-name> --format json
Create network gcloud compute networks create <network-name>
Create subnet gcloud compute networks subnets create subnet1 --network net1 --range 10.5.4.0/24
Get a static ip gcloud compute addresses create --region us-west2-a vpn-1-static-ip
List all ip addresses gcloud compute addresses list
Describe ip address gcloud compute addresses describe <ip-name> --region us-central1
List all routes gcloud compute routes list


###############################DNS##############################################

List of all record-sets in myzone    ## gcloud dns record-sets list --zone my_zone
List first 10 DNS records            ## gcloud dns record-sets list --zone my_zone --limit=10

################Images & Containers##############################

List all container clusters      ## gcloud container clusters list
Set kubectl context              ## gcloud container clusters get-credentials <cluster-name>
###########################RDS#########################################
List all sql instances          ## gcloud sql instances list

######################### Services####################################
List my backend services                  ## gcloud compute backend-services list
List all my health check endpoints        ## gcloud compute http-health-checks list
List all URL maps                         ## gcloud compute url-maps list

################## Disks & Volumes######################################
List all disks                       # gcloud compute disks list
List all disk types                  # gcloud compute disk-types list
List all snapshots                   # gcloud compute snapshots list
Create snapshot                      # gcloud compute disks snapshot <diskname> --snapshotname <name1> --zone $zone

########################GKE##############################################
Display a list of credentialed accounts            ## gcloud auth list
Set the active account                             ## gcloud config set account <ACCOUNT>
Set kubectl context                                ## gcloud container clusters get-credentials <cluster-name>
Change region                                      ## gcloud config set compute/region us-west
Change zone                                        ## gcloud config set compute/zone us-west1-b
List all container clusters                        ## gcloud container clusters list
List all zones                                     ## gcloud compute zones list


####################################### VM  ###########################

gcloud compute instances describe # Display a virtual machine (VM) instance’s details

# stop compute instance The --async parameterdisplays information about the start operation. ## gcloud compute instances stop INSTANCE-NAME --async 

List all VM instances in a project               ## gcloud compute instances list 

#Create snapshot of persistent disks             ## gcloud compute disks snapshot 

Display a specified snapshot’s details          ## gcloud compute snapshots describe 

Delete a snapshot                               ## gcloud compute snapshots delete 

Connect to a VM instance by using SSH           ## gcloud compute ssh mv-server 


Show instance info                              ## gcloud compute instances describe "<instance-name>" --project "<project-name>" --zone "us-Stop an instance gcloud compute instances stop instance-2

Start an instance                               ## gcloud compute instances start instance-2

Create an instance                              ## gcloud compute instances create vm1 --image image-1 --tags test --zone "<zone>" --machine-SSH to instance gcloud compute ssh --project "<project-name>" --zone "<zone-name>" "<instance-name>"

Download files                                  ## gcloud compute copy-files example-instance:~/REMOTE-DIR ~/LOCAL-DIR --zone us-central1-a

Upload files                                     ## gcloud compute copy-files ~/LOCAL-FILE-1 example-instance:~/REMOTE-DIR --zone us-centra
You can create a snapshot of a disk using the following command  ## gcloud compute disks snapshot DISK_NAME --snapshot-names=NAME 
view a list snapshots, use the following                         ## gcloud compute snapshots list
detailed information about a snapshot, use the following         ## gcloud compute snapshots describe SNAPSHOT_NAME
To create a disk, use this:                                      ## gcloud compute disks create DISK_NAME --source-snapshot=SNAPSHOT_NAME
You can also specify the size of the disk and disk type using the --size and --parameters.Here’s an example ## gcloud compute disks create ch06-disk-1 --source-snapshot=ch06-snapshot --size=100 --type=pd-standard
Default configurations activate                                    ## gcloud config configurations activate default

=================================================================================================================================

gcloud compute networks subnets create subnet1 --network subnet-1 --range 10.0.0.0/24

gcloud compute firewall-rules create myfistvpc-allow-https --network myfistvpc  --priority 1000 --target-tags https-server --allow tcp:443 --source-ranges 0.0.0.0/0 --no-disabled   # create firewall rule

gcloud compute networks subnets create us-central1 --network myfistvpc --region us-central1 --range 10.200.0.0/20

gcloud compute networks subnets create mysubnet--1 --network myfistvpc --region us-central1 --range 10.200.0.0/20

gcloud compute networks subnets delete  mysubnet--1 --region us-central1

gcloud compute networks subnets list-usable --project qwiklabs-gcp-01-e8ca5a620799

gcloud config set compute/zone us-central1
gcloud config unset compute/region us-central1

Login to service account for service project

create machine #gcloud compute instances create –machine-type=n1-standard-4 whiz-server-1

gcloud auth login admiral@qwiklabs-services-prod.iam.gserviceaccount.com   ask autorization toaken code 

















======================================================================================================================

================================Google Kubernetes Engine ==============================================
https://www.bluematador.com/learn/kubectl-cheatsheet
PURPOSE	                                           COMMAND
create cluster	                           ## gcloud container clusters create cluster-name --num-nodes 1
List all container clusters                ## gcloud container clusters list
Set kubectl context                        ## gcloud container clusters get-credentials <cluster-name>
Set default cluster	                       ## gcloud config set container/cluster cluster-name
resize existing cluster	                   ## gcloud container clusters resize --num-nodes

-----------------------------------------------------------------------------

Kubectl is the command line configuration tool for Kubernetes that communicates with a Kubernetes API server. Using Kubectl allows you to create, inspect, update, 
and delete Kubernetes objects. This cheatsheet will serve as a quick reference to make commands on many common Kubernetes components and resources. You can use the
full command for an object on things like pod(s) or the shortcode variation mentioned in parantheses in the heading of each section. They will all generate the same 
outcome. You'll also want to be sure to follow up most of the commands with the specific <name> of the resource you are managing.

==================================Cluster Management===================================================
Display endpoint information about the master and services in the cluster

==============================kubectl cluster-info===============================================
 
Display the Kubernetes version running on the client and server
kubectl version
 
Get the configuration of the cluster
kubectl config view
 
List the API resources that are available
kubectl api-resources
 
List the API versions that are available
kubectl api-versions
 
List everything
kubectl get all --all-namespaces

========================================Daemonsets===========================================
--------------------------------Shortcode = ds------------------------------------------------

List one or more daemonsets
kubectl get daemonset
 
Edit and update the definition of one or more daemonset
kubectl edit daemonset <daemonset_name>
 
Delete a daemonset
kubectl delete daemonset <daemonset_name>
 
Create a new daemonset
kubectl create daemonset <daemonset_name>
 
Manage the rollout of a daemonset
kubectl rollout daemonset
 
Display the detailed state of daemonsets within a namespace
kubectl describe ds <daemonset_name> -n <namespace_name>
 
============================================================Deployments===========================================
------------------------------------------Shortcode = deploy---------------------------------------------------------

List one or more deployments
kubectl get deployment
 
Display the detailed state of one or more deployments
kubectl describe deployment <deployment_name>
 
Edit and update the definition of one or more deployment on the server
kubectl edit deployment <deployment_name>
 
Create one a new deployment
kubectl create deployment <deployment_name>
 
Delete deployments
kubectl delete deployment <deployment_name>
 
See the rollout status of a deployment
kubectl rollout status deployment <deployment_name>
 
======================================Events==================================================
---------------------------------------Shortcode = ev----------------------------------------

List recent events for all resources in the system
kubectl get events
 
List Warnings only
kubectl get events --field-selector type=Warning
 
List events but exclude Pod events
kubectl get events --field-selector involvedObject.kind!=Pod
 
Pull events for a single node with a specific name
kubectl get events --field-selector involvedObject.kind=Node, involvedObject.name=<node_name>
 
Filter out normal events from a list of events
kubectl get events --field-selector type!=Normal
 
============================================Logs=============================================
Print the logs for a pod
kubectl logs <pod_name>
 
Print the logs for the last hour for a pod
kubectl logs --since=1h <pod_name>
 
Get the most recent 20 lines of logs
kubectl logs --tail=20 <pod_name>
 
Get logs from a service and optionally select which container
kubectl logs -f <service_name> [-c <$container>]
 
Print the logs for a pod and follow new logs
kubectl logs -f <pod_name>
 
Print the logs for a container in a pod
kubectl logs -c <container_name> <pod_name>
 
Output the logs for a pod into a file named ‘pod.log’
kubectl logs <pod_name> pod.log
 
View the logs for a previously failed pod
kubectl logs --previous <pod_name>
 
Get logs for all pods named with pod_prefix
kubetail <pod_prefix>
 
Include the most recent 5 minutes of logs
kubetail <pod_prefix> -s 5m
 
============================================Manifest Files ===========================================================================
Another option for modifying objects is through Manifest Files. We highly recommend using this method. It is done by using yaml files with all the necessary options
for objects configured. We have our yaml files stored in a git repository, so we can track changes and streamline changes.Apply a configuration to an object by filename or stdin. Overrides the existing configuration.

kubectl apply -f manifest_file.yaml

--------------------------------Create objects---------------------------------------------------

kubectl create -f manifest_file.yaml
 
Create objects in all manifest files in a directory
kubectl create -f ./dir
 
Create objects from a URL
kubectl create -f ‘url’
 

Delete an object
kubectl delete -f manifest_file.yaml
 

======================================================Namespaces=====================================================
------------------------------------------------Shortcode = ns-----------------------------------------------------

Create namespace <name>
kubectl create namespace <namespace_name>
 
List one or more namespaces
kubectl get namespace <namespace_name>
 
Display the detailed state of one or more namespace
kubectl describe namespace <namespace_name>
 
Delete a namespace
kubectl delete namespace <namespace_name>
 
Edit and update the definition of a namespace
kubectl edit namespace <namespace_name>
 
Display Resource (CPU/Memory/Storage) usage for a namespace
kubectl top namespace <namespace_name>
 
===========================================Nodes===============================================================
-------------------------------------------Shortcode = no----------------------------------------------------

Update the taints on one or more nodes
kubectl taint node <node_name>
 
List one or more nodes
kubectl get node
 
Delete a node or multiple nodes
kubectl delete node <node_name>
 
Display Resource usage (CPU/Memory/Storage) for nodes
kubectl top node
 
Resource allocation per node
kubectl describe nodes | grep Allocated -A 5

Pods running on a node
kubectl get pods -o wide | grep <node_name>
 
Annotate a node
kubectl annotate node <node_name>
 
Mark a node as unschedulable
kubectl cordon node <node_name>
 
Mark node as schedulable
kubectl uncordon node <node_name>
 
Drain a node in preparation for maintenance
kubectl drain node <node_name>
 
Add or update the labels of one or more nodes
kubectl label node
 
==============================================================Pods=================================================================
-----------------------------------------------------Shortcode = po------------------------------------------------------
List one or more pods
kubectl get pod
 
Delete a pod
kubectl delete pod <pod_name>
 
Display the detailed state of a pods
kubectl describe pod <pod_name>
 
Create a pod
kubectl create pod <pod_name>
 
Execute a command against a container in a pod
kubectl exec <pod_name> -c <container_name> <command>
 
Get interactive shell on a a single-container pod
kubectl exec -it <pod_name> /bin/sh
 
Display Resource usage (CPU/Memory/Storage) for pods
kubectl top pod
 
Add or update the annotations of a pod
kubectl annotate pod <pod_name> <annotation>
 
Add or update the label of a pod
kubectl label pod <pod_name>
 
========================================================Replication Controllers===================================================================
---------------------------------------------------------Shortcode = rc------------------------------------------------------------------------------
List the replication controllers
kubectl get rc
 
List the replication controllers by namespace
kubectl get rc --namespace=”<namespace_name>”
 
===================================================ReplicaSets==================================================================
------------------------------------------------Shortcode = rs-------------------------------------------------

List ReplicaSets
kubectl get replicasets

Display the detailed state of one or more ReplicaSets
kubectl describe replicasets <replicaset_name>
 
Scale a ReplicaSet
kubectl scale --replicas=[x] 
 
Secrets
Create a secret

kubectl create secret
List secrets

kubectl get secrets
List details about secrets

kubectl describe secrets
Delete a secret

kubectl delete secret <secret_name>
 
====================================================Services=================================================================
----------------------------------------------Shortcode = svc---------------------------------------------------

List one or more services
kubectl get services
 
Display the detailed state of a service
kubectl describe services
 
Expose a replication controller, service, deployment or pod as a new Kubernetes service
kubectl expose deployment [deployment_name]
 
Edit and update the definition of one or more services
kubectl edit services
 
=======================================Service Accounts================================================================
Shortcode = sa
List service accounts
kubectl get serviceaccounts
 
Display the detailed state of one or more service accounts
kubectl describe serviceaccounts
 
Replace a service account
kubectl replace serviceaccount
 
Delete a service account
kubectl delete serviceaccount <service_account_name>
 
=====================================StatefulSet============================================================================
-----------------------------------------------------------Shortcode = sts------------------------------------------------
List StatefulSet
kubectl get statefulset
 
Delete StatefulSet only (not pods)
kubectl delete statefulset/[stateful_set_name] --cascade=false

===================================Common Options
In Kubectl you can specify optional flags with commands. Here are some of the most common and useful ones.
-o Output format. For example if you wanted to list all of the pods in ps output format with more information.

kubectl get pods -o wide 
 -n Shorthand for --namespace. For example, if you’d like to list all the Pods in a specific Namespace you would do this command:
kubectl get pods --namespace=[namespace_name]
 
kubectl get pods -n=[namespace_name]
 -f Filename, directory, or URL to files to use to create a resource. For example when creating a pod using data in a file named newpod.json.

kubectl create -f ./newpod.json
 
-l Selector to filter on, supports ‘=’, ‘==’, and ‘!=’.



```
