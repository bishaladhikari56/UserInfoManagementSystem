package com.vastika.userinfomanagement3.repository;


import com.vastika.userinfomanagement3.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,Integer>
{
    User findByUsername(String username);
    //    User findByNationality(String nationality);
   // User findBy
}
