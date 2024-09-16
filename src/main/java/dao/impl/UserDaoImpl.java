package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import configs.DBConnectSQL;
import dao.IUserDao;
import models.UserModel;

public class UserDaoImpl implements IUserDao {

	@Override
	public UserModel findByUserName(String username) {
		String sql = "select * from Users where username = ?";

		try {
			Connection conn = new DBConnectSQL().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username); // truyen tham so
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				UserModel user = new UserModel();
				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setUsername(rs.getString("username"));
				user.setFullname(rs.getString("fullname"));
				user.setPassword(rs.getString("password"));
				user.setImage(rs.getString("image"));
				user.setRoleid(Integer.parseInt(rs.getString("roleid")));
				user.setPhone(rs.getString("phone"));
				user.setCreatedDate(rs.getDate("createdDate"));
				return user;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	public static void main(String[] args) {
		DBConnectSQL DB = new DBConnectSQL();
		try {
			IUserDao uIUserDao = new UserDaoImpl();
			System.out.println(uIUserDao.findByUserName("nhat"));
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
