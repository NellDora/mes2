package com.mes2.platform.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class mdbDTO {
	private String company_code; // 거래처 코드
	private String category; // 발주처, 수주처
	private String pw; // 플랫폼 비밀번호
	private String name; // 회사명
	private String manager; // 대표자
	private String address; // 주소
	private String call; // 전화번호
	private String fax; // 팩스번호
	private String email; // 이메일
	private int contract_status; // 거래유무
}
