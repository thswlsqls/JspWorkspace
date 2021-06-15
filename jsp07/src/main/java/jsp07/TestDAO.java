package jsp07;

import java.util.ArrayList;

public class TestDAO {
	public int userChk(String id, String pwd) {
		String saveId ="1", savePwd = "1";
		if(id.equals(saveId) && pwd.equals(savePwd)) {
			return 0;
		}else {
			return 1;
		}
	}
	public TestDTO getUser(String id) {
		//String sql = "select * from members where id=id"
		TestDTO dto = new TestDTO();
		dto.setName("db에서 가져온 이름");
		dto.setAddr("db에서 가져온 주소");
		return dto;
	}
	public ArrayList<TestDTO> getMembers(){
		//String sql = "select * from members"
		ArrayList<TestDTO> list = new ArrayList<TestDTO>();
		for(int i=1 ; i<=3 ; i++) {
			TestDTO dto = new TestDTO();
			dto.setName("홍길동 0"+i); dto.setAddr("산골짜기 0"+i);
			list.add(dto);
		}
		return list;
	}
}





