/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;


import entity.User;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


/**
 *
 * @author pupil
 */
public class UserFacade extends AbstractFacade<User> {
    
    @PersistenceContext(unitName = "ShoeShop_Web_EditionPU")
    private EntityManager em;

    public UserFacade(Class<User> entityClass) {
        super(entityClass);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UserFacade() {
        super(User.class);
    }
    public User findByLogin(String login) {
        try {
            return (User) em.createQuery("SELECT u FROM User u WHERE u.login=:login")
                    .setParameter("login", login)
                    .getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }
}
