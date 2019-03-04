package org.lwt.VRweb.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.lwt.VRweb.model.City;
import org.lwt.VRweb.model.Scenic;
import org.lwt.VRweb.model.Category;
import org.lwt.VRweb.service.impl.CityManager;
import org.lwt.VRweb.service.impl.ScenicManager;
import org.lwt.VRweb.service.impl.CategoryManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/scenic")
public class ScenicController {
	
	private ScenicManager scenicMgr;
	private CategoryManager categoryMgr;
	private CityManager cityMgr;
	
	@Autowired
	@Qualifier("scenicMgr")
	public void setScenicMgr(ScenicManager scenicMgr) {
		this.scenicMgr = scenicMgr;
	}
	public ScenicManager getScenicMgr() {
		return scenicMgr;
	}
	
	@Autowired
	@Qualifier("categoryMgr")
	public void setCategoryMgr(CategoryManager categoryMgr) {
		this.categoryMgr = categoryMgr;
	}
	public CategoryManager getCategoryMgr() {
		return categoryMgr;
	}
	
	@Autowired
	@Qualifier("cityMgr")
	public void setCityMgr(CityManager cityMgr) {
		this.cityMgr = cityMgr;
	}
	public CityManager getCityMgr() {
		return cityMgr;
	}
	
	
/*	 //��ҳ�и���ul�����idɸѡ����
	@RequestMapping(value="/city/{city_id}",method=RequestMethod.GET)
	public String selectScenicByCity(@PathVariable int city_id, HttpServletRequest request,Model model){
		List<Scenic> scenicList;
		String para = request.getParameter("page");	
		if (para == null) {
			para = "1";
		}
		int page = Integer.parseInt(para);
		scenicList = scenicMgr.getScenicDao().getScenicByCity(page, city_id);
		List<Category> allShool = categoryMgr.getCategoryDao().getAllCategory();
		model.addAttribute("scenicList",scenicList);
		model.addAttribute("allScenicType",allShool);
		return "city/view";
	}
*/
	
	 //��ҳ�и��ݲ鿴����У԰ȫ��ɸѡȫ��
	@RequestMapping("/allScenic")
	public String selectAllScenic( HttpServletRequest request,Model model){
		List<Scenic> scenicList;
		String para = request.getParameter("page");	
		if (para == null) {
			para = "1";
		}
		int page = Integer.parseInt(para);
		scenicList = scenicMgr.getScenicDao().getAllScenic(page);
		List<City> allCity = cityMgr.getCityDao().getAllCity();
		model.addAttribute("scenicList",scenicList);
		model.addAttribute("allCity",allCity);
		return "scenic/view";
	}
		
	 //�Ѿ���������ѡ���ٸ��ݳ���ѡ��ɸѡ����
	@RequestMapping(value="/city/{city_id}",method=RequestMethod.GET)
	public String selectScenicByCity(@PathVariable int city_id, HttpServletRequest request,Model model){
		List<Scenic> scenicList;
		String para = request.getParameter("page");	
		if (para == null) {
			para = "1";
		}
		int page = Integer.parseInt(para);
		scenicList = scenicMgr.getScenicDao().getScenicByCity(page, city_id);
		model.addAttribute("scenicList",scenicList);
		return "scenic/finalSelectScenic";
	}
	
	//��ʾ����
	@RequestMapping(value="/{scenic_id}",method=RequestMethod.GET)
	public String test(@PathVariable String scenic_id, HttpServletRequest request,Model model) {
		int s_id = Integer.parseInt(scenic_id);
		Scenic scenic= (Scenic)scenicMgr.accessScenic(s_id);
		model.addAttribute("scenic",scenic);
		return "scenic/scenicView";
	}

}
