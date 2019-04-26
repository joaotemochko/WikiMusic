// Captura data e hora do sistema e mostra
function dataHora() {
    var hoje = new Date();

    var dia = hoje.getDate();
    var mes = hoje.getMonth();
    var ano = hoje.getFullYear();
    var hora = hoje.getHours();
    var minuto = hoje.getMinutes();
    var segundo = hoje.getSeconds();

    document.faleconosco.hoje.value = dia + '/' + mes + '/' + ano + ' ' 
                                    + hora + ':' + minuto + ':' + segundo; 

}


// Captura data, hora e dia da semana do sistema e mostra
function dataHoraCompleta() {

    var hoje = new Date();

    var dia = hoje.getDate();
    var mes = hoje.getMonth();
    var ano = hoje.getFullYear();
    var hora = hoje.getHours();
    var minuto = hoje.getMinutes();
    var segundo = hoje.getSeconds();
   
    // Define o mês por extenso usando o Array meses
    var meses = new Array('janeiro',
                          'fevereiro',
                          'março',
                          'abril',
                          'maio',
                          'junho',
                          'julho',
                          'agosto',
                          'setembro',
                          'outubro',
                          'novembro',
                          'dezembro');

    var nomemes = meses[mes];
    
    // Define o dia da semana
    var diaSemana = hoje.getDay();
    switch (diaSemana) {
        case 0: {
             var diaSemanaExtenso = "Domingo, ";
             break;
        }
        case 1: {
             var diaSemanaExtenso = "Segunda-feira, ";
             break;
        }
        case 2: {
             var diaSemanaExtenso = "Terça-feira, ";
             break;
        }
        case 3: {
             var diaSemanaExtenso = "Quarta-feira, ";
             break;
        }
        case 4: {
             var diaSemanaExtenso = "Quinta-feira, ";
             break;
        }
        case 5: {
             var diaSemanaExtenso = "Sexta-feira, ";
             break;
        }
        case 6: {
             var diaSemanaExtenso = "Sábado, ";
             break;
        }
    }
    
    // Corrige minutos e segundos (com zero à frente) 
    if (minuto <= 9) {
        minuto = '0' + minuto;
    } 
    if (segundo <= 9) {
        segundo = '0' + segundo;
    }
    
    // Define a saudação
    if (hora < 12) {
        var saudacao = 'Bom dia!';
    } else if (hora >= 18) {
        var saudacao = 'Boa noite!';
    } else {
        var saudacao = 'Boa tarde!';
    }
    
    document.faleconosco.hoje.value = diaSemanaExtenso + dia + ' de ' + 
            nomemes + ' de ' + ano + ' ' + hora + ':' + minuto + ':' + 
            segundo + ' ' + saudacao;
    
}    
    
function atualizaHora() {
    window.setInterval("dataHoraCompleta()",1000);
}

function medidor() {
    var range = document.querySelector("#agradou");

    var medidor1 = document.getElementById("medidor1");
    medidor1.value = range.value;

    var medidor2 = document.getElementById("medidor2");
    medidor2.value = range.value / 10;

    var bProgresso = document.getElementById("barraProgresso");
    bProgresso.value = range.value * range.max;
}



// Captura dia da semana do sistema e mostra usando ALERT
function mostraDiaSemana(){
  var hoje = new Date();
  var diaSemana = hoje.getDay();
  var diaCorrente = hoje.getDate();

  switch (diaSemana) {
    case 1:
      alert("Hoje é: segunda-feira, " + diaCorrente);
      break;
    case 2:
      alert("Hoje é: terça-feira, " + diaCorrente);
      break;
    case 3:
      alert("Hoje é: quarta-feira, " + diaCorrente);
      break;
    case 4:
      alert("Hoje é: quinta-feira, " + diaCorrente);
      break;
    case 5:
      alert("Hoje é: sexta-feira, " + diaCorrente);
      if (document.faleconosco.idade.value >= 18) {
            abreJanela();
      }
      break;
    case 6:
      alert("Hoje é: sábado, " + diaCorrente);
      if (document.faleconosco.idade.value >= 18) {
            abreJanela();
      }
      break;
  }    
}


// Funções para abertura e fechamento de Pop-up
function abreJanela(){
  window.open("propaganda.html", "Publicidade", "width=700, height=800");
}

function fechaJanela(){
  window.close();
}





function pegaValorInputPeloId(){
  confirm(document.faleconosco.nome.value);
  alert(document.getElementById("nome").value);
}

function pegaValorInputPeloName(){
  confirm(document.getElementsByName("email")[0].value);
}

function pegaValorInputPeloNomeDaClasse(){
  alert(document.getElementsByClassName("idade")[0].value);
}
                    
function mudaValorInput(){
  document.getElementById("nome").value = "Texto alterado pelo javascript";
}




function adicionaTextoNaDescricao(){
  document.getElementById("comentarios").innerHTML += document.getElementById("nome").value;
}





function consisteCampos(){
    var erro = false;

    document.getElementById("nome").style = "background-color:white";
    document.getElementById("email").style = "background-color:white";
    document.getElementById("telefone").style = "background-color:white";
    document.getElementById("idade").style = "background-color:white";
    
    if (document.faleconosco.nome.value.length<=5){
        erro = true;
        document.getElementById("nome").style = "background-color:pink";
    }
    
    if (document.faleconosco.email.value.length<=5){
        erro = true;
        document.faleconosco.email.style.backgroundColor = "pink";
    }
    
    if (document.faleconosco.telefone.value.length>0 &&
        document.faleconosco.telefone.value.length<10){
        erro = true;
        document.getElementById("telefone").style = "background-color:pink";
    }
    
    if (document.faleconosco.idade.value>120){
        erro = true;
        document.faleconosco.idade.style.backgroundColor = "pink";
    }
    
    if (erro){
        alert("Existem erros nos campos marcados em vermelho. Corrija-os por favor!");
        document.faleconosco.nome.focus();
        return ;
    }
}


function identificaBrowser(){
  alert("Browser em uso: " + navigator.appName);
}


/* -----------  Outros Exemplos não usados no Projeto  ------------- */
/*-------------------------------------------------------------------*/
function pegaTexto(){
  alert(document.getElementById("hoje").innerHTML);
}
function pegaCss(){
  alert(document.getElementsByClassName("datahora")[0].innerHTML);
}

function trocaTexto(){
  document.getElementById("nome").innerHTML = "Aqui vai o nome do visitante";
}
function adicionaTexto(){
  document.getElementById("nome").innerHTML += "Texto adicionado!";
}
function mudaEstilo(){
  document.getElementById("nome").style = "color:red;";
}
function criaObjeto(){
  document.getElementById("img").innerHTML = "<img src='http://lorempixel.com/100/100/nature'/>";
}
function adicionaTextoNaDescricaoComCondicao(){
  if(document.getElementById("nome").value==""){
    alert("Digite um nome válido!");
    return;
  }
  document.getElementById("descricao").innerHTML += document.getElementById("campoTexto").value;
}
function escondeDescricao(){
  document.getElementById("descricao").style= "display:none";
}
function mostraDescricao(){
  document.getElementById("descricao").style= "display:block";
}

