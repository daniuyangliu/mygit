package db.com.service.serviceimpl;

import db.com.domain.User;
import db.com.mapper.MainMapper;
import db.com.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 是的
 */
@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private MainMapper mainMapper;

    @Override
    public void save(User user) {
        mainMapper.save(user);
    }

    @Override
    public void delete(Long id) {
        mainMapper.delete(id);
    }

    @Override
    public List<User> getAll() {
        return mainMapper.getAll();
    }

    @Override
    public User getone(Long id) {
        return mainMapper.getone(id);
    }

    @Override
    public void update(User user) {
        mainMapper.update(user);
    }
}