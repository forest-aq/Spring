package mapper;

import domain.User;

import java.util.List;

public interface UserMapper {
    List<User> findAll();
    List<User> findUserAndRoleAll();
    void save(User user);
    void update(User user);
    void delete(int id);
    User findById(int id);
}
