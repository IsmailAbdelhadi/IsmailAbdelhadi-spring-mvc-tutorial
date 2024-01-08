package main.com.myApp.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

@Component
@Setter
@Getter
public class UserModel {


    private String firstname;
    private String lastname;
    private String username;
    private String password;
    private String address;
    private String contact_no;

}
