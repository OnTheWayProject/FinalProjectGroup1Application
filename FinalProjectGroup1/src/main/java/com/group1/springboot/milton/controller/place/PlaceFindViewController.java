package com.group1.springboot.milton.controller.place;

import java.io.File;
import java.io.InputStream;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group1.springboot.milton.model.Cart;
import com.group1.springboot.milton.model.Pet;
import com.group1.springboot.milton.model.Place;
import com.group1.springboot.milton.model.ProductInfo;
import com.group1.springboot.milton.model.ProductType;
import com.group1.springboot.milton.model.RestaurantType;
import com.group1.springboot.milton.service.PlaceServiceImpl;
import com.group1.springboot.milton.service.TypeServiceImpl;
import com.group1.springboot.utils.SystemUtils;
import com.group1.springboot.validate.PlaceValidator;


@Controller
@SessionAttributes({"productList", "cart"})
public class PlaceFindViewController {

	@Autowired
	PlaceValidator placeValidator;

	@Autowired
	PlaceServiceImpl placeService;

	@Autowired
	TypeServiceImpl typeService;

	@Autowired
	ServletContext context;

	@PostMapping("/shopeCarPage")
	public String ShopeCarPage() {
		return "index";
				
	}

	// RedirectAttributes
//	@GetMapping("/insertSuccess")
//	public String insertSuccess() {
//		return "Milton/insertSuccess";
//	}

	@GetMapping("/modifyRestaurant/{placeId}")
	public String sendEditPage(@PathVariable Integer placeId, Model model) {
		ProductInfo place = placeService.findById(placeId);
		model.addAttribute("place", place);
		return "restaurant/editRestaurant";
	}

