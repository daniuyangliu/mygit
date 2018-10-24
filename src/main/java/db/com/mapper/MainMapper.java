package db.com.mapper;

import db.com.domain.User;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface MainMapper {
    void save(User user);

    void delete(Long id);

    List<User> getAll();

    User getone(Long id);

    void update(User user);
}
