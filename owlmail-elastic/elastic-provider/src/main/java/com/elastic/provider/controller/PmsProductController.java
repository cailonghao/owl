package com.elastic.provider.controller;


import com.elastic.provider.dao.PmsElasticProductDao;
import com.elastic.provider.entity.PmsProduct;
import com.elastic.provider.service.PmsProductService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;
import java.util.Optional;

/**
 * 商品信息(PmsProduct)表控制层
 *
 * @author cailonghao
 * @since 2021-06-29 10:57:31
 */
@RestController
@RequestMapping("pmsProduct")
public class PmsProductController {
    /**
     * 服务对象
     */
    @Resource
    private PmsProductService pmsProductService;

    @Resource
    private PmsElasticProductDao pmsElasticProductDao;

    @PostMapping("/importAllToElastic")
    public String importAllToElastic() {
        List<PmsProduct> list = pmsProductService.getAllProduct();
        for (PmsProduct pmsProduct : list) {
            pmsElasticProductDao.save(pmsProduct);
        }
        return "success";
    }

    @RequestMapping("/getProduct")
    public String getProduct() {
        return pmsProductService.getById(1L).toString();
    }

    @RequestMapping("/delElasticProduct")
    public String delElasticProduct() {
        pmsElasticProductDao.deleteAll();
        return "success";
    }

    @RequestMapping("/getProductElastic")
    public String getProductElastic() {
        Optional<PmsProduct> person = pmsElasticProductDao.findById("1");
        return person.toString();
    }


}
