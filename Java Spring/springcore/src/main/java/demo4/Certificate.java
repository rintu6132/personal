package demo4;

public class Certificate {
    public String cName;

    public Certificate(String cName) {
        this.cName = cName;
    }

    public Certificate() {
    }

    @Override
    public String toString() {
        return "Certificate{" +
                "cName='" + cName + '\'' +
                '}';
    }
}
