package demo9;

import demo3.B;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class ExpLang {
    @Value("#{10+5}")
    private int x;
    @Value("#{T(java.lang.Math).E}")
    private int y;

    @Value("#{T(java.lang.Math).sqrt(25)}")
    private int z;
    @Value("#{new java.lang.String('Rintu')}")
    private String name;
    @Value("#{8>6}")
    private boolean isActive;
    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public int getZ() {
        return z;
    }

    public void setZ(int z) {
        this.z = z;
    }

    public ExpLang(int x, int y, int z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    public ExpLang() {
    }

    @Override
    public String toString() {
        return "ExpLang{" +
                "x=" + x +
                ", y=" + y +
                ", z=" + z +
                ", name='" + name + '\'' +
                ", isActive=" + isActive +
                '}';
    }
}
