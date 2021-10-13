Help Class Online
========================

# Dados do ambiente do servidor


| APP      | VERSÃO                                  | COMANDO                                            | RELEASE DATE |
| -------- |:---------------------------------------:| :--------------------------------------------------|:-------------|
| Sistema  | Debian 9.13 Stretch ou Ubuntu 16.04 LTS | lsb_release -a                                     | 18 Jul 2020  |
| PHP      | 7.0                                     | php --version                                      | 23 Set 2021  |
| MariaDB  | 10.1.48                                 | mysql -V                                           | 31 Jan 2017  |
| Moodle   | 3.3.1                                   | cat /var/www/moodle/version.php \| grep '$release' | 04 Nov 2020  |
| Nginx    | 1.10.3                                  | sudo nginx -v                                      | 21 abr 2020  |


# Versões do PHP compatíveis com o Help Class Online


| MOODLE   | PHP   | DISTRO                 |
| -------- |:-----:| :----------------------|
| 3.3.1    | 7.0   | Ubuntu 16.04, Debian 9 |


# Moodle compatíveis com PHP 7.0


| VERSÃO MOODLE     | ATUALIZAR DA VERSÃO        |
| ----------------- |:--------------------------:|
| 3.5.18 Lts        | Moodle 3.1                 |
| 3.6.10            | Moodle 3.1                 |
| 3.4.9             | Moodle 3.0                 |


# Localização das aplicações


| APP           | PATH                            | COMANDO             |
| ------------- |:-------------------------------:| :-------------------|
| PHP           | /usr/bin/php                    | which php           |
| Nginx         | /usr/sbin/nginx                 | sudo which nginx    |
| Mysql         | /usr/bin/mysql                  | which mysql         |
| Mysql Dump    | /usr/bin/mysqldump              | which mysqldump     |


# Localização dos arquivos e diretórios do projeto


| APP                        | PATH                                     |
| -------------------------- |:----------------------------------------:|
| Moodle                     | /var/www/moodle                          |
| Moodle Data                | /var/www/moodledata                      |
| Moodle Backup              | /var/www/moodlebackups                   |
| Nginx Moodle Virtual Host  | /etc/nginx/sites-enabled/moodle          |
| Apache Moodle Virtual Host | /etc/apache2/sites-available/moodle.conf |


# Atualizações


## Nginx


A versão que vem no Debian 9 é a **1.10** (janeiro de 2017).
Para atualizar para a mais recente faça o seguinte:

```markdown
sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
sudo service nginx stop
sudo apt remove -y --purge nginx nginx-common
sudo apt autoremove
sudo apt install curl
curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null
gpg --dry-run --quiet --import --import-options import-show /usr/share/keyrings/nginx-archive-keyring.gpg
sudo echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] http://nginx.org/packages/debian `lsb_release -cs` nginx"  | sudo tee /etc/apt/sources.list.d/nginx.list
sudo echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" | sudo tee /etc/apt/preferences.d/99nginx
sudo apt update
sudo apt install -y nginx
sudo nginx -V
```

Testar a porta 80:

```markdown
curl -v 127.0.0.1
sudo apt-get install netcat
nc -vz localhost 80
```

Deve aparecer algo como:

```markdown
localhost [127.0.0.1] 80 (http) open
```

Se aparecer **Connection refused**, então o Nginx não está rodando corretamente na porta 80:

```markdown
localhost [127.0.0.1] 80 (http): Connection refused
```


## PHP


A versão que vem no Debian 9 é a **7.0** (janeiro de 2019).
Para atualizar para a mais recente faça o seguinte:


```markdown
sudo apt -y install lsb-release apt-transport-https ca-certificates
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sudo echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt update -y
sudo apt-get install php7.3 php7.3-common php7.3-cli php7.3-fpm
```

Pode acontecer de se perguntar se você deseja manter a versão atual de todas as dependências:

```markdown
As seguintes acções irão resolver estas dependências:

     Manter os seguintes pacotes na sua versão actual:

1)     php7.3 [Não Instalado]                         
2)     php7.3-cli [Não Instalado]                     
3)     php7.3-common [Não Instalado]                  
4)     php7.3-fpm [Não Instalado]                     
5)     php7.3-json [Não Instalado]                    
6)     php7.3-opcache [Não Instalado]                 
7)     php7.3-readline [Não Instalado] 
Aceitar esta solução? [Y/n/q?]
```

Digite **n** então **Enter**

