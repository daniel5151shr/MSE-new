package com.qst.mes.core.md.mapper;

import java.util.List;
import com.qst.mes.core.md.domain.MdClient;

/**
 * 客户Mapper接口
 * 
 * @author qst
 * @date 2024-07-14
 */
public interface MdClientMapper 
{
    /**
     * 查询客户
     * 
     * @param clientId 客户主键
     * @return 客户
     */
    public MdClient selectMdClientByClientId(Long clientId);

    /**
     * 查询客户列表
     * 
     * @param mdClient 客户
     * @return 客户集合
     */
    public List<MdClient> selectMdClientList(MdClient mdClient);

    /**
     * 新增客户
     * 
     * @param mdClient 客户
     * @return 结果
     */
    public int insertMdClient(MdClient mdClient);

    /**
     * 修改客户
     * 
     * @param mdClient 客户
     * @return 结果
     */
    public int updateMdClient(MdClient mdClient);

    /**
     * 删除客户
     * 
     * @param clientId 客户主键
     * @return 结果
     */
    public int deleteMdClientByClientId(Long clientId);

    /**
     * 批量删除客户
     * 
     * @param clientIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMdClientByClientIds(Long[] clientIds);
}
