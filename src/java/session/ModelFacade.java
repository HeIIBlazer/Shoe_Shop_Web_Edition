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
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author pupil
 */
public class ModelFacade extends AbstractFacade<Model> {
    @PersistenceContext(unitName = "ShoeShop_Web_EditionPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ModelFacade() {
        super(Model.class);
    }
    
        public List<Model> findModelWithThisPictureBond(Picture pictureBoundWithAccounds) {
        try {
            return em.createQuery("SELECT ab FROM AccountBox ab WHERE ab.picture = :picture")
                    .setParameter("picture", pictureBoundWithAccounds)
                    .getResultList();
        } catch (Exception e) {
            return new ArrayList<>();
        }
    }
    
}
