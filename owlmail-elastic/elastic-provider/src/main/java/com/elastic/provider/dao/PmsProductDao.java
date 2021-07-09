package com.elastic.provider.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.elastic.provider.entity.PmsProduct;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;


/**
 * 商品信息(PmsProduct)表数据库访问层
 *
 * @author cailonghao
 * @since 2021-06-29 10:57:30
 */
@Mapper
public interface PmsProductDao extends BaseMapper<PmsProduct> {

}
