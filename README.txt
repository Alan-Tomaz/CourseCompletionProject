Para o perfeto funcionamento deste programa é necessário o conector java do mySql, a biblioteca r2sxml e o iReport no site sourceforge e a versão 7 do JDK;

Altere o arquivo ireport.conf nas configurações do ireport e defina o caminho do jdk 7.0 para o perfeito funcionamento.

Importar todas as bibliotecas do caminho C:\Program Files (x86)\Jaspersoft\iReport-5.6.0\ireport\modules\ext

Atenção para alterar o caminho que está a pasta report nos códigos.

Crie um novo usuário no banco de dados para o ireport:
Login Name: dba;
Authentication Type: Standard;
Link to hosts matching: %;
Password: root;
Confirm password: root;

Em Administrative Roles , defina todos os privilégios para ele.
Apply;

Altere também no ModuloConexao para este novo usuário