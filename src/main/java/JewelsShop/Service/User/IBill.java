package JewelsShop.Service.User;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import JewelsShop.Dto.CartDto;
import JewelsShop.Entity.Bill;

@Service
public interface IBill {
	public int AddBill(Bill bill);

	public void AddBillDetail(HashMap<Long, CartDto> carts);
	
	public List<Bill> GetAllBill();
}
