package demo7;

import java.util.List;

public class Person {
    private List<String> friends;

    public List<String> getFriends() {
        return friends;
    }

    public void setFriends(List<String> friends) {
        this.friends = friends;
    }

    public Person(List<String> friends) {
        this.friends = friends;
    }

    public Person() {
    }

    @Override
    public String toString() {
        return "Person{" +
                "friends=" + friends +
                '}';
    }
}
