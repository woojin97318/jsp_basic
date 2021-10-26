package com.care.root.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.care.root.board.dto.BoardDTO;

public class BoardDAO {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe",
					"wujin", "wujin");
			System.out.println("드라이브 로드 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDTO> getBoardList() {
		System.out.println("getBoardList() 호출");
		String sql = "select * from jsp_board";
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				BoardDTO Bdto = new BoardDTO();
				Bdto.setTitle(rs.getString("title"));
				Bdto.setContent(rs.getString("content"));
				Bdto.setId(rs.getString("id"));
				list.add(Bdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public BoardDTO getBoardContent(String title) {
		String sql = "select * from jsp_board where title = '" + title + "'";
		BoardDTO Bdto = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				Bdto = new BoardDTO();
				Bdto.setTitle(rs.getString("title"));
				Bdto.setContent(rs.getString("content"));
				Bdto.setId(rs.getString("id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Bdto;
	}
	
	public int boardDelete(String title) {
		String sql = "delete from jsp_board where title = ?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, title);
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int boardModify(String preTitle, String title, String content, String id) {
		String sql = "update jsp_board set title = ?, content = ? where title=? and id = ?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, content);
			ps.setString(3, preTitle);
			ps.setString(4, id);
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int boardWrite_save(BoardDTO Bdto) {
		String sql = "insert into jsp_board(title, content, id) values(?, ?, ?)";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, Bdto.getTitle());
			ps.setString(2, Bdto.getContent());
			ps.setString(3, Bdto.getId());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
