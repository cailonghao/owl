package com.elastic.provider.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.elastic.provider.dao.PmsProductDao;
import com.elastic.provider.entity.PmsProduct;
import com.elastic.provider.service.PmsProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 商品信息(PmsProduct)表服务实现类
 *
 * @author cailonghao
 * @since 2021-06-29 10:57:31
 */
@Service("pmsProductService")
public class PmsProductServiceImpl extends ServiceImpl<PmsProductDao, PmsProduct> implements PmsProductService {

    @Autowired
    PmsProductDao pmsProductDao;

    @Override
    public List<PmsProduct> getAllProduct() {
        QueryWrapper<PmsProduct> queryWrapper = new QueryWrapper<>();
        queryWrapper.gt("id", 0);
        return pmsProductDao.selectList(queryWrapper);
    }
}
