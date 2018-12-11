package com.bit.gamecenter.vo;

public class RankVO {
	private int seq;
	private int score;
	private String gamename;
	private String regdate;
	private String id;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getGamename() {
		return gamename;
	}
	public void setGamename(String gamename) {
		this.gamename = gamename;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "RankVO [seq=" + seq + ", score=" + score + ", gamename=" + gamename + ", regdate=" + regdate + ", id="
				+ id + "]";
	}
	
	
}
