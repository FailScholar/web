package com.jltfisp.web.loan.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.jltfisp.base.basedao.BaseMapper;
import com.jltfisp.web.loan.entity.JlfispPsBaseDto;
import com.jltfisp.web.loan.entity.JltfispCoBase;
import com.jltfisp.web.loan.entity.JltfispCoBaseDto;
import com.jltfisp.web.loan.entity.JltfispPsInfo;
/**
 * 保费补贴数据访问层接口
 * @author cuihong.ge
 *
 */
public interface SubSidyMapper extends BaseMapper<JltfispCoBase> {

 /**
  * 根据企业用户的Id获取企业已经申请的贷款
  * @param 企业用户id
  * @return JlfispPsBaseDto
  */
 public List<JlfispPsBaseDto> getJlfispPsBaseDtoByUserId(@Param("user_id") Integer user_id);
 /**
  * 根据企业基本信息Id获取保费补贴信息
  * @param id 企业基本信息
  * @return JltfispPsInfo
  */
 public List<JltfispPsInfo> getJltfispPsInfoListByBaseId(@Param("info_id") Integer info_id);
 /**
  * 根据用户id企业名称判断企业是否已经申请保费补贴信息
  * @param userId 用户id
  * @param companyName 企业名称
  * @return
  */
 public JltfispCoBaseDto getJlfispPsBaseByUserIdAndName(Map map);

}
