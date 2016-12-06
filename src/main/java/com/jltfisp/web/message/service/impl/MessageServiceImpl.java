package com.jltfisp.web.message.service.impl;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.base.service.impl.BaseServiceImpl;
import com.jltfisp.web.message.dao.MessageMapper;
import com.jltfisp.web.message.entity.Message;
import com.jltfisp.web.message.service.IMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class MessageServiceImpl extends BaseServiceImpl<Message> implements IMessageService {
	@Autowired
	private MessageMapper  messageMapper;
	@Resource(name="messageMapper")
	public void setMapper(BaseMapper<Message> mapper) {
		this.mapper = mapper;
		this.messageMapper=(MessageMapper)mapper;
	}
}