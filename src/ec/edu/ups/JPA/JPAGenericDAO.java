package ec.edu.ups.JPA;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import ec.edu.ups.dao.GenericDAO;
import ec.edu.ups.modelo.Telefono;
import ec.edu.ups.modelo.Usuario;





public class JPAGenericDAO<T, ID> implements GenericDAO<T, ID>{
	private Class<T> pesistentClass;
	protected EntityManager em;
	private Class persistentClass;
	
	
	
	
	public JPAGenericDAO(Class<T> pesistentClass, EntityManager em) {
		this.pesistentClass = pesistentClass;
		this.em = Persistence.createEntityManagerFactory("jpa").createEntityManager();
	}
	@Override
	public void createTable() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void create(T entity) {
		// TODO Auto-generated method stub
		em.getTransaction().begin();
		try {
		    em.persist(entity);
		    em.getTransaction().commit();
		} catch (Exception e) {
		    System.out.println(">>>> ERROR:JPAGenericDAO:create " + e);
		    if (em.getTransaction().isActive())
			em.getTransaction().rollback();
		}
		
		
	}
	@Override
	public T read(ID id) {
		// TODO Auto-generated method stub
		return em.find(pesistentClass, id);
	}
	@Override
	public Telefono buscarT(String cedula, String correo) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void update(T entity) {
		// TODO Auto-generated method stub
		em.getTransaction().begin();
		try {
		    em.merge(entity);
		    em.getTransaction().commit();
		} catch (Exception e) {
		    System.out.println(">>>> ERROR:JPAGenericDAO:update " + e);
		    if (em.getTransaction().isActive())
			em.getTransaction().rollback();
		}
		
	}
	@Override
	public void delete(T entity) {
		// TODO Auto-generated method stub
		em.getTransaction().begin();
		try {
		    em.remove(entity);
		    em.getTransaction().commit();
		} catch (Exception e) {
		    System.out.println(">>>> ERROR:JPAGenericDAO:delete " + e);
		    if (em.getTransaction().isActive())
			em.getTransaction().rollback();
		}
		
		
	}
	@Override
	public Usuario buscarU(Usuario entity) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int validar(Usuario usuario) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<T> find() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Usuario> buscarContacto2(Usuario usuario) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Telefono> buscarContacto(Usuario usuario) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Telefono> buscarContacto3(Telefono telefono) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Telefono> find2(Telefono telefono) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	    @SuppressWarnings("unchecked")
	    @Override
	    public List<T> find(String[] attributes, String[] values, String order, int index, int size) {
		// Se crea un criterio de consulta
		CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();
		CriteriaQuery<T> criteriaQuery = criteriaBuilder.createQuery(this.persistentClass);
		// Se establece la clausula FROM
		Root<T> root = criteriaQuery.from(this.persistentClass);
		// Se establece la clausula SELECT
		criteriaQuery.select(root); // criteriaQuery.multiselect(root.get(atr))
					    // // Se configuran los predicados,
					    // combinados por AND
		Predicate predicate = criteriaBuilder.conjunction();
		for (int i = 0; i < attributes.length; i++) {
		    Predicate sig = criteriaBuilder.like(root.get(attributes[i]).as(String.class), values[i]);
		    // Predicate sig =
		    // criteriaBuilder.like(root.get(attributes[i]).as(String.class),
		    // values[i]);
		    predicate = criteriaBuilder.and(predicate, sig);
		}
		// Se establece el WHERE
		criteriaQuery.where(predicate);
		// Se establece el orden
		if (order != null)
		    criteriaQuery.orderBy(criteriaBuilder.asc(root.get(order))); // Se
										 // crea
										 // el
										 // resultado
		if (index >= 0 && size > 0) {
		    TypedQuery<T> tq = em.createQuery(criteriaQuery);
		    tq.setFirstResult(index);
		    tq.setMaxResults(size); // Se realiza la query
		    return tq.getResultList();
		} else {
		    // Se realiza la query
		    Query query = em.createQuery(criteriaQuery);
		    return query.getResultList();
		}

	    }
	
	
	
	
	
	
	
	

}
