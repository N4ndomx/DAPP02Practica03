/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.uv.DAPP02Pracica03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 *
 * @author ASUS
 */
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private RepositoryUsers  userRepository;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
         User user = userRepository.getUserByUsername(username);
         System.out.println(user.getUsername());
        if (user == null) {
            throw new UsernameNotFoundException("No se encontro User");
        }
         
        return new UserDetailsImp(user);
    }
    
}
