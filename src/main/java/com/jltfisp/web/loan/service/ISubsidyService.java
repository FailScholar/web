package com.jltfisp.web.loan.service;

import java.util.List;

import com.jltfisp.web.loan.entity.JlfispPsBaseDto;
import com.jltfisp.web.loan.entity.JltfispPsInfo;
import com.jltfisp.web.loan.entity.JltfispPsMaterialInfo;
import com.jltfisp.web.loan.entity.JltfispSubsidyCoBaseDto;

/**
 * 申请保费补贴业务处理层
 * @author cuihong.ge
 *
 */
public interface ISubsidyService {
    /**
     * 根据用户的id获取保费申请企业基本信息
     * @param id 用户id
     * @return JlfispPsBaseDto
     */
	public JlfispPsBaseDto getJlfispPsBaseDtoByUserId(Integer id);
	
	/**
     * 保存保费补贴
     * @param jltfispPsInfo
     * @return
     */
    int saveJltfispPsInfo(List<JltfispPsInfo> jltfispPsInfo);
    /**
     * 保存保费申请第二部里面的内容
     * @param jltfispPsMaterialInfo
     * @return 保存结果 1代表保存成功
     */
    public int saveJltfispPsMaterialInfo(JltfispPsMaterialInfo jltfispPsMaterialInfo);
    /**
     * 根据企业的Id获取保费补贴信息list
     * @param id 企业Id
     * @return
     */
	public List<JltfispPsInfo> getJltfispPsInfoListByCoBaseId(int id);
    /**
     * 根据用户id和企业名称判断企业是否已经申请保费补贴
     * @param id 用户id
     * @param company 公司名称
     * @return
     */
	public void getJlfispPsBaseByUserIdAndName(Integer id,
			JltfispSubsidyCoBaseDto jlfispSubsidyBaseDto);
    /**
     * 获取保费申请第二部里面的内容
     * @param id infoId
     * @return
     */
	public JltfispPsMaterialInfo getJltfispPsMaterialInfoByInfoId(int id);
	JltfispPsMaterialInfo selectByPk(Integer id);
}
