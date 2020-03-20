package com.example.repository;

import com.example.modals.Users;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by ken on 7/3/2019.
 */
public interface UserRepository extends CrudRepository<Users, Integer> {
    public Users findByUsernameAndPassword(String username, String password);
}