O gerenciador de pacotes procurará as dependëncias e perguntará se você quer instalar os pacotes:

```markdown
As seguintes acções irão resolver estas dependências:
y
```
Novamente:

```markdown
y
```

Então:

```markdown
sudo service nginx restart
php -v
```

Atualizar os demais pacotes:

```markdown
sudo apt-get install aptitude
sudo aptitude install php7.3-mbstring php7.3-xmlrpc php7.3-soap php7.3-gd php7.3-xml php7.3-intl php7.3-mysql php7.3-zip php7.3-curl php7.3-json
sudo service nginx restart
```

# Administração da base de dados MariaDB


## Resetar a senha de root


No terminal, digite:

```
$ sudo service mysql stop
$ mysqld_safe --skip-grant-tables &
```

Abra outro terminal/sessão e digite:

```
$ mysql
```

No prompt do mysql, digite:

```
mysql> select user,host,plugin from mysql.user;
mysql> UPDATE mysql.user SET plugin = 'mysql_native_password', authentication_string = PASSWORD('<senha>') WHERE User = 'root';
mysql> FLUSH PRIVILEGES;
```

Reinicie a máquina.


## Fazer o Backup do Moodle

Digite:

```markdown
sudo sh /var/www/moodle/moodle-backup.sh
```

Os arquivos de backup ficarão salvos no diretório: **/var/www/moodlebackups**


| VERSÃO MOODLE     | ATUALIZAR DA VERSÃO            |
| ----------------- |:------------------------------:|
| moodle.zip        | Diretório /var/www/moodle      |
| moodledata.zip    | Diretório /var/www/moodledata  |
| moodle.sql.zip    | Backup do banco de dados Mysql |


## Agendando backup automático do Moodle (ex: todo dia às 00h35)


```markdown
sudo su
crontab - e
```

Adicione o seguinte texto:

```markdown
35 0 * * * sudo sh /var/www/moodle/moodle-backup.sh
```


## Código do script de backup


```markdown
# Moodle Site Backup version 1.1
# Copyright 2005-2020 TNG Consulting Inc (www.tngconsulting.ca)
# Author: Michael Milette
# License: GNU GPL 3.0 or later.
# Installation: Place this script in the APPPATH folder.
#               Run it as "sudo" or with sufficient permissions.
# -------------------------------------------------------------------------------------
# Configuration section - Assumes Moodle's WEBROOT and DATA are under the APPPATH.
# -------------------------------------------------------------------------------------
TIMEZONE="America/Fortaleza"
NOW=$(TZ=":$TIMEZONE" date +%Y-%m-%dT%H-%M-%S)
PHP="/usr/bin/php"
MYSQLDUMP="/usr/bin/mysqldump"
APPPATH="/var/www"
WEBROOT="moodle"
DATA="moodledata"
BACKUPPATH="/var/www/moodlebackups/$NOW"
# Exit script on error.
set -e
cd $APPPATH
mkdir $BACKUPPATH
DBUSER=$(grep CFG-\>dbuser ${APPPATH}/${WEBROOT}/config.php | cut -d \' -f 2)
DBPASS=$(grep CFG-\>dbpass ${APPPATH}/${WEBROOT}/config.php | cut -d \' -f 2)
DBNAME=$(grep CFG-\>dbname ${APPPATH}/${WEBROOT}/config.php | cut -d \' -f 2)
echo
echo "Moodle site backup - Please be patient, this can take a while..."
echo "Start time: $NOW"
echo "Saved in folder: $BACKUPPATH"
echo
pushd $WEBROOT  >/dev/null
echo "Running CRON..."
$PHP admin/cli/cron.php >/dev/null
echo "Clearing Moodle cache..."
$PHP admin/cli/purge_caches.php
popd >/dev/null
echo "Backing up the database..."
$MYSQLDUMP -u ${DBUSER} -p${DBPASS} ${DBNAME} > $BACKUPPATH/moodle.sql
DBUSER=;DBPASS=;DBNAME=

echo "Compressing database backup file..."
zip -jq  $BACKUPPATH/moodle.sql.zip $BACKUPPATH/moodle.sql
rm $BACKUPPATH/moodle.sql

echo "Backing up the Moodle files..."
zip -qr $BACKUPPATH/moodle.zip ${WEBROOT}

echo "Backing up the moodledata files..."
zip -qr $BACKUPPATH/moodledata.zip ${DATA}

echo "================================================"
echo "Moodle Backup Successfully Completed"
echo "================================================"
echo "Started at $NOW"
NOW=$(TZ=":$TIMEZONE" date +%Y-%m-%dT%H-%M-%S)
echo "Completed at $NOW"
echo "Saved in folder: $BACKUPPATH"
echo
echo "Verify that files sizes are about consistent with previous backups:"
ls -l --block-size=M $BACKUPPATH
echo "================================================"
```


