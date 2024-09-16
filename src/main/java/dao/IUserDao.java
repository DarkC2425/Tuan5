package dao;

import models.UserModel;

public interface IUserDao {
	UserModel findByUserName(String username);
}
