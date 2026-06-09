global.cutscene = true;
global.mente = false;

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
		texto[2] = "Você precisa dedicar-se mais aos estudos."
		texto[3] = "Espero não ver um número menor que esse na próxima reunião."
		
		break;
		
		case "Professor.":
		
		texto[0] = "Agora chamarei os nomes dos alunos para os pais olharem os boletins."
		texto[1] = "Ao ouvir o nome do seu filho venha até mim para olhar a nota dele."
		texto[2] = "Lucky, por favor venha até a mesa"
		global.cutscene = false;
		global.dialogo = false;
		
		break;
		
			case "Pai do Lucky":
		
		texto[0] = "Eaí como foi na reunião?"
		texto[1] = "Deixa eu ver seu boletim."
		texto[2] = "MEU DEUS VOCÊ FOI MUITO MAL!!!"
		texto[3] = "Como pussera você tirar notas tão baixas???"
		texto[4] = "Olha que na minha época não existiam esses facilitadores de hoje em dia."
		texto[5] = "Hoje em dia os professores deixam usar calculadoras, provas com consultas ao caderno, e explicam se você perguntar."
		texto[6] = "Você deveria ser melhor igual ao seu primo!"
		texto[7] = "Estuda na mesma escola e nunca tira notas baixas, você precisa dedicar-se."
		global.cutscene = false;
		global.dialogo = false;
		
		break;
			
				case "...":
				texto[0] = "1 Dia depois"
				texto[1] = "Durante a aula na escola"
				
				break;
		
		
	}
}