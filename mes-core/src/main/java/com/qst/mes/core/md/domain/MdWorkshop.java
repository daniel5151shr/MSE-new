package com.qst.mes.core.md.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qst.mes.common.annotation.Excel;
import com.qst.mes.common.core.domain.BaseEntity;

/**
 * 车间管理对象 md_workshop
 * 
 * @author yinjinlu
 * @date 2024-07-14
 */
public class MdWorkshop extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 车间ID */
    private Long workshopId;

    /** 车间编码 */
    @Excel(name = "车间编码")
    private String workshopCode;

    /** 车间名称 */
    @Excel(name = "车间名称")
    private String workshopName;

    /** 面积 */
    @Excel(name = "面积")
    private BigDecimal area;

    /** 负责人 */
    @Excel(name = "负责人")
    private String charge;

    /** 是否启用 */
    @Excel(name = "是否启用")
    private String enableFlag;

    public void setWorkshopId(Long workshopId) 
    {
        this.workshopId = workshopId;
    }

    public Long getWorkshopId() 
    {
        return workshopId;
    }
    public void setWorkshopCode(String workshopCode) 
    {
        this.workshopCode = workshopCode;
    }

    public String getWorkshopCode() 
    {
        return workshopCode;
    }
    public void setWorkshopName(String workshopName) 
    {
        this.workshopName = workshopName;
    }

    public String getWorkshopName() 
    {
        return workshopName;
    }
    public void setArea(BigDecimal area) 
    {
        this.area = area;
    }

    public BigDecimal getArea() 
    {
        return area;
    }
    public void setCharge(String charge) 
    {
        this.charge = charge;
    }

    public String getCharge() 
    {
        return charge;
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
            .append("workshopId", getWorkshopId())
            .append("workshopCode", getWorkshopCode())
            .append("workshopName", getWorkshopName())
            .append("area", getArea())
            .append("charge", getCharge())
            .append("enableFlag", getEnableFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
