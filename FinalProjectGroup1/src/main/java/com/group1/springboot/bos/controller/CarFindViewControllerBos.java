package com.group1.springboot.bos.controller;

import java.io.File;

import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group1.springboot.bos.Utils.SystemUtils;
import com.group1.springboot.bos.model.CarBos;
import com.group1.springboot.bos.service.CarServiceImplBos;
import com.group1.springboot.bos.validate.CarValidatorBos;


@Controller
public class CarFindViewControllerBos {

	@Autowired
	CarServiceImplBos carService;
	
	@Autowired
	CarValidatorBos carValidator;
	
	@Autowired
	ServletContext context;
	
	
//	@Autowired
//	private CarServiceImpl service;
//	
//	@RequestMapping("/delete/{id}")
//	public String deleteCar(@PathVariable(name = "id") int id) {
//		service.delete(id);
//		return "redirect:/";		
//	}
	
	//insert-readEvent.jsp
	@GetMapping("/bos")
	public String sendReadCarToInsert(Model model) {
		model.addAttribute("car",new CarBos());
		return "Bos/readCarBos";
		
	}
	
	
	
	@ModelAttribute("car")
	public CarBos getCar(@RequestParam(value="Id", required = false )  Long id) {
		CarBos car = null;
		if (id != null) {
			car = carService.findById(id);
		} else {
			car = new CarBos();
		}
		System.out.println("In @ModelAttribute, car=" + car);
		return car;
		
	}
	 
	@PostMapping("/modifyCarBos/{Id}")
	public String updateCar( @ModelAttribute("car") CarBos car ,
			BindingResult result , 
			RedirectAttributes ra) {
	
		carValidator.validate(car, result);
	if(result.hasErrors()) {
		
		List<ObjectError> list = result.getAllErrors();
		for(ObjectError error:list) {
			System.out.println("?????????"+error);
		}   
		return "redirect:/editCarBos";	
	}
	Blob blob = null;
	String mimeType = "";
	String name = "";
	MultipartFile carImage = car.getCarImage();
	if (carImage != null && carImage.getSize() > 0) {
		try {
			InputStream is = carImage.getInputStream();
			name = carImage.getOriginalFilename();
			blob = SystemUtils.inputStreamToBlob(is);
			mimeType = context.getMimeType(name);
			car.setPicture(blob);
			car.setMimeType(mimeType);
			
			String ext = SystemUtils.getExtFilename(name);
			// ??????????????????????????????????????????, ?????????????????????
			try {
				File imageFolder = new File(SystemUtils.CAR_IMAGE_FOLDER);
				if (!imageFolder.exists())
					imageFolder.mkdirs();
				File file = new File(imageFolder, "CarImage_" + car.getId() + ext);
				carImage.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("????????????????????????: " + e.getMessage());
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	carService.update(car);
	ra.addFlashAttribute("successMessage", car.getName() + "????????????");
	// ??????????????????????????????response.sendRedirect(newURL) ??????????????????newURL????????????
	return "redirect:/queryCarBos";  
	
	
}

	// ????????????page
	@GetMapping("/modifyCarBos/{id}")
	public String sendEditPage( 
			@PathVariable Long id,Model model
			) {
		CarBos car = carService.findById(id);
		model.addAttribute("car",car);
		return "Bos/editCarBos";
		
	}
	
	
	
	
	


}
