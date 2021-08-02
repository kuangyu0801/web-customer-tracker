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
    @Transactional
    public List<Customer> getCumstomers() {
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
}
