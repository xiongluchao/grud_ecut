package com.grud.ecut.service;

import java.util.List;

import com.grud.ecut.dto.SlideDto;

public interface SlideServiceI {

	public List<SlideDto> getSlide();
	public void addSlide(String name ,String path);
	public void modifySlide(String name, int id);
	public String deleteSlide(int id);
}
