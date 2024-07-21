package com.qst.mes.core.md.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qst.mes.common.annotation.Excel;
import com.qst.mes.common.core.domain.BaseEntity;

/**
 * 计量单位管理对象 md_unit_measure
 * 
 * @author yinjinlu
 * @date 2024-07-06
 */
public class MdUnitMeasure extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 单位ID */
    private Long measureId;

    /** 单位编码 */
    @Excel(name = "单位编码")
    private String measureCode;

    /** 单位名称 */
    @Excel(name = "单位名称")
    private String measureName;

    /** 是否启用 */
    @Excel(name = "是否启用")
    private String enableFlag;

    public void setMeasureId(Long measureId) 
    {
        this.measureId = measureId;
    }

    public Long getMeasureId() 
    {
        return measureId;
    }
    public void setMeasureCode(String measureCode) 
    {
        this.measureCode = measureCode;
    }

    public String getMeasureCode() 
    {
        return measureCode;
    }
    public void setMeasureName(String measureName) 
    {
        this.measureName = measureName;
    }

    public String getMeasureName() 
    {
        return measureName;
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
            .append("measureId", getMeasureId())
            .append("measureCode", getMeasureCode())
            .append("measureName", getMeasureName())
            .append("enableFlag", getEnableFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
