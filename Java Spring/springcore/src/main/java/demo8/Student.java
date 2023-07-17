package demo8;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
//@Scope("prototype")
//@Component("stud1")
public class Student {
    @Value("123")
    private int sId;
    @Value("Rintu")
    private String sName;

    @Value("#{skillname}")
    private List<String> skills;
    public int getsId() {
        return sId;
    }

    public void setsId(int sId) {
        this.sId = sId;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public List<String> getSkills() {
        return skills;
    }

    public void setSkills(List<String> skills) {
        this.skills = skills;
    }

    public Student(int sId, String sName) {
        this.sId = sId;
        this.sName = sName;
    }

    public Student() {
    }

    @Override
    public String toString() {
        return "Student{" +
                "sId=" + sId +
                ", sName='" + sName + '\'' +
                ", skills=" + skills +
                '}';
    }
}
