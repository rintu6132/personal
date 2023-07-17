package springorm;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

public class EmpDao {
    private HibernateTemplate hibernateTemplate;
    @Transactional
    public int insert(Emp emp){
        Integer i=(Integer) this.hibernateTemplate.save(emp);
        return i;
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    public EmpDao(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    public EmpDao() {
    }
}
