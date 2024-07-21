package com.qst.mes.core.md.service.impl;

import java.util.List;
import com.qst.mes.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qst.mes.core.md.mapper.MdClientMapper;
import com.qst.mes.core.md.domain.MdClient;
import com.qst.mes.core.md.service.IMdClientService;

/**
 * 客户Service业务层处理
 * 
 * @author qst
 * @date 2024-07-14
 */
@Service
public class MdClientServiceImpl implements IMdClientService 
{
    @Autowired
    private MdClientMapper mdClientMapper;

    /**
     * 查询客户
     * 
     * @param clientId 客户主键
     * @return 客户
     */
    @Override
    public MdClient selectMdClientByClientId(Long clientId)
    {
        return mdClientMapper.selectMdClientByClientId(clientId);
    }

    /**
     * 查询客户列表
     * 
     * @param mdClient 客户
     * @return 客户
     */
    @Override
    public List<MdClient> selectMdClientList(MdClient mdClient)
    {
        return mdClientMapper.selectMdClientList(mdClient);
    }

    /**
     * 新增客户
     * 
     * @param mdClient 客户
     * @return 结果
     */
    @Override
    public int insertMdClient(MdClient mdClient)
    {
        mdClient.setCreateTime(DateUtils.getNowDate());
        return mdClientMapper.insertMdClient(mdClient);
    }

    /**
     * 修改客户
     * 
     * @param mdClient 客户
     * @return 结果
     */
    @Override
    public int updateMdClient(MdClient mdClient)
    {
        mdClient.setUpdateTime(DateUtils.getNowDate());
        return mdClientMapper.updateMdClient(mdClient);
    }

    /**
     * 批量删除客户
     * 
     * @param clientIds 需要删除的客户主键
     * @return 结果
     */
    @Override
    public int deleteMdClientByClientIds(Long[] clientIds)
    {
        return mdClientMapper.deleteMdClientByClientIds(clientIds);
    }

    /**
     * 删除客户信息
     * 
     * @param clientId 客户主键
     * @return 结果
     */
    @Override
    public int deleteMdClientByClientId(Long clientId)
    {
        return mdClientMapper.deleteMdClientByClientId(clientId);
    }
}
