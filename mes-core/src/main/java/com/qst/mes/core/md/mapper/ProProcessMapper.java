package com.qst.mes.core.md.mapper;

import java.util.List;
import com.qst.mes.core.md.domain.ProProcess;

/**
 * 生产工序管理Mapper接口
 * 
 * @author yinjinlu
 * @date 2024-07-14
 */
public interface ProProcessMapper 
{
    /**
     * 查询生产工序管理
     * 
     * @param processId 生产工序管理主键
     * @return 生产工序管理
     */
    public ProProcess selectProProcessByProcessId(Long processId);

    /**
     * 查询生产工序管理列表
     * 
     * @param proProcess 生产工序管理
     * @return 生产工序管理集合
     */
    public List<ProProcess> selectProProcessList(ProProcess proProcess);

    /**
     * 新增生产工序管理
     * 
     * @param proProcess 生产工序管理
     * @return 结果
     */
    public int insertProProcess(ProProcess proProcess);

    /**
     * 修改生产工序管理
     * 
     * @param proProcess 生产工序管理
     * @return 结果
     */
    public int updateProProcess(ProProcess proProcess);

    /**
     * 删除生产工序管理
     * 
     * @param processId 生产工序管理主键
     * @return 结果
     */
    public int deleteProProcessByProcessId(Long processId);

    /**
     * 批量删除生产工序管理
     * 
     * @param processIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteProProcessByProcessIds(Long[] processIds);
}
