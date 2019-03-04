package org.lwt.VRweb.dao.impl;

import java.util.List;
import org.lwt.VRweb.dao.MyHibernateDaoSupport;
import org.lwt.VRweb.dao.SpeakDao;
import org.lwt.VRweb.model.Answer;
import org.lwt.VRweb.model.Category;
import org.lwt.VRweb.model.Question;
import org.lwt.VRweb.model.Speak;

public class SpeakDaoImpl extends MyHibernateDaoSupport implements SpeakDao {

	@Override
	public Speak get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Speak.class, id);
	}

	@Override
	public Integer save(Speak speak) {
		// TODO Auto-generated method stub
		return (Integer) getHibernateTemplate().save(speak);
	}

	@Override
	public void update(Speak speak) {
		getHibernateTemplate().update(speak);

	}
	
	@Override
	public int delete(int id) {
		Speak speak = get(id);
		try {
			getHibernateTemplate().delete(speak);
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		return 1;
	}
	
	@Override
	public List<Question> revealQuestion(String keyword,int page_th,int page_size) {
		String hql = "from Question where title like '%"+keyword+"%'";//ģ����ѯ��%Ϊͨ�����ǰ������
		return findByPage(hql, page_size*(page_th-1), page_size);
	}
	
	@Override
	public List<Category> revealCategory(String keyword,int page_th,int page_size) {
		String hql = "from Category where name like '%"+keyword+"%'";
		return findByPage(hql, page_size*(page_th-1), page_size);
	}
	
	@Override
	public List<Speak> getAllSpeak() {
		return getHibernateTemplate().find("from Question");
	}
	
	@Override
	public List<Speak> getAllSpeakWithAnswers(){
		return getHibernateTemplate().find("select distinct q from Question as q left join fetch q.answers");
	}

	//�õ��ش��Լ�֧�ִ˻ش���û�
		@Override
		public Answer getSpeakWithSuppotor(Integer id) {
			return (Answer)getHibernateTemplate()
					.find("select distinct a from Answer as a left join fetch a.supportor where a.id = ? ",id).get(0);
		}
		
		//�õ��ش��Լ����Դ˻ش���û�
		@Override
		public Answer getSpeakWithOpponent(Integer id) {
			return (Answer)getHibernateTemplate()
					.find("select distinct a from Answer as a left join fetch a.opponent where a.id = ? ",id).get(0);
		}
		
		//�õ��ش��Լ��Դ˻ش�ͶƱ���û�
		@Override
		public Answer getSpeakWithVoter(Integer id) {
			return (Answer)getHibernateTemplate()
					.find("select distinct a from Answer as a left join fetch a.supportor left join fetch a.opponent where a.id = ? ",id).get(0);
		}
		
		//�õ�����Ļش�
		@Override
		public List<Answer> getAnswerOfQuestion(Integer id) {
			return  getHibernateTemplate()
			.find("select answers as a from Question as q where q.id = ?",id);
		}
		
		
		//�õ���ѧУ���ͷ��������
		@Override
		public List<Question> getCategoryQuestions(int category_id){
			return  getHibernateTemplate()
					.find("from Question as q where q.category.id= ? ", category_id);
		}
		
		//�õ��û�������
		@Override
		public List<Question> getUserQuestions(int user_id) {
			return  getHibernateTemplate()
					.find("from Question as s left join fetch s.owner as u where u.id =  ? ", user_id);
		}
		
		//�õ��û��Ļش�
		@Override
		public List<Answer> getUserAnswers(int user_id) {
			return  getHibernateTemplate()
					.find("from Answer as s left join fetch s.owner as u where u.id =  ? ", user_id);
		}
		
		//�õ��û�������
		@Override
		public List<Question> getUserQuestionsByPage(int page_th,int user_id) {
			int page_size = 7;
			String hql="from Question as s left join fetch s.owner as u where u.id =  ? ";
			return  findByPage(hql, user_id, page_size*(page_th-1), page_size);
		}
		
		//�õ��û��Ļش�
		@Override
		public List<Answer> getUserAnswersByPage(int page_th,int user_id) {
			int page_size = 7;
			String hql="select distinct a from Answer as a left join fetch a.question where a.owner.id =  ? ";
			return  findByPage(hql, user_id, page_size*(page_th-1), page_size);
		}
		
		//��ҳ�õ����ⰴ ����������
		@Override
		public List<Question> getQuestionsByPage(int page_th) {
			int page_size = 10;
			String hql="select distinct q from Question as q left join fetch q.answers order by q.AC desc";
			return  findByPage(hql,page_size*(page_th-1), page_size);
		}
		
		//��ҳ�õ������µ����� ������������
		@Override
		public List<Question> getCategoryQuestionsByPage(int page_th,int category_id) {
			int page_size = 10;
			String hql="select distinct q from Question as q left join fetch q.answers where q.Category.id= ? order by q.AC desc";
			return  findByPage(hql, category_id, page_size*(page_th-1), page_size);
			
		}
		

}
