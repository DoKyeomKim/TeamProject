package com.prj.reviewboard.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.domain.ComuVo;
import com.prj.reviewboard.domain.ReviewBoardVo;



@Mapper
public interface ReviewBoardMapper {

	

	List<ReviewBoardVo> getReviewList(ReviewBoardVo reviewBoardVo);

	List<ComuVo> getComuList(ComuVo comuVo);

	void insertReview(ReviewBoardVo reviewBoardVo);




}
