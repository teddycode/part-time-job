package com.jb.entity;

public class jb {
    private Integer jid;

    private Integer jpid;

    private String jval;

    private String jjg;
    private Integer juserid;

    public Integer getJuserid() {
        return juserid;
    }

    public void setJuserid(Integer juserid) {
        this.juserid = juserid;
    }

    public Integer getJid() {
        return jid;
    }

    public void setJid(Integer jid) {
        this.jid = jid;
    }

    public Integer getJpid() {
        return jpid;
    }

    public void setJpid(Integer jpid) {
        this.jpid = jpid;
    }

    public String getJval() {
        return jval;
    }

    public void setJval(String jval) {
        this.jval = jval == null ? null : jval.trim();
    }

    public String getJjg() {
        return jjg;
    }

    public void setJjg(String jjg) {
        this.jjg = jjg == null ? null : jjg.trim();
    }
}