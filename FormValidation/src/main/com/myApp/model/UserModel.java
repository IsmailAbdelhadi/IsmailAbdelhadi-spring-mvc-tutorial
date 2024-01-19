package main.com.myApp.model;

import lombok.Getter;
import lombok.Setter;
import main.com.myApp.annotation.FieldMatch;
import org.springframework.stereotype.Component;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;


@Component
@Setter
@Getter
@FieldMatch(first = "password", second = "confirmPassword", message = "The password field must match")
public class UserModel {

    //NotEmpty annotation replace @NotNull and @Siz(min=1)
    @NotEmpty(message = "this field cannot empty or null")
    @Pattern(regexp = "^[a-zA-Z0-9_]{3,30}$", message = "please enter a valid username")
    private String username;

    @NotEmpty(message = "this field cannot empty or null")
    private String password;

    @NotEmpty(message = "this field cannot empty or null")
    private String confirmPassword;

    @NotEmpty(message ="this field cannot empty or null")
    @Pattern(regexp = "^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$", message = " please enter a valid email address")
    private String email;


}
