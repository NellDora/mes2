package com.mes2.materials.service;

import java.util.List;

import com.mes2.materials.domain.OutDTO;
import com.mes2.materials.domain.StockDTO;

public interface OutService {

	// 출고 목록 조회
	public List<OutDTO> getOutList() throws Exception;
	
	// 출고 상세 조회(출고코드 O)
	public OutDTO getOutDetail(String out_code) throws Exception;
	
	// 출고 상세 조회(출고코드 X)
	public OutDTO getOutInfo(String out_index) throws Exception;
 	
	// 출고 품목 재고 조회
	public List<StockDTO> getStockList(String product_code) throws Exception;
	
	// 출고 품목 재고 등록
	public List registProduct(List<StockDTO> stockDTO) throws Exception;
}
