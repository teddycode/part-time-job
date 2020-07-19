package com.myjob.entity;

public class myjob {
    private Integer mid;

    private Integer muserid;

    private Integer mpid;

    private String mstau;

    private String mfuserid;

    private String mjuserid;

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public Integer getMuserid() {
        return muserid;
    }

    public void setMuserid(Integer muserid) {
        this.muserid = muserid;
    }

    public Integer getMpid() {
        return mpid;
    }

    public void setMpid(Integer mpid) {
        this.mpid = mpid;
    }

    public String getMstau() {
        return mstau;
    }

    public void setMstau(String mstau) {
        this.mstau = mstau == null ? null : mstau.trim();
    }

    public String getMfuserid() {
        return mfuserid;
    }

    public void setMfuserid(String mfuserid) {
        this.mfuserid = mfuserid;
    }

    public String getMjuserid() {
        return mjuserid;
    }

    public void setMjuserid(String mjuserid) {
        this.mjuserid = mjuserid;
    }
}