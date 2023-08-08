package poris.fruitlight.dto;

import lombok.Data;

@Data
public class AddressBookParam {
	private String recipientName;
	private String streetAddress;
	private String recipientTel;
	private String recipientSummary;
}
