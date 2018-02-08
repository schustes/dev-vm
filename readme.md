# Setup Dev VM #

Mit diesem Skript wird über vagrant eine VM angelegt und mit diversen Skripten eingerichtet. 

### Voraussetzungen ### 
- vagrant ist installiert.
- Eine VirtualBox ist installiert. Das kann evtl. Probleme mit Windows 10 geben wenn man nativ bereits Docker installiert hat (https://forums.docker.com/t/running-docker-and-virtualbox-on-the-same-machine/23578/8).
Evtl. behebbar über Änderung der Windows Einstellungen?

## Konfiguration ##
Als Basis ist nur der Ubuntu Desktop und eine Oracle 8 JVM installiert.
Die Konfiguration im Vagrantfile kann bei Bedarf angepasst werden (z.B. um nur eine Entwicklungsumgebung herunterzuladen).

## Ausführen ##
- Initial: vagrant up -> lädt VM image und generiert die VM anhand des Vagrant files
- Nur die Provisioning Skripte laufen zu lassen: vagrant provision
- VM zerstören: vm destroy. Wenn man anschliessend vagrant up laufen lässt, wird die VM wieder eingerichtet. Dabei wird nicht das image wieder runtergeladen, so dass es nicht ganz so lange dauert.

## Benutzen ##
- Nach dem vagrant fertig ist, sollte eine VM in der VirtualBox auftauchen, die man dann einfach benutzen kann. Der Standarduser ist vagrant/vagrant. Root Passwort ist ebenfalls vagrant.

- Alle installierten und kopierten Dateien sind (mit Ausnahme git) in /opt (git, mvn, gradle, eclipse, intellij). Intellij muss aber erst noch über das Skript initialisiert werden.

- Kafka ist im Hintergrund gestartet. Als Test wurde ebenfalls eine Spring Demo app gestartet. Kafka sollte sowohl von der VM als auch vom Host ansprechbar sein.
Bsp.: bin/kafka-topics.sh --list --zookeeper 192.168.56.1:2181 vom Host bzw.  bin/kafka-topics.sh --list --zookeeper localhost:2181 von der VM aus.
Obiger Befehl sollte als Ergebnis 'test' als einziges Topic zurückliefern.

- Verifizieren dass alles richtig läuft:
Testnachricht publishen: Im Browser http://192.168.56.1:12001/kafkademo/messages/producer?data=hello world! eingeben
Bei Aufruf von http://192.168.56.1:12001/kafkademo/messages/consumer sollte dann 'Hello world!' erscheinen

## Nützliches ##
Vagrant vereinfacht neben dem setup auch das Benutzen der VM.

- vagrant ssh: Direkt via ssh einloggen. Wenn ssh von Windows aus genutzt wird, muss erst ein Bug in vagrant behoben werden:  

  Open C:\development\Vagrant\embedded\gems\gems\vagrant-2.0.2\lib\vagrant\util\ssh.rb and remove faulty windows check in line 82-88  
    \# if Platform.windows?  
    \#   raise Errors::SSHUnavailableWindows,  
    \#     host: ssh_info[:host],  
    \#     port: ssh_info[:port],  
    \#     username: ssh_info[:username],  
    \#     key_path: ssh_info[:private_key_path].join(", ")  
    \# end  

  Source: https://gist.github.com/haf/2843680





