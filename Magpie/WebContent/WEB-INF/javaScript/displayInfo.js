/**
 * 
 */

function showScene(sceneid){
	ajaxGetData("GET","queryUnit.do?scene="+sceneid,null,buildUnit);
	
}

function buildUnit(xmlDoc){
	if(xmlDoc==null) return;
	//var messageArea=document.getElementById("dataMessage");
	var body=xmlDoc.getElementsByTagName("body")[0];
	var unit=xmlDoc.getElementsByTagName("unit");
	for(var i=0;i<unit.length;i++){
		
		var title=unit[i].getElementsByTagName("title")[0].firstChild.data;
		var description=unit[i].getElementsByTagName("description")[0].firstChild.data;
		
		var fieldset=document.createElement("fieldset")
		article.setAttribute("class","editField");
		body.appendChild(fieldset);
		var legend=document.createElement("legend")
		legend.innerHTML=title;
		fieldset.appendChild(legend);
		
		ajaxGetData("GET","queryUnit.do?scene="+sceneid,null,function(){buildSubject(unit);});
		
		
		
	}
	
}

function buildSubject(unit){
	var div=document.createElement("div")
	div.setAttribute("class","subject");
	unit.appendChild(div);
	var nav=document.createElement("nav")
	div.appendChild(nav);
	var ul=document.createElement("ul")
	nav.appendChild(ul);
	
	
	
	
}
















