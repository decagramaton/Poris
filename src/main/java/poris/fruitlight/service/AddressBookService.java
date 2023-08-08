package poris.fruitlight.service;

import java.util.List;

import poris.fruitlight.dto.AddressBookParam;

public interface AddressBookService {
	public List<AddressBookParam> getAddressBookList();
	public boolean changeAddressBook(AddressBookParam ChangeAddressBook);
}
