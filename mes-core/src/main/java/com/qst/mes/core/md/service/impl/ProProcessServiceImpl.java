package com.qst.mes.core.md.service.impl;

import java.util.List;
import com.qst.mes.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qst.mes.core.md.mapper.ProProcessMapper;
import com.qst.mes.core.md.domain.ProProcess;
import com.qst.mes.core.md.service.IProProcessService;

/**
 * 生产工序管理Service业务层处理
 * 
 * @author yinjinlu
 * @date 2024-07-14
 */
@Service
public class ProProcessServiceImpl implements IProProcessService 
{
    @Autowired
    private ProProcessMapper proProcessMapper;

    /**
     * 查询生产工序管理
     * 
     * @param processId 生产工序管理主键
     * @return 生产工序管理
     */
    @Override
    public ProProcess selectProProcessByProcessId(Long processId)
    {
        return proProcessMapper.selectProProcessByProcessId(processId);
    }

    /**
     * 查询生产工序管理列表
     * 
     * @param proProcess 生产工序管理
     * @return 生产工序管理
     */
    @Override
    public List<ProProcess> selectProProcessList(ProProcess proProcess)
    {
        return proProcessMapper.selectProProcessList(proProcess);
    }

    /**
     * 新增生产工序管理
     * 
     * @param proProcess 生产工序管理
     * @return 结果
     */
    @Override
    public int insertProProcess(ProProcess proProcess)
    {
        proProcess.setCreateTime(DateUtils.getNowDate());
        return proProcessMapper.insertProProcess(proProcess);
    }

    /**
     * 修改生产工序管理
     * 
     * @param proProcess 生产工序管理
     * @return 结果
     */
    @Override
    public int updateProProcess(ProProcess proProcess)
    {
        proProcess.setUpdateTime(DateUtils.getNowDate());
        return proProcessMapper.updateProProcess(proProcess);
    }

    /**
     * 批量删除生产工序管理
     * 
     * @param processIds 需要删除的生产工序管理主键
     * @return 结果
     */
    @Override
    public int deleteProProcessByProcessIds(Long[] processIds)
    {
        return proProcessMapper.deleteProProcessByProcessIds(processIds);
    }

    /**
     * 删除生产工序管理信息
     * 
     * @param processId 生产工序管理主键
     * @return 结果
     */
    @Override
    public int deleteProProcessByProcessId(Long processId)
    {
        return proProcessMapper.deleteProProcessByProcessId(processId);
    }
}
