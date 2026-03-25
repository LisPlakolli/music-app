package musicapp.service;

import musicapp.dto.LoginRequest;
import musicapp.entity.User;
import musicapp.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User login(LoginRequest loginRequest) {
        return userRepository
                .findByUsernameAndPassword(loginRequest.getUsername(), loginRequest.getPassword())
                .orElse(null);
    }

    public User register(User user) {
        boolean usernameExists = userRepository.findByUsername(user.getUsername()).isPresent();
        boolean emailExists = userRepository.findByEmail(user.getEmail()).isPresent();

        if (usernameExists || emailExists) {
            return null;
        }

        return userRepository.save(user);
    }
}
