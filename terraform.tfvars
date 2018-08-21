ibm_sl_username="IBMxxxxxx"
ibm_sl_api_key="xxxxxxxx114ae0dd7de1122c68731437fe5a83ddf60d4d57ba2d8badxxxxxxxx"

datacenter = "dal13"                #use one of SoftLayer Datacenter code
ssh_key_name = "sl-sg13"            #name of ssh key to be created in SoftLayer
ssh_user = "root"                   #OS username
icpadmin_password = "admin"         #ICP admin password
icp_version = "2.1.0.3-ee"          #ICP Version
domain = "icp.demo"                 #OS Domain
os_reference = "UBUNTU_16_64"       #OS Reference Code from SoftLayer: UBUNTU_16_64 or REDHAT_7_64
instance_prefix = "atest02"         #Instance Prefix
network_cidr = "172.16.0.0/16"      #ICP Network CIDR
cluster_ip_range = "192.168.0.1/24" #ICP Cluster IP Range
cluster_name = "sgdemo"             #ICP Cluster Name
install_gluster = true              #Install Gluster Flag
gluster_volume_type = "none"        #Gluster Volume Type. Sample: none, replicate:3, disperse:4:2
heketi_admin_pwd = "admin"          #Heketi API admin password
disable_management = ["istio", "custom-metrics-adapter"] #Default Disabled management component v2.1.0.3


master = {
    nodes       = "1"               #Number of Master Node. Minimum: 1, Maximum: 1 for ICP Community edition
    name        = "master"
    cpu_cores   = "4"
    disk_size   = "25"              #OS Disk size in GB. Recommended to keep default value 25 GB
    kubelet_lv  = "10"              #Size of Kubelet volume
    docker_lv   = "50"              #Size of Docker volume
    etcd_lv     = "4"               #Size of etcd volume
    registry_lv = "35"              #Size of registry volume
    management_lv = "200"           #Size of Management volume
    local_disk  = false
    memory      = "8192"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}
proxy = {
    nodes       = "0"               #Number of Proxy Node. Minimum: 0 Maximum: 1 for ICP Community edition
    name        = "proxy"
    cpu_cores   = "2"
    disk_size   = "25"
    kubelet_lv  = "10"
    docker_lv   = "64"
    local_disk  = false
    memory      = "4096"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}
management = {
    nodes       = "1"               #Number of Management Node. Minimum: 0 Maximum: 1 for ICP Community edition
    name        = "mgmt"
    cpu_cores   = "4"
    disk_size   = "25"
    kubelet_lv  = "10"
    docker_lv   = "50"
    management_lv = "339"            #Size of Management volume
    local_disk  = false
    memory      = "16384"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}
va = {
  nodes                = "1"        #Vulnerability Assessor Node (Enterprise Edition Only). Minimum 0, or 1/3/5
  name                 = "va"
  cpu_cores            = "8"
  disk_size            = "100"
  kubelet_lv           = "10"
  docker_lv            = "50"
  va_lv                = "339"
  local_disk           = false
  memory               = "16384"
  network_speed        = "1000"
  private_network_only = false
  hourly_billing       = true
}
worker = {
    nodes       = "2"               #Number of Worker Node. Minimum: 1 Recommended: 3
    name        = "worker"
    cpu_cores   = "8"
    disk_size   = "25"
    kubelet_lv  = "10"
    docker_lv   = "189"
    local_disk  = false
    memory      = "16384"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}
gluster = {
    nodes       = "3"               #Gluster Node. Minimum 0 or 3 or higher odd number
    name        = "gluster"
    cpu_cores   = "2"
    disk_size   = "25"
    glusterfs   = "100"             #Additional GlusterFS Volume (optional)
    local_disk  = false
    memory      = "2048"
    network_speed = "1000"
    private_network_only = false
    hourly_billing = true
}

# Use for EE file location
#icp_source_path="nfs:169.99.99.99:/ibmcloud/ibm-cloud-private-x86_64-2.1.0.3.tar.gz"
