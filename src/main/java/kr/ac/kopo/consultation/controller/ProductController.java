package kr.ac.kopo.consultation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.consultation.service.ProductService;
import kr.ac.kopo.consultation.vo.ProductVO;

@Controller
public class ProductController {
	
	
	@Autowired
	ProductService service;

	
	@PostMapping("/products")
	public ModelAndView viewAssets(@RequestBody String productType) {
		
		
		ModelAndView mav = new ModelAndView();
		
		System.out.println(productType);
		
		
		List<ProductVO> products = service.searchProducts(productType);
		System.out.println(products);
		
		
		mav.setViewName("productList");
		mav.addObject("productList" , products);
		
		return mav;
	}
	
	
}
