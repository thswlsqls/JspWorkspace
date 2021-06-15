package testBoard;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.jsp.PageContext;

import PageCount.*;

public class TestDAO {
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "java1", pwd="1234";
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public TestDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<TestDTO> list(int start, int end){
		ArrayList<TestDTO> arr = new ArrayList<TestDTO>();
		//String sql = "select * from paging";
		//String sql = "select * from paging order by num desc";//asc
		
		String sql = "select B.* from(select rownum rn, A.* from"+
				"(select * from paging order by num desc)A)B where rn between ? and ?";
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				TestDTO dto = new TestDTO();
				dto.setNum(rs.getInt("num"));
				dto.setCount(rs.getInt("count"));
				dto.setPdate(rs.getString("pdate"));
				dto.setTitle(rs.getString("title"));
				arr.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}
	public void insert(TestDTO dto) {
		String sql = "insert into paging(num,title,pdate,count)"+
					" values(test_num.nextval, ?, sysdate, 0)";
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
			ps.executeUpdate();
			
		} catch (Exception e) { e.printStackTrace(); }
	}
	public void count(String num) {
		String sql = "update paging set count=count+1 where num="+num;
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int getTotalPage() {
		String sql = "select count(*) from paging";
		int totalPage = 0;
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				totalPage = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totalPage;
	}
	
	public PageCount pagingNum(int start) {
		if(start == 0) {
			start = 1;
		}
		PageCount pc = new PageCount();
		int pageNum = 3;
		int totalPage = getTotalPage();
		int totEndPage = totalPage / pageNum + (totalPage%pageNum == 0?0:1);
		/*
		if(totalPage%pageNum == 0) {
			totEndPage += 0;
		}else {
			totEndPage += 1;
		}
		*/
		//start = 1, 1~3 , start=2 4~6, start=3 7~9
		int startPage = (start - 1) * pageNum + 1;
		int endPage = pageNum * start;
		pc.setEndPage(endPage);
		pc.setStartPage(startPage);
		pc.setTotalEndPage(totEndPage);
		return pc;
	}
	public ArrayList<TestDTO> search(String search, String choice){
		String sql01 = "select * from paging where ";
		String sql02 = " like '%'||?||'%' order by num desc";
		String c = null;
		if(choice.equals("1")) {
			c = "title";
		}else {
			c = "num";
		}
		String sql = sql01 + c + sql02;
		ArrayList<TestDTO> list = new ArrayList<TestDTO>();
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, search);
			rs = ps.executeQuery();
			while(rs.next()) {
				TestDTO dto = new TestDTO();
				dto.setCount(rs.getInt("count"));
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setPdate(rs.getString("pdate"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}














