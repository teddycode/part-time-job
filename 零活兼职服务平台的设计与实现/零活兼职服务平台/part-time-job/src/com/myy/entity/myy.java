package com.myy.entity;

public class myy {
    private Integer yyid;

    private Integer mid;

    private String mval;

    private String mjg;

    private Integer yyuserid;

    public Integer getYyuserid() {
        return yyuserid;
    }

    public void setYyuserid(Integer yyuserid) {
        this.yyuserid = yyuserid;
    }

    public Integer getYyid() {
        return yyid;
    }

    public void setYyid(Integer yyid) {
        this.yyid = yyid;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMval() {
        return mval;
    }

    public void setMval(String mval) {
        this.mval = mval == null ? null : mval.trim();
    }

    public String getMjg() {
        return mjg;
    }

    public void setMjg(String mjg) {
        this.mjg = mjg == null ? null : mjg.trim();
    }
}