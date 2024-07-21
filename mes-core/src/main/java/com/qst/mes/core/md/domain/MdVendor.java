package com.qst.mes.core.md.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qst.mes.common.annotation.Excel;
import com.qst.mes.common.core.domain.BaseEntity;

/**
 * 供应商对象 md_vendor
 * 
 * @author qst
 * @date 2024-07-14
 */
public class MdVendor extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 供应商ID */
    private Long vendorId;

    /** 供应商编码 */
    @Excel(name = "供应商编码")
    private String vendorCode;

    /** 供应商名称 */
    @Excel(name = "供应商名称")
    private String vendorName;

    /** 供应商简介 */
    @Excel(name = "供应商简介")
    private String vendorDes;

    /** 供应商等级 */
    @Excel(name = "供应商等级")
    private String vendorLevel;

    /** 供应商评分 */
    @Excel(name = "供应商评分")
    private Long vendorScore;

    /** 供应商地址 */
    @Excel(name = "供应商地址")
    private String address;

    /** 供应商联系人 */
    @Excel(name = "供应商联系人")
    private String contact;

    /** 供应商电话 */
    @Excel(name = "供应商电话")
    private String phoneNumber;

    /** 统一社会信用代码 */
    @Excel(name = "统一社会信用代码")
    private String creditCode;

    /** 是否启用 */
    @Excel(name = "是否启用")
    private String enableFlag;

    public void setVendorId(Long vendorId) 
    {
        this.vendorId = vendorId;
    }

    public Long getVendorId() 
    {
        return vendorId;
    }
    public void setVendorCode(String vendorCode) 
    {
        this.vendorCode = vendorCode;
    }

    public String getVendorCode() 
    {
        return vendorCode;
    }
    public void setVendorName(String vendorName) 
    {
        this.vendorName = vendorName;
    }

    public String getVendorName() 
    {
        return vendorName;
    }
    public void setVendorDes(String vendorDes) 
    {
        this.vendorDes = vendorDes;
    }

    public String getVendorDes() 
    {
        return vendorDes;
    }
    public void setVendorLevel(String vendorLevel) 
    {
        this.vendorLevel = vendorLevel;
    }

    public String getVendorLevel() 
    {
        return vendorLevel;
    }
    public void setVendorScore(Long vendorScore) 
    {
        this.vendorScore = vendorScore;
    }

    public Long getVendorScore() 
    {
        return vendorScore;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setContact(String contact) 
    {
        this.contact = contact;
    }

    public String getContact() 
    {
        return contact;
    }
    public void setPhoneNumber(String phoneNumber) 
    {
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneNumber() 
    {
        return phoneNumber;
    }
    public void setCreditCode(String creditCode) 
    {
        this.creditCode = creditCode;
    }

    public String getCreditCode() 
    {
        return creditCode;
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
            .append("vendorId", getVendorId())
            .append("vendorCode", getVendorCode())
            .append("vendorName", getVendorName())
            .append("vendorDes", getVendorDes())
            .append("vendorLevel", getVendorLevel())
            .append("vendorScore", getVendorScore())
            .append("address", getAddress())
            .append("contact", getContact())
            .append("phoneNumber", getPhoneNumber())
            .append("creditCode", getCreditCode())
            .append("enableFlag", getEnableFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
