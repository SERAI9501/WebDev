package com.sist.vo;
import java.util.*;
import lombok.Data;

/*
CNO     NOT NULL NUMBER       
GNO              NUMBER       
ID               VARCHAR2(20) 
ACCOUNT          NUMBER       
PRICE            NUMBER       
ISBUY            CHAR(1)      
REGDATE          DATE         

 */
@Data
public class CartVO {
  private int cno,gno,account,price;
  private String id;
  private Date regdate;
  private GoodsVO gvo=new GoodsVO();
  private MemberVO mvo=new MemberVO();
}
