package com.demo.dao;

import com.demo.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

// let spring handle exception
@Repository
public class CustomerDAOImpl implements CustomerDAO{

    // need to inject the session factory
    @Autowired
    private SessionFactory sessionFactory;

    // automatically begin and close session
    @Override
    public List<Customer> getCustomers() {
        // get the hibernate session
        Session curSession = sessionFactory.getCurrentSession();
        // create a query
        Query<Customer> query =
                curSession.createQuery("from Customer");

        // execute query and get result list
        List<Customer> customers = query.getResultList();

        // return the results
        return customers;
    }

    @Override
    public void saveCustomer(Customer customer) {
        // get the hibernate session
        Session curSession = sessionFactory.getCurrentSession();

        // if primary key already exists: update
        // else save customer
        curSession.saveOrUpdate(customer);
    }

    @Override
    public Customer getCustomers(int id) {
        // get the hibernate session
        Session curSession = sessionFactory.getCurrentSession();

        Customer customer = curSession.get(Customer.class, id);
        // now retrieve from database
        return customer;
    }

    @Override
    public void deleteCustomer(int id) {
        // get the hibernate session
        Session curSession = sessionFactory.getCurrentSession();

        // delete object by ID
        Query query = curSession.createQuery("delete from Customer where id=:customerId");
        query.setParameter("customerId", id);

        query.executeUpdate();
    }
}
