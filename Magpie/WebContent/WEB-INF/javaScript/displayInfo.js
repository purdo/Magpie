/**
 * 
 */

function showScene(sceneid){
	ajaxGetData("GET","queryUnit.do?scene="+sceneid,null,buildScene);
	
}

function buildScene(xmlDoc){
	if(xmlDoc==null) return;
	//var messageArea=document.getElementById("dataMessage");
	var body=xmlDoc.getElementsByTagName("body")[0];
	var unit=xmlDoc.getElementsByTagName("unit");
	var article=document.createElement("article")
	//article.setAttribute("class","editField");
	for(var i=0;i<unit.length;i++){
		
		var title=unit[i].getElementsByTagName("title")[0].firstChild.data;
		var description=unit[i].getElementsByTagName("description")[0].firstChild.data;
		var unitId=unit[i].getElementsByTagName("uniquekey")[0].firstChild.data;
		
		var fieldsetUnit=document.createElement("fieldset")
		fieldsetUnit.setAttribute("class","editField");
		article.appendChild(fieldsetUnit);
		var legend=document.createElement("legend")
		legend.innerHTML=title;
		fieldsetUnit.appendChild(legend);

		ajaxGetData("GET", "querySubject.do?unit=" + unitId, null, function () {
			var xmlDoc = arguments[0];

			var subject=xmlDoc.getElementsByTagName("subject");
			for(var i=0;i<subject.length;i++){
				var subjectId = subject[i].getElementsByTagName("uniquekey")[0].firstChild.data;
				var title=subject[i].getElementsByTagName("title")[0].firstChild.data;

				var fieldsetSubject=document.createElement("fieldset");
				fieldsetSubject.setAttribute("class","subject");
				var legend=document.createElement("legend")
				legend.innerHTML=title;
				fieldsetSubject.appendChild(legend)
				//fieldsetUnit.appendChild(fieldsetSubject);//1




				ajaxGetData("GET", "queryentry.do?subject=" + subjectId, null, function () {
					var xmlEntry = arguments[0];

					var subjectArticle = buildSubject(xmlEntry);// build subject and entrys under it  ????
					fieldsetSubject.appendChild(subjectArticle)
					fieldsetUnit.appendChild(fieldsetSubject);//2


				});


			}



			//buildSubject(unit);
		});
		
		
		
	}
	body.appendChild(article);//use article elements only change once
}


function buildUnit(xmlDoc){
	var subject=xmlDoc.getElementsByTagName("subject");
	var title=subject[i].getElementsByTagName("title")[0].firstChild.data;
	var description=subject[i].getElementsByTagName("description")[0].firstChild.data;
	var subjectId=subject[i].getElementsByTagName("uniquekey")[0].firstChild.data;

	for(var i=0;i<subjectId.length;i++){



		var fieldset=document.createElement("fieldset");// zanshi
		var legend=document.createElement("legend")
		legend.innerHTML=title;
		fieldset.appendChild(legend);

		var div=document.createElement("div")
		div.setAttribute("class","subject");
		fieldset.appendChild(div)





	}





}


function buildSubject(subjectXml){




	var article=document.createElement("article")

	var div=document.createElement("div")
	div.setAttribute("class","subject");
	article.appendChild(div);
	var nav=document.createElement("nav")
	div.appendChild(nav);

	var ul=document.createElement("ul")
	nav.appendChild(ul);


	var entryArray=subjectXml.getElementsByTagName("entry");

	for(var i=0;i<entryArray.length;i++){
		var li=document.createElement("li")
		ul.appendChild(li)
		var entryArticle=document.createElement("article")
		li.appendChild(entryArticle)

		//entryArray[i]
		var webPage=entryArray[i].childNodes;
		for (var i=0;i<webPage.length;i++)
		{
			var title=webPage[i].getElementsByTagName("title")[0].firstChild.data;
			var keywords=webPage[i].getElementsByTagName("keywords")[0].firstChild.data;
			var description=webPage[i].getElementsByTagName("description")[0].firstChild.data;
			var URI=webPage[i].getElementsByTagName("URI")[0].firstChild.data;
			var URL=webPage[i].getElementsByTagName("URL")[0].firstChild.data;
			var URN=webPage[i].getElementsByTagName("URN")[0].firstChild.data;
			var createTime=webPage[i].getElementsByTagName("createTime")[0].firstChild.data;
			var editTime=webPage[i].getElementsByTagName("editTime")[0].firstChild.data;

			//var li=document.createElement("li")
			//li.setAttribute("style","list-style:none;");
			//ul.appendChild(li);


			var article=document.createElement("article");
			//article.setAttribute("onmouseover","this.lastChild.removeAttribute('hidden')");
			//article.setAttribute("onmouseout","this.lastChild.setAttribute('hidden',true)");
			//li.appendChild(article);


			if(i>0) entryArticle.innerHTML="&nbsp;•&nbsp;";
			var aNode=document.createElement("a");
			aNode.href = URL;
			aNode.innerHTML = title;
			var h3=document.createElement("h5");
			h3.appendChild(aNode);
			article.appendChild(h3);

			var modify=document.createElement("a");
			modify.setAttribute("href","#")
			modify.setAttribute("title","修改")
			//modify.innerHTML='修改';
			article.appendChild(modify);


			var delete_a=document.createElement("a");
			delete_a.setAttribute("href","#")
			delete_a.setAttribute("title","删除")
			//modify.innerHTML='删除';
			article.appendChild(delete_a);
			entryArticle.appendChild(article)

		}







	}
	
	
	
}
















