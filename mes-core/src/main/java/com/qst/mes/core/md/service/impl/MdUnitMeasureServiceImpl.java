package com.qst.mes.core.md.service.impl;

import java.util.List;
import com.qst.mes.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qst.mes.core.md.mapper.MdUnitMeasureMapper;
import com.qst.mes.core.md.domain.MdUnitMeasure;
import com.qst.mes.core.md.service.IMdUnitMeasureService;

/**
 * 计量单位管理Service业务层处理
 * 
 * @author yinjinlu
 * @date 2024-07-06
 */
@Service
public class MdUnitMeasureServiceImpl implements IMdUnitMeasureService 
{
    @Autowired
    private MdUnitMeasureMapper mdUnitMeasureMapper;

    /**
     * 查询计量单位管理
     * 
     * @param measureId 计量单位管理主键
     * @return 计量单位管理
     */
    @Override
    public MdUnitMeasure selectMdUnitMeasureByMeasureId(Long measureId)
    {
        return mdUnitMeasureMapper.selectMdUnitMeasureByMeasureId(measureId);
    }

    /**
     * 查询计量单位管理列表
     * 
     * @param mdUnitMeasure 计量单位管理
     * @return 计量单位管理
     */
    @Override
    public List<MdUnitMeasure> selectMdUnitMeasureList(MdUnitMeasure mdUnitMeasure)
    {
        return mdUnitMeasureMapper.selectMdUnitMeasureList(mdUnitMeasure);
    }

    /**
     * 新增计量单位管理
     * 
     * @param mdUnitMeasure 计量单位管理
     * @return 结果
     */
    @Override
    public int insertMdUnitMeasure(MdUnitMeasure mdUnitMeasure)
    {
        mdUnitMeasure.setCreateTime(DateUtils.getNowDate());
        return mdUnitMeasureMapper.insertMdUnitMeasure(mdUnitMeasure);
    }

    /**
     * 修改计量单位管理
     * 
     * @param mdUnitMeasure 计量单位管理
     * @return 结果
     */
    @Override
    public int updateMdUnitMeasure(MdUnitMeasure mdUnitMeasure)
    {
        mdUnitMeasure.setUpdateTime(DateUtils.getNowDate());
        return mdUnitMeasureMapper.updateMdUnitMeasure(mdUnitMeasure);
    }

    /**
     * 批量删除计量单位管理
     * 
     * @param measureIds 需要删除的计量单位管理主键
     * @return 结果
     */
    @Override
    public int deleteMdUnitMeasureByMeasureIds(Long[] measureIds)
    {
        return mdUnitMeasureMapper.deleteMdUnitMeasureByMeasureIds(measureIds);
    }

    /**
     * 删除计量单位管理信息
     * 
     * @param measureId 计量单位管理主键
     * @return 结果
     */
    @Override
    public int deleteMdUnitMeasureByMeasureId(Long measureId)
    {
        return mdUnitMeasureMapper.deleteMdUnitMeasureByMeasureId(measureId);
    }
}
