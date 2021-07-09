package com.mem.provider.entity;

import java.util.Date;

import com.baomidou.mybatisplus.extension.activerecord.Model;

import java.io.Serializable;

import lombok.Data;
import io.swagger.annotations.*;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;


/**
 * 系统用户(SysUser)表实体类
 *
 * @author cailonghao
 * @since 2021-06-21 15:41:08
 */
@Data
@ApiModel("系统用户")
@SuppressWarnings("serial")
public class SysUser extends Model<SysUser> {

    @ApiModelProperty("$column.comment")
    private Long userId;
    //用户名
    @NotBlank(message = "用户名不能为空")
    @ApiModelProperty("用户名")
    private String username;
    //密码
    @NotBlank(message = "密码不能为空")
    @ApiModelProperty("密码")
    private String password;
    //邮箱
    @Email(message = "邮箱格式错误")
    @ApiModelProperty("邮箱")
    private String email;
    //手机号    
    @ApiModelProperty("手机号")
    private String mobile;
    //状态  0：禁用   1：正常    
    @ApiModelProperty("状态  0：禁用   1：正常")
    private Integer status;
    //创建者ID    
    @ApiModelProperty("创建者ID")
    private Long createUserId;
    //创建时间    
    @ApiModelProperty("创建时间")
    private Date createTime;
    //用户所在的商城Id    
    @ApiModelProperty("用户所在的商城Id")
    private Long shopId;


}
