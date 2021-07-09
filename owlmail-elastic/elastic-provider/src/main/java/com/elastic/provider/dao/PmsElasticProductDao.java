package com.elastic.provider.dao;

import com.elastic.provider.entity.PmsProduct;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Component;

@Component
public interface PmsElasticProductDao extends ElasticsearchRepository<PmsProduct,String > {


}
