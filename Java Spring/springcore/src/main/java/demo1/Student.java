package demo1;

public class Student {
    private int sId;
    private String sName;
    private String sAddress;

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

    public String getsAddress() {
        return sAddress;
    }

    public void setsAddress(String sAddress) {
        this.sAddress = sAddress;
    }

    public Student(int sId, String sName, String sAddress) {
        this.sId = sId;
        this.sName = sName;
        this.sAddress = sAddress;
    }

    public Student() {
    }

    @Override
    public String toString() {
        return "Student{" +
                "sId=" + sId +
                ", sName='" + sName + '\'' +
                ", sAddress='" + sAddress + '\'' +
                '}';
    }
}

