package com.prj.reviewboard.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.domain.ComuVo;
import com.prj.reviewboard.domain.FreeBoardVo;
import com.prj.reviewboard.domain.ReviewBoardVo;
import com.prj.reviewboard.domain.ServiceVo;

@Mapper
public interface ReviewBoardMapper {

	List<ReviewBoardVo> getReviewList(ReviewBoardVo reviewBoardVo);

	List<ComuVo> getComuList(ComuVo comuVo);

	void insertReview(ReviewBoardVo reviewBoardVo);

	List<FreeBoardVo> getFreeList(FreeBoardVo freeBoardVo);

	void insertFree(FreeBoardVo freeBoardVo);

	ReviewBoardVo getReview(ReviewBoardVo reviewBoardVo);

	FreeBoardVo getFree(FreeBoardVo freeBoardVo);

	void updateFree(FreeBoardVo freeBoardVo);

	FreeBoardVo getFree();

	void updateReview(ReviewBoardVo reviewBoardVo);

	void deleteReview(ReviewBoardVo reviewBoardVo);

	void deleteFree(FreeBoardVo freeBoardVo);

	List<ServiceVo> getServiceList(ServiceVo serviceVo);

	ServiceVo getServiceView(ServiceVo serviceVo);


}
