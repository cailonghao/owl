package com.mem.provider.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mem.provider.entity.SysUser;

/**
 * 系统用户(SysUser)表服务接口
 *
 * @author cailonghao
 * @since 2021-06-21 15:41:08
 */
public interface SysUserService extends IService<SysUser> {

    SysUser getSysUserByUsername(String username);
}
