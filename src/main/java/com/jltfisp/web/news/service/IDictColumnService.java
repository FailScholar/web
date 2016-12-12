package com.jltfisp.web.news.service;

import com.jltfisp.base.service.IBaseService;
import com.jltfisp.web.news.entity.DictColumnDto;
	/**
	 * 新闻资讯业务处理层
	 * @author cuihong.ge
	 *
	 */
	public interface IDictColumnService extends IBaseService<DictColumnDto> {
        /**
         * 根据主键Id获取字典类型里面的一级栏目的值
         * @param id
         * @return
         */
		public DictColumnDto SelectDictColumnDtoById(Integer id);
}
