package com.qst.mes.core.md.service;

import java.util.List;
import com.qst.mes.core.md.domain.MdWorkstation;

/**
 * 工作站管理Service接口
 * 
 * @author yinjinlu
 * @date 2024-07-14
 */
public interface IMdWorkstationService 
{
    /**
     * 查询工作站管理
     * 
     * @param workstationId 工作站管理主键
     * @return 工作站管理
     */
    public MdWorkstation selectMdWorkstationByWorkstationId(Long workstationId);

    /**
     * 查询工作站管理列表
     * 
     * @param mdWorkstation 工作站管理
     * @return 工作站管理集合
     */
    public List<MdWorkstation> selectMdWorkstationList(MdWorkstation mdWorkstation);

    /**
     * 新增工作站管理
     * 
     * @param mdWorkstation 工作站管理
     * @return 结果
     */
    public int insertMdWorkstation(MdWorkstation mdWorkstation);

    /**
     * 修改工作站管理
     * 
     * @param mdWorkstation 工作站管理
     * @return 结果
     */
    public int updateMdWorkstation(MdWorkstation mdWorkstation);

    /**
     * 批量删除工作站管理
     * 
     * @param workstationIds 需要删除的工作站管理主键集合
     * @return 结果
     */
    public int deleteMdWorkstationByWorkstationIds(Long[] workstationIds);

    /**
     * 删除工作站管理信息
     * 
     * @param workstationId 工作站管理主键
     * @return 结果
     */
    public int deleteMdWorkstationByWorkstationId(Long workstationId);
}
