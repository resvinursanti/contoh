/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.Angsuran;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import tools.HibernateUtil;


/**
 *
 * @author TAMU
 */
public class AngsuranDAO {
    private  Session session;
    private Transaction transaction;
    private SessionFactory factory;
    public FunctionDAO fdao;
    
    public AngsuranDAO() {
        this.fdao = new FunctionDAO(HibernateUtil.getSessionFactory());
    }
    
    public boolean insert(Object object){
        return fdao.insert(object);
    }
    
    public boolean delete(Object object){
        return fdao.delete(Angsuran.class,object.toString());
    }
    public List<Object> search(String category, String search) {
        return fdao.getAll("FROM Angsuran WHERE " + category + " LIKE '%" + search + "%'");
    }

    public Object getById(String Id) {
        return fdao.getById("from Angsuran where idAngsuran='" + Id + "'");
    }
    public boolean update(Object object) {
        return fdao.insert(object);
    }

    public List<Object> getAll() {
        return fdao.getAll("FROM Angsuran");
    }
     public String getAutoID () {
        return (String) fdao.getById("SELECT CONCAT('ang',LPAD((TO_NUMBER(SUBSTR(MAX(idAngsuran),4,4))+1),2, '0')) as MAX FROM Angsuran");
    }
}
