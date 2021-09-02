package kr.ac.kopo.consultation.chat.vo;

public class RoomVO {
	int roomNumber; // 방인원
	String roomName; // 방이름 (대기중인 고객명)
	String enterDate; // 입장한 시간
	String endDate; // 상담 종료 시간
	
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	
	@Override
	public String toString() {
		return "Room [roomNumber=" + roomNumber + ", roomName=" + roomName + "]";
	}	
}