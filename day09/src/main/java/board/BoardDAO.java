package board;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "system", pwd = "1234";
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<BoardDTO> list(){
		//String sql = "select * from test_board";
		String sql = "select * from test_board order by idgroup desc, step asc";
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNumber(rs.getInt("id"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				
				dto.setTitle(rs.getString("title"));
				dto.setName(rs.getString("name"));
				dto.setContent(rs.getString("content"));
				
				dto.setSavedate(rs.getTimestamp("savedate"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public void write_save(BoardDTO dto) {
		String sql = 
			"insert into test_board(id,name,title,content,idgroup,step,indent)"+
					"values(test_board_seq.nextval,?,?,?,test_board_seq.currval,0,0)";
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	private void upHit(String id) {
		String sql = "update test_board set hit=hit+1 where id="+id;
		try {
			con = DriverManager.getConnection(url, this.id, this.pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public BoardDTO contentView(String id) {
		upHit(id);
		BoardDTO dto = null;
		String sql = "select * from test_board where id="+id;
		try {
			con = DriverManager.getConnection(url,this.id, this.pwd);
			ps = con.prepareStatement(sql);
			rs= ps.executeQuery();
			if(rs.next()) {
				dto = new BoardDTO();
				
				dto.setNumber(rs.getInt("id"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				dto.setTitle(rs.getString("title"));
				dto.setName(rs.getString("name"));
				dto.setContent(rs.getString("content"));
				dto.setSavedate(rs.getTimestamp("savedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	public void modify(BoardDTO dto) {
		String sql="update test_board set name=?, title=?, content=? where id=?";
		try {
			con = DriverManager.getConnection(url,id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			ps.setInt(4, dto.getNumber());
		
			ps.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void delete(String number) {
		String sql = "delete from test_board where id="+number;
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public BoardDTO reply_view(String number) {
		String sql = "select * from test_board where id="+number;
		BoardDTO dto = null;
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new BoardDTO();
				dto.setNumber(rs.getInt("id"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				dto.setTitle(rs.getString("title"));
				dto.setName(rs.getString("name"));
				dto.setContent(rs.getString("content"));
				dto.setSavedate(rs.getTimestamp("savedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	private void replyShape(BoardDTO dto) {
		
		System.out.println("step : "+dto.getStep());
		
		String sql = "update test_board set step=step+1 where idgroup=? and step > ?";
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, dto.getIdgroup());
			ps.setInt(2, dto.getStep());
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void reply(BoardDTO dto) {
		replyShape(dto);
		String sql = 
				"insert into test_board(id,name,title,content,idgroup,step,indent)"+
						"values(test_board_seq.nextval,?,?,?,?,?,?)";
		try {
			con = DriverManager.getConnection(url,id,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName() );
			ps.setString(2, dto.getTitle() );
			ps.setString(3, dto.getContent() );
			
			ps.setInt(4, dto.getIdgroup() );
			ps.setInt(5, dto.getStep()+1 );
			ps.setInt(6, dto.getIndent()+1 );
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
















