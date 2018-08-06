package com.zhangqiang.util;

import java.util.List;

import com.github.pagehelper.Page;

/**
 * åŠŸèƒ½æ¦‚è¦ï¼?
 * 
 * @author linbingwen
 * @since  2015å¹?10æœ?22æ—? 
 */


public class BeanUtil {

    public static <T> PagedResult<T> toPagedResult(List<T> datas) {
        PagedResult<T> result = new PagedResult<T>();
        if (datas instanceof Page) {
            Page page = (Page) datas;
            result.setPageNo(page.getPageNum());
            result.setPageSize(page.getPageSize());
            result.setDataList(page.getResult());
            result.setTotal(page.getTotal());
            result.setPages(page.getPages());
        }
        else {
            result.setPageNo(1);
            result.setPageSize(datas.size());
            result.setDataList(datas);
            result.setTotal(datas.size());
        }

        return result;
    }

}
