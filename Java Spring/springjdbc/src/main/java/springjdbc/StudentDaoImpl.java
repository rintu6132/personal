package springjdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Component("sdi")
public class StudentDaoImpl implements StudentDao{
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public int insert(Student student) {
        String query="insert into student(id,name,address) values(?,?,?)";
        int r=this.jdbcTemplate.update(query,student.getId(),student.getName(),student.getAddress());
        return r;
    }

    @Override
    public int update(Student student) {
        String query="update student set name=?,address=? where id=?";
        int r=this.jdbcTemplate.update(query,student.getName(),student.getAddress(),student.getId());
        return r;
    }

    @Override
    public int delete(int id) {
        String query="delete from student where id=?";
        int r=this.jdbcTemplate.update(query,id);
        return r;
    }

    @Override
    public Student getStudent(int id) {
        String query="select * from student where id=?";
        RowMapper<Student> rowMapper=new RowMapperImpl();
        Student student=this.jdbcTemplate.queryForObject(query,rowMapper,id);
        return student;
    }

    @Override
    public List<Student> getAllStudents() {
        String query="select * from student";
        List<Student> students=this.jdbcTemplate.query(query,new RowMapperImpl());
        return students;
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public StudentDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public StudentDaoImpl() {
    }
}
