package com.elastic.provider.entity;

import java.util.Date;

import com.baomidou.mybatisplus.extension.activerecord.Model;



import lombok.Data;
import io.swagger.annotations.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;


/**
 * 商品信息(PmsProduct)表实体类
 *
 * @author cailonghao
 * @since 2021-06-29 10:57:30
 */
@Data
@ApiModel("商品信息")
@Document(indexName = "pms_product")
@SuppressWarnings("serial")
public class PmsProduct {

    @Id
    @ApiModelProperty("$column.comment")
    private Long id;

    @ApiModelProperty("$column.comment")
    private Long brandId;

    @ApiModelProperty("$column.comment")
    private Long productCategoryId;

    @ApiModelProperty("$column.comment")
    private Long feightTemplateId;

    @ApiModelProperty("$column.comment")
    private Long productAttributeCategoryId;

    @ApiModelProperty("$column.comment")
    private String name;

    @ApiModelProperty("$column.comment")
    private String pic;
    //货号    
    @ApiModelProperty("货号")
    private String productSn;
    //删除状态：0->未删除；1->已删除    
    @ApiModelProperty("删除状态：0->未删除；1->已删除")
    private Integer deleteStatus;
    //上架状态：0->下架；1->上架    
    @ApiModelProperty("上架状态：0->下架；1->上架")
    private Integer publishStatus;
    //新品状态:0->不是新品；1->新品    
    @ApiModelProperty("新品状态:0->不是新品；1->新品")
    private Integer newStatus;
    //推荐状态；0->不推荐；1->推荐    
    @ApiModelProperty("推荐状态；0->不推荐；1->推荐")
    private Integer recommandStatus;
    //审核状态：0->未审核；1->审核通过    
    @ApiModelProperty("审核状态：0->未审核；1->审核通过")
    private Integer verifyStatus;
    //排序    
    @ApiModelProperty("排序")
    private Integer sort;
    //销量    
    @ApiModelProperty("销量")
    private Integer sale;

    @ApiModelProperty("$column.comment")
    private Double price;
    //促销价格    
    @ApiModelProperty("促销价格")
    private Double promotionPrice;
    //赠送的成长值    
    @ApiModelProperty("赠送的成长值")
    private Integer giftGrowth;
    //赠送的积分    
    @ApiModelProperty("赠送的积分")
    private Integer giftPoint;
    //限制使用的积分数    
    @ApiModelProperty("限制使用的积分数")
    private Integer usePointLimit;
    //副标题    
    @ApiModelProperty("副标题")
    private String subTitle;
    //商品描述    
    @ApiModelProperty("商品描述")
    private String description;
    //市场价    
    @ApiModelProperty("市场价")
    private Double originalPrice;
    //库存    
    @ApiModelProperty("库存")
    private Integer stock;
    //库存预警值    
    @ApiModelProperty("库存预警值")
    private Integer lowStock;
    //单位    
    @ApiModelProperty("单位")
    private String unit;
    //商品重量，默认为克    
    @ApiModelProperty("商品重量，默认为克")
    private Double weight;
    //是否为预告商品：0->不是；1->是    
    @ApiModelProperty("是否为预告商品：0->不是；1->是")
    private Integer previewStatus;
    //以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮    
    @ApiModelProperty("以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮")
    private String serviceIds;

    @ApiModelProperty("$column.comment")
    private String keywords;

    @ApiModelProperty("$column.comment")
    private String note;
    //画册图片，连产品图片限制为5张，以逗号分割    
    @ApiModelProperty("画册图片，连产品图片限制为5张，以逗号分割")
    private String albumPics;

    @ApiModelProperty("$column.comment")
    private String detailTitle;

    @ApiModelProperty("$column.comment")
    private String detailDesc;
    //产品详情网页内容    
    @ApiModelProperty("产品详情网页内容")
    private String detailHtml;
    //移动端网页详情    
    @ApiModelProperty("移动端网页详情")
    private String detailMobileHtml;
    //活动限购数量    
    @ApiModelProperty("活动限购数量")
    private Integer promotionPerLimit;
    //促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购    
    @ApiModelProperty("促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购")
    private Integer promotionType;
    //品牌名称    
    @ApiModelProperty("品牌名称")
    private String brandName;
    //商品分类名称    
    @ApiModelProperty("商品分类名称")
    private String productCategoryName;


}
