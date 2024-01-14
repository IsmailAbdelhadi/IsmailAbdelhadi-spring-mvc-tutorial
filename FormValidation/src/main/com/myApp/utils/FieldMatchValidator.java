package main.com.myApp.utils;

import jdk.internal.org.objectweb.asm.tree.analysis.Value;
import main.com.myApp.annotation.FieldMatch;
import main.com.myApp.model.UserModel;
import org.springframework.beans.BeanWrapperImpl;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class FieldMatchValidator implements ConstraintValidator<FieldMatch, Object> {


    @Override
    public boolean isValid(final Object value, final ConstraintValidatorContext context) {
        try {
            UserModel userModel = (UserModel) value;
            if (userModel.getPassword().equals(userModel.getConfirmPassword()))
                return true;
            else
                return false;
        } catch (final  Exception ignore) {
            ignore.printStackTrace();
        }

        return false;

    }
}