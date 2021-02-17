package com.vastika.userinfomanagement3.model;

import lombok.Data;

import javax.persistence.*;

import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name="role_tbl3")
@Data
public class Role
{
   @Id
   @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;
   @Column(name="role_name")
    private String roleName;

}
