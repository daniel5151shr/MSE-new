package com.qst.mes.common.core.domain.entity;

import com.qst.mes.common.core.domain.BaseEntity;

import java.util.ArrayList;
import java.util.List;

public class ItemType extends BaseEntity {

    private static final long serialVersionUID = 1L;

    private Long itemTypeId;
    private String itemTypeCode;
    private String itemTypeName;
    private Long parentTypeId;
    private String ancestors;
    private String itemOrProduct;
    private String enableFlag;

    private List<ItemType> children = new ArrayList<ItemType>();


    public Long getItemTypeId() {
        return itemTypeId;
    }

    public void setItemTypeId(Long itemTypeId) {
        this.itemTypeId = itemTypeId;
    }

    public String getItemTypeCode() {
        return itemTypeCode;
    }

    public void setItemTypeCode(String itemTypeCode) {
        this.itemTypeCode = itemTypeCode;
    }

    public String getItemTypeName() {
        return itemTypeName;
    }

    public void setItemTypeName(String itemTypeName) {
        this.itemTypeName = itemTypeName;
    }

    public Long getParentTypeId() {
        return parentTypeId;
    }

    public void setParentTypeId(Long parentTypeId) {
        this.parentTypeId = parentTypeId;
    }

    public String getAncestors() {
        return ancestors;
    }

    public void setAncestors(String ancestors) {
        this.ancestors = ancestors;
    }

    public String getItemOrProduct() {
        return itemOrProduct;
    }

    public void setItemOrProduct(String itemOrProduct) {
        this.itemOrProduct = itemOrProduct;
    }

    public String getEnableFlag() {
        return enableFlag;
    }

    public void setEnableFlag(String enableFlag) {
        this.enableFlag = enableFlag;
    }

    public List<ItemType> getChildren() {
        return children;
    }

    public void setChildren(List<ItemType> children) {
        this.children = children;
    }
}
