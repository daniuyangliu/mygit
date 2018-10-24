package db.com.service;


import db.com.domain.User;

import java.util.List;

public interface IUserService {
    void save(User user);

    void delete(Long id);

    List<User> getAll();

    User getone(Long id);

    void update(User user);
}
