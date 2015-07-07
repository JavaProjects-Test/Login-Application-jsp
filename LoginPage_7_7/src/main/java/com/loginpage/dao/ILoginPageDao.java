package com.loginpage.dao;

import com.loginpage.model.LoginPage;

public interface ILoginPageDao {

	public boolean getAddUser(LoginPage object);

	public boolean checkValidation(LoginPage object);
}
