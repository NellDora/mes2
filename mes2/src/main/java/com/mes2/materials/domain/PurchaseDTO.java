package com.mes2.materials.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class PurchaseDTO {

	private String orders_code; // 발주코드
	private String product_code; // 품목코드 **
	private String meterial_code; // 원자재 **

	private String name; // 품목명 **
	private String category; // 자재유형 '원재료' , '부자재' **
	private double cost; // 원가 **

	private int quantity; // 발주수량
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date regdate; // 발주 등록일자
	
	private String user_id; // 담당자
	
	private String status; // 진행상황 대기: waiting /완료: complete
}
