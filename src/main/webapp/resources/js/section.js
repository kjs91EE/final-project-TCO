/**
 * 
 */
function fn_seChgJs(e){
	const cmncdNm2 = document.querySelector("#cmncdNm2");
	
	const fashion = ["전체","의류","신발","가방/지갑","언더웨어/잠옷","시계","주얼리","패션잡화/소품"];
	const gagu = ["전체","소파","침대/매트리스","드레스룸/행거","거실장/테이블","책상/책장","의자","식탁/주방가구","선반/수납가구","아동가구","조명/스탠드"];
	const beauty = ["전체","스킨케어","헤어케어","바디케어","향수","클렌징","뷰티소품","베이스메이크업","색조메이크업","마스크/팩","네일케어","선케어","남성화장품","비건"];
	const food = ["전체","건강식품","농산물","축산","수산물","반찬","김치","라면/면류","가공식품","음료","유가공품","냉동/간편조리","다이어트식품"];
	const baby = ["전체","분유","기저귀 ","물티슈 ","이유식/유아간식","이유식용품","수유용품","유모차/왜건","카시트","아기띠/외출용품","목욕/스킨케어","위생/건강/세제","매트/안전용품","유아가구"];
	const animal =["전체","강아지용품","고양이용품","기타반려동물용품","조류용품","햄스터용품","토끼용품","고슴도치용품","관상어용품"];
	const kitchen =["전체","주방용품" ,"생활용품" ,"욕실용품" ,"수납/정리용품","청소용품","구강위생용품","보안용품","세탁용품"];
	const electric =["전체","TV","청소기","냉장고","계절가전","세탁기/건조기","주방가전","이미용가전","욕실가전","영상가전","생활가전","펫가전"];
	const digital=["전체","태블릿PC","음향기기","스마트워치","게이밍","휴대폰","카메라","1인방송/촬영"];
	const computer=["전체","노트북","데스크탑","모니터","복합기/프린터","키보드/마우스","주변기기","저장장치","소프트웨어","부품"];
	const sports =["전체","캠핑","등산/아웃도어","골프","자전거","홈트레이닝","낚시","퍼스널모빌리티","배드민턴","테니스","족구","볼링","축구"];
	const health=["전체","건강관리용품","마스크","손소독제","안마용품","건강측정용품","의료용품","발건강용품","재활운동용품","족욕/좌훈용품","실버용품","냉온/찜질용품","눈건강용품"];
	const car=["전체","타이어/휠","공구","자동차용품","자동차기기","겨울용품"];
	const hobby=["전체","원예용품/식물","수집품","문구/사무용품","화방용품"];
	const book=["전체","소설","시/에세이","경제/경영","자기계발","인문","역사","사회/정치","자연/과학","예술/대중문화","종교","유아","어린이","청소년"];
	
	if(e.value == "패션"){
		aee = fashion;
	}else if(e.value == "가구/인테리어"){
		aee = gagu;      
	}else if(e.value == "화장품/미용"){
		aee = beauty;    
	}else if(e.value == "식품"){
		aee = food;      
	}else if(e.value =="출산/유아동"){
		aee = baby;      
	}else if(e.value == "반려동물용품"){
		aee = animal;    
	}else if(e.value == "생활/주방용품"){
		aee = kitchen;   
	}else if(e.value == "가전"){
		aee = electric;  
	}else if(e.value == "디지털"){
		aee = digital;   
	}else if(e.value == "컴퓨터"){
		aee = computer;
	}else if(e.value == "스포츠/레저"){
		aee = sports;     
	}else if(e.value == "건강/의료용품" ){
		aee = health;     
	}else if(e.value == "자동차/공구"){
		aee = car;        
	}else if(e.value == "취미/문구/악기"){
		aee = hobby;      
	}else if(e.value == "도서"){
		aee = book;
	}
	cmncdNm2.options.length = 0;
	
	for(property in aee){
		let opt = document.createElement("option");
		opt.value = aee[property];
		opt.innerHTML = aee[property];
		cmncdNm2.append(opt);
	}
	
}
function fn_seChgJs1(e){
	const cmncdNm21 = document.querySelector("#cmncdNm21");
	
	const fashion = ["전체","의류","신발","가방/지갑","언더웨어/잠옷","시계","주얼리","패션잡화/소품"];
	const gagu = ["전체","소파","침대/매트리스","드레스룸/행거","거실장/테이블","책상/책장","의자","식탁/주방가구","선반/수납가구","아동가구","조명/스탠드"];
	const beauty = ["전체","스킨케어","헤어케어","바디케어","향수","클렌징","뷰티소품","베이스메이크업","색조메이크업","마스크/팩","네일케어","선케어","남성화장품","비건"];
	const food = ["전체","건강식품","농산물","축산","수산물","반찬","김치","라면/면류","가공식품","음료","유가공품","냉동/간편조리","다이어트식품"];
	const baby = ["전체","분유","기저귀 ","물티슈 ","이유식/유아간식","이유식용품","수유용품","유모차/왜건","카시트","아기띠/외출용품","목욕/스킨케어","위생/건강/세제","매트/안전용품","유아가구"];
	const animal =["전체","강아지용품","고양이용품","기타반려동물용품","조류용품","햄스터용품","토끼용품","고슴도치용품","관상어용품"];
	const kitchen =["전체","주방용품" ,"생활용품" ,"욕실용품" ,"수납/정리용품","청소용품","구강위생용품","보안용품","세탁용품"];
	const electric =["전체","TV","청소기","냉장고","계절가전","세탁기/건조기","주방가전","이미용가전","욕실가전","영상가전","생활가전","펫가전"];
	const digital=["전체","태블릿PC","음향기기","스마트워치","게이밍","휴대폰","카메라","1인방송/촬영"];
	const computer=["전체","노트북","데스크탑","모니터","복합기/프린터","키보드/마우스","주변기기","저장장치","소프트웨어","부품"];
	const sports =["전체","캠핑","등산/아웃도어","골프","자전거","홈트레이닝","낚시","퍼스널모빌리티","배드민턴","테니스","족구","볼링","축구"];
	const health=["전체","건강관리용품","마스크","손소독제","안마용품","건강측정용품","의료용품","발건강용품","재활운동용품","족욕/좌훈용품","실버용품","냉온/찜질용품","눈건강용품"];
	const car=["전체","타이어/휠","공구","자동차용품","자동차기기","겨울용품"];
	const hobby=["전체","원예용품/식물","수집품","문구/사무용품","화방용품"];
	const book=["전체","소설","시/에세이","경제/경영","자기계발","인문","역사","사회/정치","자연/과학","예술/대중문화","종교","유아","어린이","청소년"];
	
	if(e.value == "패션"){
		aee = fashion;
	}else if(e.value == "가구/인테리어"){
		aee = gagu;      
	}else if(e.value == "화장품/미용"){
		aee = beauty;    
	}else if(e.value == "식품"){
		aee = food;      
	}else if(e.value =="출산/유아동"){
		aee = baby;      
	}else if(e.value == "반려동물용품"){
		aee = animal;    
	}else if(e.value == "생활/주방용품"){
		aee = kitchen;   
	}else if(e.value == "가전"){
		aee = electric;  
	}else if(e.value == "디지털"){
		aee = digital;   
	}else if(e.value == "컴퓨터"){
		aee = computer;
	}else if(e.value == "스포츠/레저"){
		aee = sports;     
	}else if(e.value == "건강/의료용품" ){
		aee = health;     
	}else if(e.value == "자동차/공구"){
		aee = car;        
	}else if(e.value == "취미/문구/악기"){
		aee = hobby;      
	}else if(e.value == "도서"){
		aee = book;
	}
	cmncdNm21.options.length = 0;
	
	for(property in aee){
		let opt = document.createElement("option");
		opt.value = aee[property];
		opt.innerHTML = aee[property];
		cmncdNm21.append(opt);
	}
	
}