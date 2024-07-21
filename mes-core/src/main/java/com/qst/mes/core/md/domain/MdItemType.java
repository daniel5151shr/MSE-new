package com.qst.mes.core.md.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qst.mes.common.annotation.Excel;
import com.qst.mes.common.core.domain.TreeEntity;

/**
 * 物料产品分类对象 md_item_type
 * 
 * @author yinjinlu
 * @date 2024-07-21
 */
public class MdItemType extends TreeEntity
{
    private static final long serialVersionUID = 1L;

    /** 产品物料类型ID */
    private Long itemTypeId;

    /** 产品物料类型编码 */
    @Excel(name = "产品物料类型编码")
    private String itemTypeCode;

    /** 产品物料类型名称 */
    @Excel(name = "产品物料类型名称")
    private String itemTypeName;

    /** 父类型ID */
    @Excel(name = "父类型ID")
    private Long parentTypeId;

    /** 产品物料标识 */
    @Excel(name = "产品物料标识")
    private String itemOrProduct;

    /** 是否启用 */
    @Excel(name = "是否启用")
    private String enableFlag;

    public void setItemTypeId(Long itemTypeId) 
    {
        this.itemTypeId = itemTypeId;
    }

    public Long getItemTypeId() 
    {
        return itemTypeId;
    }
    public void setItemTypeCode(String itemTypeCode) 
    {
        this.itemTypeCode = itemTypeCode;
    }

    public String getItemTypeCode() 
    {
        return itemTypeCode;
    }
    public void setItemTypeName(String itemTypeName) 
    {
        this.itemTypeName = itemTypeName;
    }

    public String getItemTypeName() 
    {
        return itemTypeName;
    }
    public void setParentTypeId(Long parentTypeId) 
    {
        this.parentTypeId = parentTypeId;
    }

    public Long getParentTypeId() 
    {
        return parentTypeId;
    }
    public void setItemOrProduct(String itemOrProduct) 
    {
        this.itemOrProduct = itemOrProduct;
    }

    public String getItemOrProduct() 
    {
        return itemOrProduct;
    }
    public void setEnableFlag(String enableFlag) 
    {
        this.enableFlag = enableFlag;
    }

    public String getEnableFlag() 
    {
        return enableFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("itemTypeId", getItemTypeId())
            .append("itemTypeCode", getItemTypeCode())
            .append("itemTypeName", getItemTypeName())
            .append("parentTypeId", getParentTypeId())
            .append("ancestors", getAncestors())
            .append("itemOrProduct", getItemOrProduct())
            .append("enableFlag", getEnableFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
