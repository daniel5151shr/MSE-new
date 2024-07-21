package com.qst.mes.core.md.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qst.mes.common.annotation.Excel;
import com.qst.mes.common.core.domain.BaseEntity;

/**
 * 客户对象 md_client
 * 
 * @author qst
 * @date 2024-07-14
 */
public class MdClient extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 客户ID */
    private Long clientId;

    /** 客户编码 */
    @Excel(name = "客户编码")
    private String clientCode;

    /** 客户名称 */
    @Excel(name = "客户名称")
    private String clientName;

    /** 客户类型 */
    @Excel(name = "客户类型")
    private String clientType;

    /** 客户地址 */
    @Excel(name = "客户地址")
    private String address;

    /** 客户联系人 */
    @Excel(name = "客户联系人")
    private String contact;

    /** 客户电话 */
    @Excel(name = "客户电话")
    private String phoneNumber;

    /** 统一社会信用代码 */
    @Excel(name = "统一社会信用代码")
    private String creditCode;

    /** 是否启用 */
    @Excel(name = "是否启用")
    private String enableFlag;

    public void setClientId(Long clientId) 
    {
        this.clientId = clientId;
    }

    public Long getClientId() 
    {
        return clientId;
    }
    public void setClientCode(String clientCode) 
    {
        this.clientCode = clientCode;
    }

    public String getClientCode() 
    {
        return clientCode;
    }
    public void setClientName(String clientName) 
    {
        this.clientName = clientName;
    }

    public String getClientName() 
    {
        return clientName;
    }
    public void setClientType(String clientType) 
    {
        this.clientType = clientType;
    }

    public String getClientType() 
    {
        return clientType;
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
            .append("clientId", getClientId())
            .append("clientCode", getClientCode())
            .append("clientName", getClientName())
            .append("clientType", getClientType())
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
