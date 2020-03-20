package com.example.services;

import com.example.modals.Users;
import com.example.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * Created by ken on 7/3/2019.
 */
@Service
@Transactional
public class UserService {
    @Autowired
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository){
        this.userRepository=userRepository;
    }
    public void saveUser(Users users){
        userRepository.save(users);
    }
    public List<Users> showAllUsers(){
        List<Users> users = new ArrayList<>();
        for(Users user1 : userRepository.findAll()){
            users.add(user1);
        }
        return users;
    }
    public void deleteUser(int id){
        userRepository.deleteById(id);
    }
    public Optional<Users> editUser(int id){
        return userRepository.findById(id);
    }
    public  Users findByUsernameAndPassword(String username,String password){
        return userRepository.findByUsernameAndPassword(username, password);
    }

}
