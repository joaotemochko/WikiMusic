function buscaArtistas(funcaoParam){
    $.ajax({
         type: "GET",
         url: "http://localhost:8080/WikiMusicRestful/rest/artista",
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

function listaArtistasNaTelaAdmin(artistas){
    $("#listDados").empty();

    $(artistas).find("artista").each(function(){

        //var dsArtista = $(this).find("dsArtista").text();
        var idArtista = $(this).find("idArtista").text();
        var dsNome = $(this).find("dsNome").text();

        var inputEdit = $("<input>").attr("type","button").attr("value","editar").attr("onclick","editaArtista("+idArtista+")");
        var inputDelete = $("<input>").attr("type","button").attr("value","excluir").attr("onclick","excluiArtista("+idArtista+")");
        var div = $("<div>")
                        .append(inputEdit).append(" ")
                        .append(inputDelete).append(" ")
                        .append(dsNome);


        $("#listDados").append(div);
     });
}
function abreFormArtista(){
    $("#listDados").hide();
    $("#form").show();
}
function editaArtista(idArtista){
    $.ajax({
         type: "GET",
         url: "http://localhost:8080/WikiMusicRestful/rest/artista/"+idArtista,
         contentType: "application/xml; charset=utf-8",
         dataType: "xml",
         success: function (data, status, jqXHR) {
             var artista = $(data).find("artista")[0];
             
             $("#idArtista").val($(artista).find("idArtista").text());
             $("#dsNome").val($(artista).find("dsNome").text());
             $("#dsNacionalidade").val($(artista).find("dsNacionalidade").text());
             $("#dsImagem").val($(artista).find("dsImagem").text());
             $("#dsBiografia").val($(artista).find("dsBiografia").text());

             abreFormArtista();
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
function salvaArtista(){
    if($("#dsNome").val().trim()==""){
        alert("Digite o nome do artista");
        return;
    }

    if($("#idArtista").val()==""){
        insereArtista();
    }else{
        alteraArtista();
    }
}
function insereArtista(){
    var dsNome = $("#dsNome").val();
    var dsNacionalidade = $("#dsNacionalidade").val();
    var dsImagem = $("#dsImagem").val();
    var dsBiografia = $("#dsBiografia").val();

    $.ajax({
         type: "POST",
         url: "http://localhost:8080/WikiMusicRestful/rest/artista",
         contentType: "application/xml; charset=utf-8",
         dataType: "xml",
         data:"<artista><dsNome>"+dsNome+"</dsNome><dsNacionalidade>"+dsNacionalidade+"</dsNacionalidade><dsImagem>"+dsImagem+"</dsImagem><dsBiografia>"+dsBiografia+"</dsBiografia></artista>",
         success: function (data, status, jqXHR) {
             alert("Inserido com sucesso!");
             cancela();
             buscaArtistas(listaArtistasNaTelaAdmin);             
         },
         error: function (jqXHR, status) {
             alert("Erro na inserção");
         }
     });
}

function alteraArtista(){
    var idArtista = $("#idArtista").val();
    var dsNome = $("#dsNome").val();
    var dsNacionalidade = $("#dsNacionalidade").val();
    var dsImagem = $("#dsImagem").val();
    var dsBiografia = $("#dsBiografia").val();

	$.ajax({
         type: "PUT",
         url: "http://localhost:8080/WikiMusicRestful/rest/artista/"+idArtista,
         contentType: "application/xml; charset=utf-8",
         dataType: "xml",
         data:"<artista><idArtista>"+idArtista+"</idArtista><dsNome>"+dsNome+"</dsNome><dsNacionalidade>"+dsNacionalidade+"</dsNacionalidade><dsImagem>"+dsImagem+"</dsImagem><dsBiografia>"+dsBiografia+"</dsBiografia></artista>",
         success: function (data, status, jqXHR) {
             alert("Alterado com sucesso!");
             cancela();
             buscaArtistas(listaArtistasNaTelaAdmin);  
         },
         error: function (jqXHR, status) {
             alert("Erro na alteração");
         }
     });
}

function excluiArtista(idArtista){
    if(!confirm("Tem certeza que deseja excluir o artista?")){
        return;
    }
	$.ajax({
         type: "DELETE",
         url: "http://localhost:8080/WikiMusicRestful/rest/artista/"+idArtista,
         contentType: "application/xml; charset=utf-8",
         dataType: "xml",
         success: function (data, status, jqXHR) {
             alert("Excluído com sucesso!");
             buscaArtistas(listaArtistasNaTelaAdmin);

         },
         error: function (jqXHR, status) {
             alert("Erro na exclusão");
         }
     });
}