package com.qst.mes.core.md.service.impl;

import java.util.List;
import com.qst.mes.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qst.mes.core.md.mapper.MdWorkshopMapper;
import com.qst.mes.core.md.domain.MdWorkshop;
import com.qst.mes.core.md.service.IMdWorkshopService;

/**
 * 车间管理Service业务层处理
 * 
 * @author yinjinlu
 * @date 2024-07-14
 */
@Service
public class MdWorkshopServiceImpl implements IMdWorkshopService 
{
    @Autowired
    private MdWorkshopMapper mdWorkshopMapper;

    /**
     * 查询车间管理
     * 
     * @param workshopId 车间管理主键
     * @return 车间管理
     */
    @Override
    public MdWorkshop selectMdWorkshopByWorkshopId(Long workshopId)
    {
        return mdWorkshopMapper.selectMdWorkshopByWorkshopId(workshopId);
    }

    /**
     * 查询车间管理列表
     * 
     * @param mdWorkshop 车间管理
     * @return 车间管理
     */
    @Override
    public List<MdWorkshop> selectMdWorkshopList(MdWorkshop mdWorkshop)
    {
        return mdWorkshopMapper.selectMdWorkshopList(mdWorkshop);
    }

    /**
     * 新增车间管理
     * 
     * @param mdWorkshop 车间管理
     * @return 结果
     */
    @Override
    public int insertMdWorkshop(MdWorkshop mdWorkshop)
    {
        mdWorkshop.setCreateTime(DateUtils.getNowDate());
        return mdWorkshopMapper.insertMdWorkshop(mdWorkshop);
    }

    /**
     * 修改车间管理
     * 
     * @param mdWorkshop 车间管理
     * @return 结果
     */
    @Override
    public int updateMdWorkshop(MdWorkshop mdWorkshop)
    {
        mdWorkshop.setUpdateTime(DateUtils.getNowDate());
        return mdWorkshopMapper.updateMdWorkshop(mdWorkshop);
    }

    /**
     * 批量删除车间管理
     * 
     * @param workshopIds 需要删除的车间管理主键
     * @return 结果
     */
    @Override
    public int deleteMdWorkshopByWorkshopIds(Long[] workshopIds)
    {
        return mdWorkshopMapper.deleteMdWorkshopByWorkshopIds(workshopIds);
    }

    /**
     * 删除车间管理信息
     * 
     * @param workshopId 车间管理主键
     * @return 结果
     */
    @Override
    public int deleteMdWorkshopByWorkshopId(Long workshopId)
    {
        return mdWorkshopMapper.deleteMdWorkshopByWorkshopId(workshopId);
    }
}
