package springjdbc;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
@ComponentScan(basePackages ={"springjdbc"})
public class JdbcConfig {
    @Bean("ds")
    public DriverManagerDataSource getDataSource(){
        DriverManagerDataSource ds=new DriverManagerDataSource();
        ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/rintu");
        ds.setUsername("root");
        ds.setPassword("RKYmysql6132#");
        return ds;
    }
    @Bean("jt")
    public JdbcTemplate getTemplate(){
        JdbcTemplate jdbcTemplate=new JdbcTemplate();
        jdbcTemplate.setDataSource(getDataSource());
        return jdbcTemplate;
    }
//    @Bean("sdi")
//    public StudentDao getStudentDao(){
//        StudentDaoImpl sd=new StudentDaoImpl();
//        sd.setJdbcTemplate(getTemplate());
//        return sd;
//    }
}
