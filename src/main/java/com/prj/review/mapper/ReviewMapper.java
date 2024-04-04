package com.prj.review.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.review.domain.ReviewVo;

@Mapper
public interface ReviewMapper {

	List<ReviewVo> getReviewList();

}
