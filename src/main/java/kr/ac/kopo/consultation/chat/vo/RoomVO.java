package kr.ac.kopo.consultation.chat.vo;

public class RoomVO {
	int roomNumber; // 방인원
	String roomMaster; // 해당 PB name
	String enterDate; // 입장한 시간
	String endDate; // 상담 종료 시간
	
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getRoomMaster() {
		return roomMaster;
	}
	public void setRoomMaster(String roomMaster) {
		this.roomMaster = roomMaster;
	}
	
	@Override
	public String toString() {
		return "Room [roomNumber=" + roomNumber + ", roomMaster=" + roomMaster + "]";
	}	
}