docker network create --driver bridge my_net1
docker network create --driver bridge --subnet 172.20.0.0/24 --gateway 172.20.0.1 my_net2
my_net1
172.18.0.0/16
my_net2
172.20.0.0/24
//docker run -it --name vm1 --network=my_net1 centos:7.5(172.18.0.2)
//docker run -it --name vm2 --network=my_net2 --ip=172.20.0.10 centos(172.20.0.10)
//建立容器和另一个网桥的链接
docker network connect my_net1 vm2
//验证
ping 172.18.0.2

//查看docker网络映射
iptables -t nat -nL

//docker跨主机通信 --macvlan
host1   81.71.36.134  
host2   139.196.79.196

docker network create -d macvlan --subnet=172.16.10.0/24 --gateway=172.16.10.1 -o parent=enp0s8 mac1

-d          指定docker网络driver
--subnet    指定macvlan网络所在的网络
--gateway   指定网关
-o parent   指定用来分配 macvlan 网络的物理网卡d
----------------------------------------------------
zookeeper  单机模式
下载zookeeper
cp zookeeper/conf/zoo-simple.conf zookeeper/conf/zoo.conf 
bin/zkServer.sh start
-------------------------------------------------------
mesos
https://mesos.apache.org/documentation/latest/building/
--- centos
wget https://downloads.apache.org/mesos/1.11.0/mesos-1.11.0.tar.gz
tar -zxf mesos-1.11.0.tar.gz
---
yum install -y tar wget git
wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
yum install -y epel-release
----
bash -c 'cat > /etc/yum.repos.d/wandisco-svn.repo <<EOF
[WANdiscoSVN]
name=WANdisco SVN Repo 1.9
enabled=1
baseurl=http://opensource.wandisco.com/centos/7/svn-1.9/RPMS/\$basearch/
gpgcheck=1
gpgkey=http://opensource.wandisco.com/RPM-GPG-KEY-WANdisco
EOF'
----
yum update systemd
----
yum groupinstall -y "Development Tools"

yum install -y apache-maven python-devel python-six python-virtualenv java-1.8.0-openjdk-devel zlib-devel libcurl-devel openssl-devel cyrus-sasl-devel cyrus-sasl-md5 apr-devel subversion-devel apr-util-devel
---ubuntu
# Update the packages.
$ sudo apt-get update

# Install a few utility tools.
$ sudo apt-get install -y tar wget git

# Install the latest OpenJDK.
$ sudo apt-get install -y openjdk-8-jdk

# Install autotools (Only necessary if building from git repository).
$ sudo apt-get install -y autoconf libtool

# Install other Mesos dependencies.
$ sudo apt-get -y install build-essential python-dev python-six python-virtualenv libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev zlib1g-dev iputils-ping


//-
mkdir build
cd build
../configure
make