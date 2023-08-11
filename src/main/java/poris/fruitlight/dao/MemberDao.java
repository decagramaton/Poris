package poris.fruitlight.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import poris.fruitlight.dto.ShopperCondition;

/**
 * 회원 정보와 관련된 Data Access Object입니다.
 * @author 고재승
 *
 */
@Mapper
public interface MemberDao {
	public List<ShopperCondition> SelectAllMember();
}
