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

function listaEstilosNaCombo(estilos){

    $("#idEstilo").empty();

    $(estilos).find("estilo").each(function(){

        var idEstilo = $(this).find("idEstilo").text();
        var dsEstilo = $(this).find("dsEstilo").text();
        var opcao = $("<option>").append(dsEstilo).attr("value",dsEstilo);

        $("#idEstilo").append(opcao);
    });
}




function listaEstilosEmTodasAsCombos(estilos){

    $("#idEstilo").empty();

    $(estilos).find("estilo").each(function(){

        var idEstilo = $(this).find("idEstilo").text();
        var dsEstilo = $(this).find("dsNome").text();
        var opcao = $("<option>").append(dsEstilo).attr("value",dsEstilo);

        $("#idEstilo").append(opcao);
    });


    $("#idEstiloComOptgroup").empty();

    $(estilos).find("estilo").each(function(){

        var idEstilo = $(this).find("idEstilo").text();
        var dsEstilo = $(this).find("dsNome").text();
        var opcao = $("<option>").append(dsEstilo).attr("value",dsEstilo);

        $("#idEstiloComOptgroup").append(opcao);
    });
    
    
    
    $("#idEstiloComDatalist").empty();

    $(estilos).find("estilo").each(function(){

        var idEstilo = $(this).find("idEstilo").text();
        var dsEstilo = $(this).find("dsNome").text();
        var opcao = $("<option>").append(dsEstilo).attr("value",dsEstilo);

        $("#idEstiloComDatalist").append(opcao);
    });
}


function adicionaEstilosNoMenu(estilos){

    //$("#topnav").empty();

    $(estilos).find("estilo").each(function(){

        var dsEstilo = $(this).find("dsNome").text();

        var a = $("<a>").attr("href",geraHref(dsEstilo)).append(dsEstilo);
        var li = $("<li>").append(a);

        $("#topnav").find("ul").append(li);
     });
}

function geraHref(nmEstilo){

    // Remove traços e espaços
    var dsEstilo = nmEstilo.toLowerCase().trim().replace(" ","").replace("-",""); 
    // Remove acentos
    dsEstilo = dsEstilo.normalize('NFD').replace(/[\u0300-\u036f]/g, "")

    return "./"+dsEstilo+".html";
}