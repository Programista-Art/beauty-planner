package com.BeautyPlanner.BeautyPlanner.models;

import jakarta.persistence.*;
//Dotyczy Placówek
@Entity
@Table(name = "facilities")
public class Facility {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name_facilities")
    private String nameFacilities;

    @Column(name = "adress_facilities")
    private String adresFacilities;

    @Column(name = "phone_facilities")
    private String phoneFacilities;

    @Column(name = "email")
    private String email;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameFacilities() {
        return nameFacilities;
    }

    public void setNameFacilities(String nameFacilities) {
        this.nameFacilities = nameFacilities;
    }

    public String getAdresFacilities() {
        return adresFacilities;
    }

    public void setAdresFacilities(String adresFacilities) {
        this.adresFacilities = adresFacilities;
    }

    public String getPhoneFacilities() {
        return phoneFacilities;
    }

    public void setPhoneFacilities(String phoneFacilities) {
        this.phoneFacilities = phoneFacilities;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}

