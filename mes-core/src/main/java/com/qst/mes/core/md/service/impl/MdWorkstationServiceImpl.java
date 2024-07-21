package com.qst.mes.core.md.service.impl;

import java.util.List;
import com.qst.mes.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qst.mes.core.md.mapper.MdWorkstationMapper;
import com.qst.mes.core.md.domain.MdWorkstation;
import com.qst.mes.core.md.service.IMdWorkstationService;

/**
 * 工作站管理Service业务层处理
 * 
 * @author yinjinlu
 * @date 2024-07-14
 */
@Service
public class MdWorkstationServiceImpl implements IMdWorkstationService 
{
    @Autowired
    private MdWorkstationMapper mdWorkstationMapper;

    /**
     * 查询工作站管理
     * 
     * @param workstationId 工作站管理主键
     * @return 工作站管理
     */
    @Override
    public MdWorkstation selectMdWorkstationByWorkstationId(Long workstationId)
    {
        return mdWorkstationMapper.selectMdWorkstationByWorkstationId(workstationId);
    }

    /**
     * 查询工作站管理列表
     * 
     * @param mdWorkstation 工作站管理
     * @return 工作站管理
     */
    @Override
    public List<MdWorkstation> selectMdWorkstationList(MdWorkstation mdWorkstation)
    {
        return mdWorkstationMapper.selectMdWorkstationList(mdWorkstation);
    }

    /**
     * 新增工作站管理
     * 
     * @param mdWorkstation 工作站管理
     * @return 结果
     */
    @Override
    public int insertMdWorkstation(MdWorkstation mdWorkstation)
    {
        mdWorkstation.setCreateTime(DateUtils.getNowDate());
        return mdWorkstationMapper.insertMdWorkstation(mdWorkstation);
    }

    /**
     * 修改工作站管理
     * 
     * @param mdWorkstation 工作站管理
     * @return 结果
     */
    @Override
    public int updateMdWorkstation(MdWorkstation mdWorkstation)
    {
        mdWorkstation.setUpdateTime(DateUtils.getNowDate());
        return mdWorkstationMapper.updateMdWorkstation(mdWorkstation);
    }

    /**
     * 批量删除工作站管理
     * 
     * @param workstationIds 需要删除的工作站管理主键
     * @return 结果
     */
    @Override
    public int deleteMdWorkstationByWorkstationIds(Long[] workstationIds)
    {
        return mdWorkstationMapper.deleteMdWorkstationByWorkstationIds(workstationIds);
    }

    /**
     * 删除工作站管理信息
     * 
     * @param workstationId 工作站管理主键
     * @return 结果
     */
    @Override
    public int deleteMdWorkstationByWorkstationId(Long workstationId)
    {
        return mdWorkstationMapper.deleteMdWorkstationByWorkstationId(workstationId);
    }
}
