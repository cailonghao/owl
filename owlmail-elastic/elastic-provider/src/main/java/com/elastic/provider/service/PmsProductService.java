package com.elastic.provider.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.elastic.provider.entity.PmsProduct;

import java.util.List;

/**
 * 商品信息(PmsProduct)表服务接口
 *
 * @author cailonghao
 * @since 2021-06-29 10:57:30
 */
public interface PmsProductService extends IService<PmsProduct> {


    public List<PmsProduct> getAllProduct();
}
