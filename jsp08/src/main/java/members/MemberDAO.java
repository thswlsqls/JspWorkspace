package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "SYSTEM", pwd="1234";
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MemberDTO> memberViews() {
		String sql = "select * from members";
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public MemberDTO chkUser(String id, String pwd) {
		String sql = "select * from members where id = ?";
		MemberDTO dto = null;
		try {
			con = DriverManager.getConnection(url,this.id,this.pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	public MemberDTO info(String id) {
		String sql = "select * from members where id = ?";
		MemberDTO dto = null;
		try {
			con = DriverManager.getConnection(url,this.id,this.pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	public void save(MemberDTO dto) {
		String sql = 
		"insert into members(id,pwd,name,addr,tel) values(?,?,?,?,?)";
		try {
			con = DriverManager.getConnection(url,this.id,this.pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getAddr());
			ps.setString(5, dto.getTel());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int delete(String id) {
		String sql = "delete from members where id='"+id+"'";
		int result = 0;
		try {
			con = DriverManager.getConnection(url,this.id, this.pwd);
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int modify(MemberDTO dto) {
		int result = 0;
		String sql = "update members set name=?,addr=?,tel=? where id=?";
		try {
			con = DriverManager.getConnection(url, this.id, this.pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getAddr());
			ps.setString(3, dto.getTel());
			ps.setString(4, dto.getId());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}









