package com.loginpage.service;

import com.loginpage.model.LoginPage;

public interface ILoginPageService {

	public boolean getAddUser(LoginPage object);

	public boolean checkValidation(LoginPage object);
}
