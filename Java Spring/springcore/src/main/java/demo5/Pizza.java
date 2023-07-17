package demo5;

public class Pizza{
    private double price;

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Pizza(double price) {
        this.price = price;
    }

    public Pizza() {
    }

    @Override
    public String toString() {
        return "Pizza{" +
                "price=" + price +
                '}';
    }

    @PostConstruct
    private void start(){
        System.out.println("Start");
    }
    @PreDestroy
    private void end(){
        System.out.println("End");
    }
}
