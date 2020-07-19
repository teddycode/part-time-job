package com.util;
import java.util.List;


/**

 * 分页工具类

 *

 * @author

 *

 */

public class PageBean<T> {

    private int pageIndex = 1;//当前页码
    private int pageCount = 10;//每页显示行数
    private int totalCount = 0;//总行数
    private int totalPage = 0;//总页数
    private List<T> emp=null;
    public int getPageIndex() {
        return pageIndex;
    }
    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }
    public int getPageCount() {
        return pageCount;
    }
    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        //获取总页数
        if(totalCount>0)
        {
            this.totalPage=totalCount%this.pageCount==0?totalCount/this.pageCount:totalCount/this.pageCount+1;
        }
    }
    public int getTotalPage() {
        return totalPage;
    }
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    public List<T> getEmp() {
        return emp;
    }
    public void setEmp(List<T> emp) {
        this.emp = emp;
    }

}
