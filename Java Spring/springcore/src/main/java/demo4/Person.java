package demo4;

public class Person {
    private String pName;
    private int pId;
    private Certificate cref;

    public Person(String pName, int pId, Certificate cref) {
        this.pName = pName;
        this.pId = pId;
        this.cref = cref;
    }

    public Person() {
    }

    @Override
    public String toString() {
        return "Person{" +
                "pName='" + pName + '\'' +
                ", pId=" + pId +
                ", cref=" + cref +
                '}';
    }
}