	@PostMapping("/modifyRestaurant/{placeId}")
	public String updateRestaurant(@ModelAttribute("place") Place place, BindingResult result, RedirectAttributes ra) {

		placeValidator.validate(place, result);
		if (result.hasErrors()) {
//          下列敘述可以理解Spring MVC如何處理錯誤			
//			List<ObjectError> list = result.getAllErrors();
//			for (ObjectError error : list) {
//				System.out.println("有錯誤：" + error);
//			}
			return "restaurant/editRestaurant";
		}

		Blob blob = null;
		String mimeType = "";
		String name = "";
		MultipartFile placeImage = place.getPlaceImage();
		if (placeImage != null && placeImage.getSize() > 0) {
			try {
				InputStream is = placeImage.getInputStream();
				name = placeImage.getOriginalFilename();
				blob = SystemUtils.inputStreamToBlob(is);
				mimeType = context.getMimeType(name);
				place.setPicture(blob);
				place.setMimeType(mimeType);

				String ext = SystemUtils.getExtFilename(name);
				// 將上傳的檔案移到指定的資料夾, 目前註解此功能
				try {
					File imageFolder = new File(SystemUtils.PLACE_IMAGE_FOLDER);
					if (!imageFolder.exists())
						imageFolder.mkdirs();
					File file = new File(imageFolder, "MemberImage_" + place.getPlaceId() + ext);
					placeImage.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		placeService.update(place);
		ra.addFlashAttribute("successMessage", place.getName() + "修改成功");
		// 新增或修改成功，要用response.sendRedirect(newURL) 通知瀏覽器對newURL發出請求
		return "redirect:/queryRestaurant";

	}

	@GetMapping("/insertRestaurant")
	public String sendInsertRestaurant(Model model) {
//		Place place = new Place(3, "墨西哥大嬸的店","02-95025871", "新北市", 135.225558, 
//				         25.66555, "www.test.com.tw", null, null, null);
		Place place = new Place();
		model.addAttribute("place", place);
		return "Milton/insertRestaurant";
	}
	
	
	
	/*
	@PostMapping("/insertRestaurant")
	public String saveRestaurant(@ModelAttribute("productinfo") Place place, BindingResult result, RedirectAttributes ra

	) {

		placeValidator.validate(place, result);
		if (result.hasErrors()) {
//          下列敘述可以理解Spring MVC如何處理錯誤			
			List<ObjectError> list = result.getAllErrors();
			for (ObjectError error : list) {
				System.out.println("有錯誤：" + error);
			}
			return "Milton/insertRestaurant";
		}

		Blob blob = null;
		String mimeType = "";
		String name = "";
		MultipartFile placeImage = place.getPlaceImage();
		try {
			InputStream is = placeImage.getInputStream();
			name = placeImage.getOriginalFilename();
			blob = SystemUtils.inputStreamToBlob(is);
			mimeType = context.getMimeType(name);
			place.setPicture(blob);
			place.setMimeType(mimeType);
		} catch (Exception e) {
			e.printStackTrace();
		}

		placeService.save(place);
		String ext = SystemUtils.getExtFilename(name);
		// 將上傳的檔案移到指定的資料夾, 目前註解此功能
		try {
			File imageFolder = new File(SystemUtils.PLACE_IMAGE_FOLDER);
			if (!imageFolder.exists())
				imageFolder.mkdirs();
			File file = new File(imageFolder, "MemberImage_" + place.getPlaceId() + ext);
			placeImage.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
		}

//		if(place.getTypeId() == 0) {
//			
//		}

		ra.addFlashAttribute("successMessage", place.getName() + "新增成功");
		// 新增或修改成功，要用response.sendRedirect(newURL) 通知瀏覽器對newURL發出請求
		return "redirect:/queryRestaurant";
	}
*/
//	
//	@ModelAttribute("place")
//	public Place getPlace1(@RequestParam(value="placeId", required = false ) Long placeId) {
//		System.out.println("------------------------------------------");
//		Place place = null;
//		if (placeId != null) {
//			place = placeService.findById(placeId);
//		} else {
//			place = new Place();
//		}
//		System.out.println("In @ModelAttribute, place=" + place);
//		return place;
//	}
	@ModelAttribute("typeList")
	public List<ProductType> getAllRestaurantType() {
		return typeService.findRestaurantTypes();
	}

	@ModelAttribute("productList")
	public List<ProductInfo> getProductByTypeId() {
		return typeService.findProduct();
	}

	@ModelAttribute("productinfo")
	public ProductInfo getProduct1(@RequestParam(value = "productId", required = false) Integer placeId) {
		System.out.println("------------------------------------------");
		ProductInfo product = null;
		if (placeId != null) {
			product = placeService.findById(placeId);
		} else {
			product = new ProductInfo();
		}
		System.out.println("In @ModelAttribute, product=" + product);
		return product;
	}
	
	// 獲取產品id
//	@ModelAttribute("cart")不能跟PostMapping同時共用
	@PostMapping(path="/insertRestaurant")
	public String getProductId(
			@RequestParam(value = "productCode", required = false) Integer productId,
			@RequestParam(value = "todo", required = false) String todo,
			@RequestParam(value = "cartIndex", required = false) String cartindex,
			Model m) {
//		HttpSession session,
		List<Cart> theCart = (List<Cart>)m.getAttribute("cart");
		
		if(theCart == null) {
			theCart = new ArrayList<Cart>();
		}
		System.out.println("====");
		System.out.println(productId);
		Cart newCartItem = new Cart();

		newCartItem.setProductInfo(placeService.findById(productId));
		
		System.out.println("產品資訊:" + newCartItem.getProductInfo().getProductname());
				
//		ArrayList<Integer> orderid = placeService.getOrderId();
	
//		result.add(Integer.parseInt(orderid.get(0)));
//		Integer[] array = orderid.toArray(new Integer[orderid.size()]);
	
	
//		System.out.println("新訂單id:"+ orderid.get(0));
//		newCartItem.setOrderId(orderid.get(0));
		
		newCartItem.setOrderId(21);
		newCartItem.setProductid(newCartItem.getProductInfo().getProductid());
		newCartItem.setProductname(newCartItem.getProductInfo().getProductname());
		newCartItem.setProductquantity(1);
		newCartItem.setProductprice(newCartItem.getProductInfo().getProductprice());
		newCartItem.setProductamount(0);
		
//		List<Cart> theCart = new ArrayList<>();
//		session.setAttribute("cart",theCart);
//		m.addAttribute("cart",theCart);
		
		boolean found = false;
//		Iterator iter = theCart.iterator();
		//有相同商品
		for(Cart cart : theCart) {
			if (cart.getProductid() == newCartItem.getProductInfo().getProductid()) {
				//數量迭家
				cart.setProductquantity(1);
				
				found = true;
			}
		}
		
//		while (!found && iter.hasNext()) {
//			Cart aCartItem = (Cart) iter.next();
//			if (aCartItem.getProductid() == newCartItem.getProductid()) {
//				aCartItem.setProductquantity(aCartItem.getProductquantity() + newCartItem.getProductquantity());
//				found = true;
//			}
//		}
		//沒有相同商品
		if (!found) { // Add it to the cart
			theCart.add(newCartItem);
					
		}//移除購物車商品
		else if(todo.equals("remove")) {
			System.out.println("移除_產品商品index:" + Integer.parseInt(cartindex));
			theCart.remove(Integer.parseInt(cartindex));			
		}
	
//		System.out.println("cartindex:"+ cartindex);
//		System.out.println("todo:"+ todo);
//		for(Cart cart : theCart) {
//			int totalprice = 0;
//			m.getAttribute("amount");
//			totalprice += cart.getProductInfo().getProductprice();
//			m.addAttribute("amount", totalprice);				
//
//			System.out.println("totalprice:" + totalprice);
//			}
		
		
		m.addAttribute("cart", theCart);									
		return "Milton/insertRestaurant";
		
	}
	//結帳
	@SuppressWarnings("unchecked")
	@PostMapping(path="/shopCartCheckOut")
	public String shopCartCheckOut(Model m) {
		int totalPrice = 0;
		
		
		List<Cart> theCart = (List<Cart>)m.getAttribute("cart");
		for(Cart cart : theCart) {
			
			int cart_orderId = cart.getOrderId();
			Integer cart_productid = cart.getProductid();
			String cart_productname = cart.getProductname();
			Integer cart_productquantity = cart.getProductquantity();
			Integer cart_productprice = cart.getProductprice();
			Integer cart_productamount = cart.getProductamount();
			System.out.println(cart_orderId);
			System.out.println(cart_productid);
			System.out.println(cart_productname);
			System.out.println(cart_productquantity);
			System.out.println(cart_productprice);
			System.out.println(cart_productamount);
			
			Cart CartItem = new Cart(cart_orderId,cart_productid,cart_productname,cart_productquantity,
					cart_productprice,cart_productamount);
			totalPrice += cart.getProductInfo().getProductprice();
			placeService.save(CartItem);
	
		}
		System.out.println("總金額:" + totalPrice);
//		StringBuilder sb = new StringBuilder();
//		Formatter formatter = new Formatter(sb); // Send all output to sb
//		formatter.format("%.2f", totalPrice); 
//		System.out.println("總金額:" + sb);
		m.addAttribute("totalPrice",  totalPrice);
		
		
		
		return "Milton/shopCartCheckOutSuccess";
		
	}
	

	@ModelAttribute("petList")
	public List<Pet> getAllABC() {

		return Arrays.asList(new Pet(1, "hi", "hihi"));

	}

}
