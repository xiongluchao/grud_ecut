package com.grud.ecut.service;

import java.util.List;

import com.grud.ecut.dto.CommentDto;
import com.grud.ecut.dto.Json;
import com.grud.ecut.dto.MovieDto;
import com.grud.ecut.entity.MovieComment;

public interface CommentServiceI {

	public List<MovieComment> getComment(MovieDto dto);

	public void add(CommentDto dto);

	public List<MovieComment> getComments(String currentPage,int rows);

	public int getCount(int rows);

	public Json delete(int id);
}
