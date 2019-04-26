function geraHref(nmEstilo){
	return "/site11/"+nmEstilo.toLowerCase().trim().replace(" ","-")+".html";
}
function adicionaEstilosNoMenu(estilos){
    $(estilos).find("estilo").each(function(){

        var dsNome = $(this).find("dsNome").text();
        //var dsEstilo = $(this).find("dsEstilo").text();

        var a = $("<a>").attr("href",geraHref(dsNome)).append(dsNome);
        var li = $("<li>").append(a);


        $("#topnav").find("ul").append(li);
     });
}
function buscaEstilos(funcaoParam){
    $.ajax({
         type: "GET",
         url: "http://localhost:8080/WikiMusicRestful/rest/estilo",
         contentType: "application/xml; charset=utf-8",
         dataType: "xml",
         success: function (data, status, jqXHR) {
             funcaoParam(data);
         },
         error: function (jqXHR, status) {
             alert("Erro na consulta");
         }
     });
}

function listaEstilosNaTelaAdmin(estilos){
    $("#listDados").empty();

    $(estilos).find("estilo").each(function(){

        //var dsEstilo = $(this).find("dsEstilo").text();
        var dsNome = $(this).find("dsNome").text();
        var idEstilo = $(this).find("idEstilo").text();

        var inputEdit = $("<input>").attr("type","button").attr("value","editar").attr("onclick","editaEstilo("+idEstilo+")");
        var inputDelete = $("<input>").attr("type","button").attr("value","excluir").attr("onclick","excluiEstilo("+idEstilo+")");
        var div = $("<div>")
                        .append(inputEdit).append(" ")
                        .append(inputDelete).append(" ")
                        .append(dsNome);


        $("#listDados").append(div);
     });
}
function abreFormEstilo(){
    $("#listDados").hide();
    $("#form").show();
}
function editaEstilo(idEstilo){
    $.ajax({
         type: "GET",
         url: "http://localhost:8080/WikiMusicRestful/rest/estilo/"+idEstilo,
         contentType: "application/xml; charset=utf-8",
         dataType: "xml",
         success: function (data, status, jqXHR) {
             var estilo = $(data).find("estilo")[0];
             
             //$("#dsEstilo").val($(estilo).find("dsEstilo").text());
             $("#dsNome").val($(estilo).find("dsNome").text());
             $("#idEstilo").val($(estilo).find("idEstilo").text());

             abreFormEstilo();
         },
         error: function (jqXHR, status) {
             alert("Erro na consulta");
         }
     });
}
function cancela(){
    $("#listDados").show();
    $("#form").hide();

    $("form")[0].reset();
}
function salvaEstilo(){
    if($("#dsNome").val().trim()==""){
        alert("Digite a descrição do estilo");
        return;
    }

    if($("#idEstilo").val()==""){
        insereEstilo();
    }else{
        alteraEstilo();
    }
}
function insereEstilo(){
    //var dsEstilo = $("#dsEstilo").val();
    var dsNome = $("#dsNome").val();

    $.ajax({
         type: "POST",
         url: "http://localhost:8080/WikiMusicRestful/rest/estilo",
         contentType: "application/xml; charset=utf-8",
         dataType: "xml",
         data:"<estilo><dsNome>"+dsNome+"</dsNome></estilo>",
         success: function (data, status, jqXHR) {
             alert("Inserido com sucesso!");
             cancela();
             buscaEstilos(listaEstilosNaTelaAdmin);             
         },
         error: function (jqXHR, status) {
             alert("Erro na inserção");
         }
     });
}

function alteraEstilo(){
    //var dsEstilo = $("#dsEstilo").val();
    var dsNome = $("#dsNome").val();
    var idEstilo = $("#idEstilo").val();

	$.ajax({
         type: "PUT",
         url: "http://localhost:8080/WikiMusicRestful/rest/estilo/"+idEstilo,
         contentType: "application/xml; charset=utf-8",
         dataType: "xml",
         data:"<estilo><idEstilo>"+idEstilo+"</idEstilo><dsNome>"+dsNome+"</dsNome></estilo>",
         success: function (data, status, jqXHR) {
             alert("Alterado com sucesso!");
             cancela();
             buscaEstilos(listaEstilosNaTelaAdmin);  
         },
         error: function (jqXHR, status) {
             alert("Erro na alteração");
         }
     });
}

function excluiEstilo(idEstilo){
    if(!confirm("Tem certeza que deseja excluir o estilo?")){
        return;
    }
	$.ajax({
         type: "DELETE",
         url: "http://localhost:8080/WikiMusicRestful/rest/estilo/"+idEstilo,
         contentType: "application/xml; charset=utf-8",
         dataType: "xml",
         success: function (data, status, jqXHR) {
             alert("Excluído com sucesso!");
             buscaEstilos(listaEstilosNaTelaAdmin);

         },
         error: function (jqXHR, status) {
             alert("Erro na exclusão");
         }
     });
}