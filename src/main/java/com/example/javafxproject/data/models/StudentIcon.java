package com.example.javafxproject.data.models;

public class StudentIcon {
    public int id;
    public String name;
    public String image;
    public int age;
    public String major;

    public StudentIcon(int id, String name, String image, int age, String major) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.age = age;
        this.major = major;
    }

    public StudentIcon(String name, String image, int age, String major) {
        this.name = name;
        this.image = image;
        this.age = age;
        this.major = major;
    }

    public int getId() {
        return id;
    }

    public void setId(int name) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    public int getAge() {return age;}

    public void setAge(int age) {
        this.age = age;
    }
    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }
}

