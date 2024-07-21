package com.qst.mes.core.md.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.qst.mes.common.annotation.Excel;
import com.qst.mes.common.core.domain.BaseEntity;

/**
 * 工作站管理对象 md_workstation
 * 
 * @author yinjinlu
 * @date 2024-07-14
 */
public class MdWorkstation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 工作站ID */
    private Long workstationId;

    /** 工作站编码 */
    @Excel(name = "工作站编码")
    private String workstationCode;

    /** 工作站名称 */
    @Excel(name = "工作站名称")
    private String workstationName;

    /** 所在车间ID */
    @Excel(name = "所在车间ID")
    private Long workshopId;

    /** 所在车间编码 */
    @Excel(name = "所在车间编码")
    private String workshopCode;

    /** 所在车间名称 */
    @Excel(name = "所在车间名称")
    private String workshopName;

    /** 工序ID */
    @Excel(name = "工序ID")
    private Long processId;

    /** 工序编码 */
    @Excel(name = "工序编码")
    private String processCode;

    /** 工序名称 */
    @Excel(name = "工序名称")
    private String processName;

    /** 是否启用 */
    @Excel(name = "是否启用")
    private String enableFlag;

    public void setWorkstationId(Long workstationId) 
    {
        this.workstationId = workstationId;
    }

    public Long getWorkstationId() 
    {
        return workstationId;
    }
    public void setWorkstationCode(String workstationCode) 
    {
        this.workstationCode = workstationCode;
    }

    public String getWorkstationCode() 
    {
        return workstationCode;
    }
    public void setWorkstationName(String workstationName) 
    {
        this.workstationName = workstationName;
    }

    public String getWorkstationName() 
    {
        return workstationName;
    }
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
    public void setProcessId(Long processId) 
    {
        this.processId = processId;
    }

    public Long getProcessId() 
    {
        return processId;
    }
    public void setProcessCode(String processCode) 
    {
        this.processCode = processCode;
    }

    public String getProcessCode() 
    {
        return processCode;
    }
    public void setProcessName(String processName) 
    {
        this.processName = processName;
    }

    public String getProcessName() 
    {
        return processName;
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
            .append("workstationId", getWorkstationId())
            .append("workstationCode", getWorkstationCode())
            .append("workstationName", getWorkstationName())
            .append("workshopId", getWorkshopId())
            .append("workshopCode", getWorkshopCode())
            .append("workshopName", getWorkshopName())
            .append("processId", getProcessId())
            .append("processCode", getProcessCode())
            .append("processName", getProcessName())
            .append("enableFlag", getEnableFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
