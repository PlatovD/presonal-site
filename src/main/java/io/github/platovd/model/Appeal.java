package io.github.platovd.model;


import jakarta.persistence.*;

@Entity
@Table(name = "appeal")
public class Appeal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "appeal_id")
    private int appealId;

    @Column(name = "from_name")
    private String nameSender;

    @Column(name = "contact")
    private String contact;

    @Column(name = "message")
    private String message;

    public Appeal() {
    }

    public Appeal(String nameSender, String contact, String message) {
        this.nameSender = nameSender;
        this.contact = contact;
        this.message = message;
    }

    public int getAppealId() {
        return appealId;
    }

    public void setAppealId(int appealId) {
        this.appealId = appealId;
    }

    public String getNameSender() {
        return nameSender;
    }

    public void setNameSender(String nameSender) {
        this.nameSender = nameSender;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
