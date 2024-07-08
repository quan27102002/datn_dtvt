package com.pts.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailModel {
    String from;
    String to;
    String[] cc;
    String[] bcc;
    String subject;
    String body;
    String[] attachments;

    public MailModel(String to, String subject, String body) {
        this.from = "Crouse_Online <crouseonline@gmail.com>";
        this.to = to;
        this.subject = subject;
        this.body = body;
    }
}
