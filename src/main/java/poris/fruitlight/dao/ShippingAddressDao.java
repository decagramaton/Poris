package poris.fruitlight.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.AddressBook;
import poris.fruitlight.dto.Shopper;

@Mapper
public interface ShippingAddressDao {
	public List<AddressBook> selectShippingAddressListById(Shopper shopper);
	public void insertShippingAddress(AddressBook addressBook);
}
