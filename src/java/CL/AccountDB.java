/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CL;

/**
 *
 * @author paul
 */
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;

public class AccountDB {
        
    @PersistenceContext
    private static EntityManager em;
    private static EntityTransaction etrans;
    
    public static void insert(Account account) {
        
        etrans = em.getTransaction();
         
        etrans.begin();
        try {
        
            em.persist(account);
            etrans.commit();      
        }
        catch (Exception e) {
            
            System.out.println(e);
            etrans.rollback();
        }
        finally {
            
            em.close();
        }
    }
        
    public static void update(Account account) {
        
        etrans = em.getTransaction();
        
        etrans.begin();
        try {
        
            em.persist(account);
            etrans.commit();      
        }
        catch (Exception e) {
            
            System.out.println(e);
            etrans.rollback();
        }
        finally {
            
            em.close();
        }
    }
    public static void delete( Account account) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();        
        try {
            em.remove(em.merge( account));
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }       
    }
}