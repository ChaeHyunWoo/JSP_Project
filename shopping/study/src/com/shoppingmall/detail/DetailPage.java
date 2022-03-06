package com.shoppingmall.detail;

public class DetailPage {
	
	//전체페이지
		public int getPageCount(int numPerPage, int dataCount) {
			
			int pageCount = 0;
			
			pageCount = dataCount / numPerPage;
			
			if(dataCount % numPerPage != 0) {
				
				pageCount++;
			}
			
			return pageCount;
		
		}
		
		//페이지 처리 메소드
		public String pageIndexList(int currentPage, int totalPage, String listUrl, String sort) {
		
		int numPerBlock = 5; //◀이전 6 7 8 9 10 다음▶
		int currentPageSetup;
		int page;
		
		StringBuffer sb = new StringBuffer();
		
		if(currentPage==0 || totalPage==0) {
			return "";
		}
		
		//list.jsp?pageNum=2
		//list.jsp?searchKey=subject&searchValue=aa&pageNum=2
		if(listUrl.indexOf("?")!=-1) {
			listUrl = listUrl + "&";
		} else {
			listUrl = listUrl + "?";
		}
		
		// 1 2 3 4 5 다음▶		
		//◀이전 6 7 8 9 10 다음▶
		//◀이전 11 12 13 14 15 다음▶
		currentPageSetup = (currentPage/numPerBlock)*numPerBlock;
		
		if(currentPage % numPerBlock == 0) {
			currentPageSetup = currentPageSetup - numPerBlock;
		}
		
		//◀이전
		if(totalPage > numPerBlock && currentPageSetup > 0) {
			
			sb.append("<a href=\"" + listUrl + "pageNum="
					+ currentPageSetup + "\">◀이전</a>&nbsp;");
			
			//<a href="list.jsp?pageNum=2>◀이전</a>
		}
		
		//바로가기페이지(6 7 8 9 10)
		page = currentPageSetup + 1;
		
		while(page <= totalPage && page <= (currentPageSetup + numPerBlock)) {
			
			if(page == currentPage){
				/*sb.append("<font color=\"Fuchsia\">" + page + "</font>&nbsp;");*/
				//<font color="Fuchsia">9</font>&nbsp;
				sb.append("<span>" + page + "</span>");
				
			} else {
				/*sb.append("<a href=\"" + listUrl + "pageNum=" + page + 
						"\">" + page + "</a>&nbsp;");*/
				//<a href="list.jsp?pageNum=7">7</a>&nbsp;
				
				sb.append("<a href=\"" + listUrl + "pageNum=" + page + 
						"&sort=" + sort + "\">" + "<span>" + page + "</span>" + "</a>");
			}
			page++;
		}
		
		//다음▶
		//◀이전 6 7 8 9 10 다음▶
		//◀이전 11 12
		if(totalPage - currentPageSetup > numPerBlock) {
			
			sb.append("<a href=\"" + listUrl + "pageNum=" + 
					page + "\">다음▶</a>&nbsp;");
			//<a href="list.jsp?pageNum=11">다음▶</a>&nbsp;
			
		}
		
		return sb.toString();
		}
		

}
