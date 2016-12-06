package com.jltfisp.web.user.entity;

import com.jltfisp.base.entity.BaseEntity;
/**
 * 
 * sys_role表
 *
 */
public class Role extends BaseEntity{
	private java.lang.Integer id; // id
	private java.lang.String roleName; // 角色名
	private java.lang.Integer parentId; // 父id
	private java.lang.Integer type; // 0前台角色1后台角色

	/**
     * 获取id属性
     *
     * @return id
     */
	public java.lang.Integer getId() {
		return id;
	}
	
	/**
	 * 设置id属性
	 *
	 * @param id
	 */
	public void setId(java.lang.Integer id) {
		this.id = id;
		
	}
	
	/**
     * 获取角色名属性
     *
     * @return roleName
     */
	public java.lang.String getRoleName() {
		return roleName;
	}
	
	/**
	 * 设置角色名属性
	 *
	 * @param roleName
	 */
	public void setRoleName(java.lang.String roleName) {
		this.roleName = roleName == null ? null : roleName.trim();
		
	}
	
	/**
     * 获取父id属性
     *
     * @return parentId
     */
	public java.lang.Integer getParentId() {
		return parentId;
	}
	
	/**
	 * 设置父id属性
	 *
	 * @param parentId
	 */
	public void setParentId(java.lang.Integer parentId) {
		this.parentId = parentId;
		
	}
	
	/**
     * 获取0前台角色1后台角色属性
     *
     * @return type
     */
	public java.lang.Integer getType() {
		return type;
	}
	
	/**
	 * 设置0前台角色1后台角色属性
	 *
	 * @param type
	 */
	public void setType(java.lang.Integer type) {
		this.type = type;
		
	}
	
	
}