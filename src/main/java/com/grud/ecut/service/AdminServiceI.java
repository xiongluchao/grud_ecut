package com.grud.ecut.service;


import com.grud.ecut.dto.AdminDto;
import com.grud.ecut.dto.Json;
import com.grud.ecut.dto.UserDto;

public interface AdminServiceI {

		public AdminDto login(String username,String password);
		public String modifyAdmin(int id,String username,String password);

}
