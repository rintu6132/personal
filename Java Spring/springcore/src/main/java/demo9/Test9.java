package demo9;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.expression.Expression;
import org.springframework.expression.spel.standard.SpelExpression;
import org.springframework.expression.spel.standard.SpelExpressionParser;

public class Test9 {
    public static void main(String[] args){
        ApplicationContext context=new ClassPathXmlApplicationContext("Explangconfig.xml");
        ExpLang eref=(ExpLang) context.getBean("expLang");
        System.out.println(eref);
        SpelExpressionParser temp=new SpelExpressionParser();
        Expression expression=temp.parseExpression("45/9");
        System.out.println(expression.getValue());
    }
}
