package main.com.myApp.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

@Component
@Setter
@Getter
public class UserModel {

    @NotEmpty(message = "this field cannot empty or null")
    private String username;

    @NotEmpty(message = "this field cannot empty or null")
    @Pattern(regexp = "(.+)@(\\\\S+)$", message = "enter a valid email address")
    private String email;
    private String password;
}
