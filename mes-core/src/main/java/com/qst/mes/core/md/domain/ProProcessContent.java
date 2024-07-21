package com.qst.mes.core.md.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qst.mes.common.annotation.Excel;
import com.qst.mes.common.core.domain.BaseEntity;

/**
 * 生产工序内容对象 pro_process_content
 * 
 * @author yinjinlu
 * @date 2024-07-14
 */
public class ProProcessContent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 内容ID */
    private Long contentId;

    /** 工序ID */
    @Excel(name = "工序ID")
    private Long processId;

    /** 顺序编号 */
    @Excel(name = "顺序编号")
    private Long orderNum;

    /** 内容说明 */
    @Excel(name = "内容说明")
    private String contentText;

    /** 辅助设备 */
    @Excel(name = "辅助设备")
    private String device;

    /** 辅助材料 */
    @Excel(name = "辅助材料")
    private String material;

    public void setContentId(Long contentId) 
    {
        this.contentId = contentId;
    }

    public Long getContentId() 
    {
        return contentId;
    }
    public void setProcessId(Long processId) 
    {
        this.processId = processId;
    }

    public Long getProcessId() 
    {
        return processId;
    }
    public void setOrderNum(Long orderNum) 
    {
        this.orderNum = orderNum;
    }

    public Long getOrderNum() 
    {
        return orderNum;
    }
    public void setContentText(String contentText) 
    {
        this.contentText = contentText;
    }

    public String getContentText() 
    {
        return contentText;
    }
    public void setDevice(String device) 
    {
        this.device = device;
    }

    public String getDevice() 
    {
        return device;
    }
    public void setMaterial(String material) 
    {
        this.material = material;
    }

    public String getMaterial() 
    {
        return material;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("contentId", getContentId())
            .append("processId", getProcessId())
            .append("orderNum", getOrderNum())
            .append("contentText", getContentText())
            .append("device", getDevice())
            .append("material", getMaterial())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
