function ajouterabs(id_etu){
	var OK=function(result){
		//json pour retourner de la base
		var data = jQuery.parseJSON(result);
		alert(data);
}
	$.ajax({
				url:"ajouterabs",
				data:{id:id_etu},
				type:"POST",
				success:OK	
	});
	
	alert("absence bien ajouté");
}

function ajouterpre(id_etu){
	var OK=function(result){
		//json pour retourner de la base
		var data = jQuery.parseJSON(result);
		alert(data);
}
	$.ajax({
				url:"ajouterpre",
				data:{id:id_etu},
				type:"POST",
				success:OK	
	});
	
	alert("presence bien ajouté");
}




function lirenote(bouton){
	var id=$(bouton).parent().find('h3').attr('id');
	var OK=function(result){
		//json pour retourner de la base
		var data = jQuery.parseJSON(result);
		alert(data);
}
		$.ajax({
			url:"lirenote",
			data:{id:id},
			type:"POST",
			success:OK	
});
	}

function lirenote1(bouton){
	var id=$(bouton).parent().find('h3').attr('id');
	var OK=function(result){
		//json pour retourner de la base
		var data = jQuery.parseJSON(result);
		alert(data);
}
		$.ajax({
			url:"lirenote",
			data:{id:id},
			type:"POST",
			success:OK	
});
	}
