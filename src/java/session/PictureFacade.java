/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.Model;
import entity.Picture;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author pupil
 */
@Stateless
public class PictureFacade extends AbstractFacade<Picture> {

    @PersistenceContext(unitName = "ShoeShop_Web_EditionPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PictureFacade() {
        super(Picture.class);
    }

    public List<Picture> findAllForModel(Model model) {
        try {
            return em.createQuery("SELECT p FROM Picture p WHERE p.user = :user")
                    .setParameter("model", model)
                    .getResultList();
        } catch (Exception e) {
            return new ArrayList<>();
        }
    } 
}
