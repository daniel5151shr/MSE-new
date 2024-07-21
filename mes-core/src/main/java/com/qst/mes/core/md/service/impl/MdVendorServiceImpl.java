package com.qst.mes.core.md.service.impl;

import java.util.List;
import com.qst.mes.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qst.mes.core.md.mapper.MdVendorMapper;
import com.qst.mes.core.md.domain.MdVendor;
import com.qst.mes.core.md.service.IMdVendorService;

/**
 * 供应商Service业务层处理
 * 
 * @author qst
 * @date 2024-07-14
 */
@Service
public class MdVendorServiceImpl implements IMdVendorService 
{
    @Autowired
    private MdVendorMapper mdVendorMapper;

    /**
     * 查询供应商
     * 
     * @param vendorId 供应商主键
     * @return 供应商
     */
    @Override
    public MdVendor selectMdVendorByVendorId(Long vendorId)
    {
        return mdVendorMapper.selectMdVendorByVendorId(vendorId);
    }

    /**
     * 查询供应商列表
     * 
     * @param mdVendor 供应商
     * @return 供应商
     */
    @Override
    public List<MdVendor> selectMdVendorList(MdVendor mdVendor)
    {
        return mdVendorMapper.selectMdVendorList(mdVendor);
    }

    /**
     * 新增供应商
     * 
     * @param mdVendor 供应商
     * @return 结果
     */
    @Override
    public int insertMdVendor(MdVendor mdVendor)
    {
        mdVendor.setCreateTime(DateUtils.getNowDate());
        return mdVendorMapper.insertMdVendor(mdVendor);
    }

    /**
     * 修改供应商
     * 
     * @param mdVendor 供应商
     * @return 结果
     */
    @Override
    public int updateMdVendor(MdVendor mdVendor)
    {
        mdVendor.setUpdateTime(DateUtils.getNowDate());
        return mdVendorMapper.updateMdVendor(mdVendor);
    }

    /**
     * 批量删除供应商
     * 
     * @param vendorIds 需要删除的供应商主键
     * @return 结果
     */
    @Override
    public int deleteMdVendorByVendorIds(Long[] vendorIds)
    {
        return mdVendorMapper.deleteMdVendorByVendorIds(vendorIds);
    }

    /**
     * 删除供应商信息
     * 
     * @param vendorId 供应商主键
     * @return 结果
     */
    @Override
    public int deleteMdVendorByVendorId(Long vendorId)
    {
        return mdVendorMapper.deleteMdVendorByVendorId(vendorId);
    }
}
