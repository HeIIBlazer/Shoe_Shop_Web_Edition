/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.AllCash;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


/**
 *
 * @author pupil
 */
public class AllCashFacade extends AbstractFacade<AllCash> {

    @PersistenceContext(unitName = "ShoeShop_Web_EditionPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AllCashFacade() {
        super(AllCash.class);
    }
    
}
