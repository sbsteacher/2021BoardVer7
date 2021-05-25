function regCmt() {
	var cmtFrmElem = document.querySelector('#cmtFrm');
	var cmtVal = cmtFrmElem.cmt.value;
	
	var param = {
		iboard: cmtFrmElem.dataset.iboard,
		cmt: cmtVal
	};
	
	regAjax(param);
}

//서버에게 등록해줘~~~
function regAjax(param) {
	
}