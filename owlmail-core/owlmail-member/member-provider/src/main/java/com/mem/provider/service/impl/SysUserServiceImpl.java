package com.mem.provider.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mem.provider.dao.SysUserDao;
import com.mem.provider.entity.SysUser;
import com.mem.provider.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 系统用户(SysUser)表服务实现类
 *
 * @author cailonghao
 * @since 2021-06-21 15:41:08
 */
@Service("sysUserService")
public class SysUserServiceImpl extends ServiceImpl<SysUserDao, SysUser> implements SysUserService {

    @Autowired
    SysUserDao sysUserDao;

    @Override
    public SysUser getSysUserByUsername(String username) {
        QueryWrapper<SysUser> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", username);
        return sysUserDao.selectOne(queryWrapper);

    }
}