## Restauração


Primeiramente deve-se habilitar o InnoDB Large Indexes no MariaDB usando o arquivo de configuração.

Edite o arquivo de configuração do servidor MariaDB:

```markdown
sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf
```

E coloque as seguintes linhas logo após a linha [mysqld]:

```markdown
innodb-file-format=barracuda
innodb-file-per-table=ON
innodb-large-prefix=ON
innodb_default_row_format = 'DYNAMIC'
```

Em seguida, reinicie o MariaDB:

```markdown
sudo service mysql restart
sudo systemctl restart mariadb.service
```

Entre no terminal do MariaDB:

```markdown
sudo su
mysql -u root -p
```

Digite:

```markdown
MariaDB [(none)]> CREATE DATABASE c2moodle CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
MariaDB [(none)]> CREATE USER 'c2helpclass'@'localhost' IDENTIFIED BY '<senha_do_usuario_bd>';
MariaDB [(none)]> GRANT ALL ON c2moodle.* TO c2helpclass@localhost;
MariaDB [(none)]> FLUSH PRIVILEGES;
```

Para restaurar a base de dados, digite:

```markdown
sudo su
mysql -u root -p c2moodle < moodle.sql
```


## Obter os dados sobre o character set e collation 


```markdown
mysql -u c2helpclass -p
MariaDB [(none)]> use c2moodle;
MariaDB [(none)]> SELECT @@character_set_database, @@collation_database;
```

Saída:


```markdown
+--------------------------+----------------------+
| @@character_set_database | @@collation_database |
+--------------------------+----------------------+
| utf8mb4                  | utf8mb4_general_ci   |
+--------------------------+----------------------+
```


# Administração Moodle via Linha de Comando/Terminal


## Habilitar modo de manutenção Moodle


```markdown
sudo /usr/bin/php /var/www/moodle/admin/cli/maintenance.php --enable
```


## Desabilitar modo de manutenção Moodle


```markdown
sudo /usr/bin/php /var/www/moodle/admin/cli/maintenance.php --disable
```


## Matar todas as sessões


```markdown
sudo /usr/bin/php /var/www/moodle/admin/cli/kill_all_sessions.php
```


## Checar e corrigir as integridades dos cursos no Banco de dados


```markdown
sudo /usr/bin/php /var/www/moodle/admin/cli/fix_course_sequence.php -c=* --fix
```


## Checar e corrigir perguntas órfãos nos quizzes


```markdown
sudo /usr/bin/php /var/www/moodle/admin/cli/fix_orphaned_question_categories.php --fix
```

## Resetar senha de um usuário


```markdown
sudo /usr/bin/php /var/www/moodle/admin/cli/reset_password.php
```

Exemplo:


```markdown
== Password reset ==
Enter username (manual authentication only)
: moodletips
Enter new password
: moodletips
```


# Montar um ambiente de homologação do Moodle 3.3.1


## Ubuntu Desktop Mate 16.04


###  Requisitos mínimos:


- Hipervisor (Vmware Workstation ou Virtualbox)
- https://cdimage.ubuntu.com/ubuntu-mate/releases/16.04/release/ubuntu-mate-16.04.6-desktop-amd64.iso
- https://cdimage.ubuntu.com/ubuntu-mate/releases/16.04/release/ubuntu-mate-16.04.6-desktop-i386.iso
- 30 GB
- 2 GB RAM


### Baixar o script


```markdown
cd ~
wget https://raw.githubusercontent.com/rodrigosantosbr/lv_learning_vectors/main/scripts/moodlelv_ubuntumate_config.sh
```


### Executar o script


```markdown
chmod +x moodlelv_ubuntumate_config.sh
sudo ./moodlelv_ubuntumate_config.sh
```

### Copiar os diretórios moodle e moodledata para /var/www


```markdown
sudo moodle mv /var/www/moodle
sudo moodledata mv /var/www/moodledata
sudo chmod 775 /var/www/moodle
sudo chmod 775 /var/www/moodledata
sudo chown -R www-data:www-data /var/www
```

### Restaurar a base de dados

Como root:

```
sudo su
mysql -u root -p c2moodle < moodle.sql
```

Reinicie a máquina.

