package com.group1.springboot.sylvia.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group1.springboot.sylvia.Utils.SystemUtils;
import com.group1.springboot.sylvia.model.Event;
import com.group1.springboot.sylvia.service.EventServiceImpl;
import com.group1.springboot.sylvia.validate.EventValidator;


@Controller
public class EventFindViewController {

	@Autowired
	EventServiceImpl eventService;
	
	@Autowired
	EventValidator eventValidator;
	
	@Autowired
	ServletContext context;
	
	//insert-readEvent.jsp
	@GetMapping("/sylvia")
	public String sendReadEventToInsert(Model model) {
		model.addAttribute("event",new Event());
		return "Sylvia/readEvent";
		
	}
	
	
	
	@ModelAttribute("event")
	public Event getEvent(@RequestParam(value="Id", required = false )  Long id) {
		Event event = null;
		if (id != null) {
			event = eventService.findById(id);
		} else {
			event = new Event();
		}
		System.out.println("In @ModelAttribute, event=" + event);
		return event;
		
	}
	 
	@PostMapping("/modifyEvent/{Id}")
	public String updateEvent( @ModelAttribute("event") Event event ,
			BindingResult result , 
			RedirectAttributes ra) {
	
		eventValidator.validate(event, result);
	if(result.hasErrors()) {
		
		List<ObjectError> list = result.getAllErrors();
		for(ObjectError error:list) {
			System.out.println("?????????"+error);
		}   
		return "redirect:/editEvent";	
	}
	Blob blob = null;
	String mimeType = "";
	String name = "";
	MultipartFile eventImage = event.getEventImage();
	if (eventImage != null && eventImage.getSize() > 0) {
		try {
			InputStream is = eventImage.getInputStream();
			name = eventImage.getOriginalFilename();
			blob = SystemUtils.inputStreamToBlob(is);
			mimeType = context.getMimeType(name);
			event.setPicture(blob);
			event.setMimeType(mimeType);
			
			String ext = SystemUtils.getExtFilename(name);
			// ??????????????????????????????????????????, ?????????????????????
			try {
				File imageFolder = new File(SystemUtils.EVENT_IMAGE_FOLDER);
				if (!imageFolder.exists())
					imageFolder.mkdirs();
				File file = new File(imageFolder, "EventImage_" + event.getId() + ext);
				eventImage.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("????????????????????????: " + e.getMessage());
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	eventService.update(event);
	ra.addFlashAttribute("successMessage", event.getName() + "????????????");
	// ??????????????????????????????response.sendRedirect(newURL) ??????????????????newURL????????????
	return "redirect:/queryEvent";  
	
	
}

	// ????????????page
	@GetMapping("/modifyEvent/{id}")
	public String sendEditPage( 
			@PathVariable Long id,Model model
			) {
		Event event = eventService.findById(id);
		model.addAttribute("event",event);
		return "Sylvia/editEvent";
		
	}
	
	
	
	
	


}
