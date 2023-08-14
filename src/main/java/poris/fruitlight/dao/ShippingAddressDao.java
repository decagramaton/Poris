package poris.fruitlight.dao;

import org.apache.ibatis.annotations.Mapper;

import poris.fruitlight.dto.AddressBook;

@Mapper
public interface ShippingAddressDao {
	public void insertShippingAddress(AddressBook addressBook);
}
