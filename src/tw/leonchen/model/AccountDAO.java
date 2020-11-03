package tw.leonchen.model;




import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class AccountDAO {

	private SessionFactory sessionFactory;

	@Autowired
	public AccountDAO(@Qualifier("sessionFactory")SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean checkLogin(Account account) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Account where username=:user and userpwd:pwd";
		Query query = session.createQuery(hql);
		query.setParameter("user", account.getUsername());
		query.setParameter("pwd", account.getUserpwd());
		
		Account myAcc = (Account) query.uniqueResult();
		
		if(myAcc!=null) {
			return true;
		}
		return false;
		
	}
}
