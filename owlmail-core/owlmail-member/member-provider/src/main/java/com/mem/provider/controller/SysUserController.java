package com.mem.provider.controller;

import com.mem.provider.entity.SysUser;
import com.mem.provider.service.SysUserService;
import com.mem.provider.util.BaseResult;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

/**
 * 系统用户(SysUser)表控制层
 *
 * @author cailonghao
 * @since 2021-06-21 14:28:47
 */
@RestController
@RequestMapping("sysUser")
public class SysUserController {

    @Resource
    private SysUserService sysUserService;


    @ApiOperation("主键查询用户")
    @GetMapping("selectOne")
    public BaseResult<SysUser> selectOne(
            @RequestParam @ApiParam("用户ID") @NotBlank Long userId) {
        SysUser sysUser = this.sysUserService.getById(userId);
        return BaseResult.success("查询成功", sysUser);
    }

    @ApiOperation("用户名查询用户")
    @GetMapping("selectSysUserByUsername")
    public BaseResult<SysUser> selectSysUserByUsername(
            @RequestParam @ApiParam("用户名") @NotBlank String username) {
        SysUser sysUser = this.sysUserService.getSysUserByUsername(username);
        return BaseResult.success("查询成功", sysUser);
    }

    @ApiOperation("注册新用户")
    @ApiResponses({
            @ApiResponse(code = 200, message = "请求成功"),
            @ApiResponse(code = 401, message = "未登录"),
            @ApiResponse(code = 41000, message = "系统错误"),
    })
    @PostMapping("/addUser")
    public BaseResult<SysUser> addUser(@Valid SysUser sysUser) {
        sysUser.setStatus(1);
        sysUser.setCreateUserId(1l);
        sysUser.setShopId(1l);
        this.sysUserService.save(sysUser);
        sysUser = this.sysUserService.getSysUserByUsername(sysUser.getUsername());
        return BaseResult.success("查询成功", sysUser);
    }


}
