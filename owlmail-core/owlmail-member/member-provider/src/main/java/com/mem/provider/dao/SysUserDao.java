package com.mem.provider.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mem.provider.entity.SysUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;


/**
 * 系统用户(SysUser)表数据库访问层
 *
 * @author cailonghao
 * @since 2021-06-21 15:41:08
 */
@Mapper
public interface SysUserDao extends BaseMapper<SysUser> {

}
