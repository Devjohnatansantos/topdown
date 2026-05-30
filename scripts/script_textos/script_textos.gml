global.cutscene = true;

function scr_textos(){
	switch npc_nome{
		case "npc1":
		
		texto[0] = "Olá esse é o primeiro texto"
		texto[1] = "teste continuo"
		texto[2] = "funcionando"
		
		break;
		
		case "Richarlison":
		
		texto[0] = "Que é???"
		texto[1] = "Nada?"
		texto[2] = "Então vaza!"
		
		break;
		
		case "Professor":
		
		texto[0] = "A sua nota foi muito ruim!"
		texto[1] = "Você deveria ajuda-lo a melhorar essa nota!"
		texto[2] = "Espero não ver um número menor que esse na próxima reunião."
		
		break;
		
		case "Professor.":
		
		texto[0] = "Agora chamarei os nomes dos alunos para os pais olharem os boletins."
		texto[1] = "Ao ouvir o nome do seu filho venha até mim."
		texto[2] = "Lucky!"
		global.cutscene = false;
		global.dialogo = false;
		
		break;
		
		
		
	}
}