package com.prj.reviewboard.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.reviewboard.domain.ReviewBoardVo;



@Mapper
public interface ReviewBoardMapper {

	List<ReviewBoardVo> getReviewList();

	List<ReviewBoardVo> getReviewList(ReviewBoardVo reviewBoardVo);

}
