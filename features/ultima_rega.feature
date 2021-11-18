#language: pt

Funcionalidade: Gravar e mostrar data e hora da ultima rega
Como usuário
Para saber quando reguei pela ultima vez

Cenário: Grava data e hora da ultima rega com sucesso
Dado que estou na página inicial
Quando clico em reguei
E clico em confirmar
Então data e hora deve ser gravado
E deverei ver data e hora na página inicial