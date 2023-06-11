package com.tum4world.tum4world.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class Donazione {

    public Donazione(BigDecimal amount, String username, LocalDateTime dateTime) {
        this.amount = amount;
        this.username = username;
        this.dateTime = dateTime;
    }

    private BigDecimal amount;

    private String username;

    private LocalDateTime dateTime;

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }
}
