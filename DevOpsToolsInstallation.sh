echo 'Installing DevOps Tools (Git, JDK, Ant, Maven, )'
ech0 '================================================'


echo 'Git Installation started.)'
echo '-------------------------'
cd /opt
yum groupinstall "Development Tools" -y
yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel curl-devel -y
yum install wget -y
wget https://github.com/git/git/archive/v2.18.0.tar.gz -O git-bash.tar.gz
tar -zxf git-bash.tar.gz
cd git-2.18.0
make configure
./configure --prefix=/usr/local
make install
git --version
git config --global user.name "Mithun Technologies"
git config --global user.email "devopstrainingblr@gmail.com"
git config --list

echo 'Git Installation done successfully.)'
echo '-----------------------------------'


echo 'Java Installation start)'
echo '-----------------------'

sudo wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.rpm

sudo yum install jdk-8u181-linux-x64.rpm -y

java -version

echo 'Java Installation done successfully.)'
echo '-----------------------------------'


wget http://www-eu.apache.org/dist//ant/binaries/apache-ant-1.10.5-bin.zip -O apache-ant-1.10.5.zip

unzip apache-ant-1.10.5.zip

vim ~/.bash_profile

export ANT_HOME=/opt/apache-ant-1.10.5
export PATH=$PATH:$ANT_HOME/bin
source ~/.bash_profile
ant -version



wget http://www-eu.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.zip -O apache-maven-3.5.4.zip

unzip apache-maven-3.5.4.zip

vim ~/.bash_profile

export M2_HOME=/opt/apache-maven-3.5.4
export PATH=$PATH:$M2_HOME/bin
source ~/.bash_profile
mvn -version



