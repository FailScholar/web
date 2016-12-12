package com.jltfisp.web.news.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.news.dao.DictColumnMapper;
import com.jltfisp.web.news.entity.DictColumnDto;
import com.jltfisp.web.news.service.IDictColumnService;
/**
 * 资讯中心业务处理层实现类
 * @author cuihong.ge
 *
 */
@Service
@Transactional
public class DictColumnServiceImpl extends BaseServiceImpl<DictColumnDto> implements IDictColumnService{
	@Autowired
	private DictColumnMapper dictColumnMapper;

	@Override
	public DictColumnDto SelectDictColumnDtoById(Integer id) {
		DictColumnDto dictColumnDto=new DictColumnDto();
		dictColumnDto.setId(id);
		return dictColumnMapper.selectByPrimaryKey(dictColumnDto);
	}
}
