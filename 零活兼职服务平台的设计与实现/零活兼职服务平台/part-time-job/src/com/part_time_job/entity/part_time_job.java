package com.part_time_job.entity;

import com.type.entity.type;

public class part_time_job {
    private Integer pid;

    private String pname;

    private String pval;

    private Integer psage;

    private Integer peage;

    private String psex;

    private Integer preputation;

    private Integer pmoney;

    private Integer pstau;

    private Integer pcount;

    private Integer puserid;

    private Integer ptype;

    private Integer puserreputation;

    private String sql;


    private com.type.entity.type type;

    public com.type.entity.type getType() {
        return type;
    }

    public void setType(com.type.entity.type type) {
        this.type = type;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public Integer getPuserreputation() {
        return puserreputation;
    }

    public void setPuserreputation(Integer puserreputation) {
        this.puserreputation = puserreputation;
    }

    public Integer getPtype() {
        return ptype;
    }

    public void setPtype(Integer ptype) {
        this.ptype = ptype;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public String getPval() {
        return pval;
    }

    public void setPval(String pval) {
        this.pval = pval == null ? null : pval.trim();
    }

    public Integer getPsage() {
        return psage;
    }

    public void setPsage(Integer psage) {
        this.psage = psage;
    }

    public Integer getPeage() {
        return peage;
    }

    public void setPeage(Integer peage) {
        this.peage = peage;
    }

    public String getPsex() {
        return psex;
    }

    public void setPsex(String psex) {
        this.psex = psex == null ? null : psex.trim();
    }

    public Integer getPreputation() {
        return preputation;
    }

    public void setPreputation(Integer preputation) {
        this.preputation = preputation;
    }

    public Integer getPmoney() {
        return pmoney;
    }

    public void setPmoney(Integer pmoney) {
        this.pmoney = pmoney;
    }

    public Integer getPstau() {
        return pstau;
    }

    public void setPstau(Integer pstau) {
        this.pstau = pstau;
    }

    public Integer getPcount() {
        return pcount;
    }

    public void setPcount(Integer pcount) {
        this.pcount = pcount;
    }

    public Integer getPuserid() {
        return puserid;
    }

    public void setPuserid(Integer puserid) {
        this.puserid = puserid;
    }
}