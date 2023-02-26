package com.grud.ecut.dao.impl;

import org.springframework.stereotype.Repository;

import com.grud.ecut.dao.CommentDaoI;
import com.grud.ecut.entity.MovieComment;

@Repository
public class CommentDaoImpl extends BaseDaoImpl<MovieComment> implements CommentDaoI{

}
