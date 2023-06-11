package com.tum4world.tum4world.model;

public class UserActivities {

    public UserActivities(String username) {
        this.username = username;
    }

    String username;

    boolean activity1;

    boolean activity2;

    boolean activity3;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public boolean isActivity1() {
        return activity1;
    }

    public void setActivity1(boolean activity1) {
        this.activity1 = activity1;
    }

    public boolean isActivity2() {
        return activity2;
    }

    public void setActivity2(boolean activity2) {
        this.activity2 = activity2;
    }

    public boolean isActivity3() {
        return activity3;
    }

    public void setActivity3(boolean activity3) {
        this.activity3 = activity3;
    }
}
