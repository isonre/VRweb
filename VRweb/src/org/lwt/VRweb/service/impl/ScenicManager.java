package org.lwt.VRweb.service.impl;
import java.util.List;

import org.lwt.VRweb.dao.ScenicDao;
import org.lwt.VRweb.model.City;
import org.lwt.VRweb.model.Scenic;

public class ScenicManager {

	private ScenicDao scenicDao;
	
	public ScenicDao getScenicDao() {
		return scenicDao;
	}

	public void setScenicDao(ScenicDao scenicDao) {
		this.scenicDao = scenicDao;
	}
	
	public List<Scenic> revealScenic(String keyword,int page_th) {
		return scenicDao.revealScenic(keyword, page_th, 10);
	}

	//���ʳ�����������
	public Scenic accessScenic(int scenic_id) {
		Scenic scenic ;
		scenic = (Scenic)scenicDao.get(scenic_id);
		int s =scenic.incAC();
		System.out.print("����"+""+s);
		scenicDao.update(scenic);
		return scenic;
	}
}
