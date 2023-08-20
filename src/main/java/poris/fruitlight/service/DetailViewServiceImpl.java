package poris.fruitlight.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import poris.fruitlight.dao.DetailViewDao;
import poris.fruitlight.dto.BoardMedia;
import poris.fruitlight.dto.Cart;
import poris.fruitlight.dto.FoodRequiredInfo;
import poris.fruitlight.dto.Pager;
import poris.fruitlight.dto.Product;
import poris.fruitlight.dto.ProductBoard;
import poris.fruitlight.dto.ProductInquiry;
import poris.fruitlight.dto.Review;

@Slf4j
@Service
public class DetailViewServiceImpl implements DetailViewService {
	@Autowired
	DetailViewDao detailViewDao;
	
	@Override
	public ProductBoard getProduct(int bno) {
		ProductBoard product = detailViewDao.selectByBno(bno);
		return product;
	}
	
	@Override
	public FoodRequiredInfo getFoodRequiredInfoByBoardNo(int boardNo) {
		return detailViewDao.SelectRequiredInfoByBoardNo(boardNo);
	}
	
	@Override
	public List<BoardMedia> getProductContentList(int boardNo) {
		return detailViewDao.SelectProductContentByBoardNo(boardNo);
	}
	
	@Override
	public int getTotalReviewStock(int boardNo) {
		return detailViewDao.SelectTotalReviewStock(boardNo);
	}
	
	@Override
	public List<Review> getReviewList(Pager pager, int boardNo) {
		pager.setBOARD_NO(boardNo);
		return detailViewDao.selectReviewList(pager);
	}
	
	@Override
	public List<Review> getSearchReviewList(Pager pager, String searchKeyword, int boardNo) {
		pager.setBOARD_NO(boardNo);
		return detailViewDao.selectSearchReviewList(pager, searchKeyword);
	}
	
	@Override
	public List<Review> getSearchBestReviewList(Pager pager, int boardNo) {
		pager.setBOARD_NO(boardNo);
		return detailViewDao.selectBestReviewList(pager);
	}
	
	
	@Override
	public List<Review> getSearchRecentReviewList(Pager pager, int boardNo) {
		pager.setBOARD_NO(boardNo);
		return detailViewDao.selectRecentReviewList(pager);
	}
	
	
	@Override
	public void addHelpPoint(String reviewNo) {
		detailViewDao.updateAddHelpPoint(reviewNo);
	}
	
	
	@Override
	public List<Product> getOptions(String name) {
		List<Product> list = detailViewDao.selectByName(name);
		return list;
	}
	@Override
	public List<ProductBoard> getImages(int bno) {
		List<ProductBoard> list = detailViewDao.selectImgsByBno(bno);
		return list;
	}
	@Override
	public int addToCart(List<Cart> cartList) {
		for(Cart cartProduct : cartList) {
			detailViewDao.updateCartStock(cartProduct);
		}
		return 0;
	}
	@Override
	public List<ProductInquiry> getProductInquiryList(Pager pager, int bno) {
		pager.setBOARD_NO(bno);
		List<ProductInquiry> list = detailViewDao.selectProductInquiryPager(pager);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); 
		for(ProductInquiry productInquiry : list) {
			String strInquiryDate = sdf.format(productInquiry.getINQUIRY_DATE());
			productInquiry.setStrInquiryDate(strInquiryDate);
			if(productInquiry.isEMPTANSWER() == false) {
				String strAnswerDate = sdf.format(productInquiry.getANSWER_DATE());
				productInquiry.setStrAnswerDate(strAnswerDate);
			}
		}
		return list;
	}
	@Override
	public int getTotalProductInquiryNum(int bno) {
		int totalProductInquiryNum = detailViewDao.count(bno);
		return totalProductInquiryNum;
	}
}
