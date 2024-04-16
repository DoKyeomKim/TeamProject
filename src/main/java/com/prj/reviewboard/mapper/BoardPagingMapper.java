package com.prj.reviewboard.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.domain.ComuVo;
import com.prj.reviewboard.domain.FreeBoardVo;
import com.prj.reviewboard.domain.FreePagingVo;
import com.prj.reviewboard.domain.ReviewBoardVo;
import com.prj.reviewboard.domain.ReviewPagingVo;
import com.prj.reviewboard.domain.ServiceVo;

@Mapper
public interface BoardPagingMapper {

	/*
	 * List<ReviewBoardVo> getReviewList(ReviewBoardVo reviewBoardVo);
	 * 
	 * List<ComuVo> getComuList(ComuVo comuVo);
	 * 
	 * void insertReview(ReviewBoardVo reviewBoardVo);
	 * 
	 * List<FreeBoardVo> getFreeList(FreeBoardVo freeBoardVo);
	 * 
	 * void insertFree(FreeBoardVo freeBoardVo);
	 * 
	 * FreeBoardVo getFree(FreeBoardVo freeBoardVo);
	 * 
	 * void updateFree(FreeBoardVo freeBoardVo);
	 * 
	 * FreeBoardVo getFree();
	 * 
	 * void updateReview(ReviewBoardVo reviewBoardVo);
	 * 
	 * void deleteReview(ReviewBoardVo reviewBoardVo);
	 * 
	 * void deleteFree(FreeBoardVo freeBoardVo);
	 * 
	 * List<ServiceVo> getServiceList(ServiceVo serviceVo);
	 * 
	 * ServiceVo getServiceView(ServiceVo serviceVo);
	 */
	
	//------------------------------------------------------------
	//------------------------------------------------------------
	//------------------------------------------------------------	
	
	int rcount(ReviewPagingVo reviewPagingVo);

	List<ReviewPagingVo> getReviewPagingList(
			int rno, String name, int star, int offset, int pageSize);

	void insertReview(ReviewPagingVo reviewPagingVo);

	ReviewPagingVo getReview(ReviewPagingVo reviewPagingVo);

	void updateReview(ReviewPagingVo reviewPagingdVo);

	void deleteReview(ReviewPagingVo reviewPagingVo);

	//------------------------------------------------------------

	int fcount(FreePagingVo freePagingVo);

	List<FreePagingVo> getFreePagingList(
			int fno, String title, String name, int offset, int pageSize);

	void insertFree(FreePagingVo freePagingVo);

	FreePagingVo getFree(FreePagingVo freePagingVo);

	void updateFree(FreePagingVo freePagingVo);

	void deleteFree(FreePagingVo freePagingVo);
	
}
