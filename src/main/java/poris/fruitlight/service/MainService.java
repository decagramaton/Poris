package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.ProductList;

public interface MainService {
   public List<ProductList> getMainList();
   public List<ProductList> getTodayList();
   public List<ProductList> getSellerList();
   public List<ProductList> getCateMainList();
   public List<ProductList> getCateSubList();
   public List<ProductList> SelectByPno();
   public int getSelectBoardNo(int pid);
   public List<ProductList> SelectListName(String pname);
}