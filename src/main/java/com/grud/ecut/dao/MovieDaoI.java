package com.grud.ecut.dao;

import java.util.List;

import com.grud.ecut.entity.movie;

public interface MovieDaoI extends BaseDaoI<movie> {

	List<movie> find(String hql, List<Integer> ids, int page, int rows);

}
