package poris.fruitlight.dto;

import lombok.Data;

@Data
public class deliveryPreferencesParam {
	private String requiredCheckType;
	private String requiredMessage;
	private String passwordCheckType;
	private String passwordMessage;
}
