package com.qst.mes.core.md.service;

import java.util.List;
import com.qst.mes.core.md.domain.MdUnitMeasure;

/**
 * 计量单位管理Service接口
 * 
 * @author yinjinlu
 * @date 2024-07-06
 */
public interface IMdUnitMeasureService 
{
    /**
     * 查询计量单位管理
     * 
     * @param measureId 计量单位管理主键
     * @return 计量单位管理
     */
    public MdUnitMeasure selectMdUnitMeasureByMeasureId(Long measureId);

    /**
     * 查询计量单位管理列表
     * 
     * @param mdUnitMeasure 计量单位管理
     * @return 计量单位管理集合
     */
    public List<MdUnitMeasure> selectMdUnitMeasureList(MdUnitMeasure mdUnitMeasure);

    /**
     * 新增计量单位管理
     * 
     * @param mdUnitMeasure 计量单位管理
     * @return 结果
     */
    public int insertMdUnitMeasure(MdUnitMeasure mdUnitMeasure);

    /**
     * 修改计量单位管理
     * 
     * @param mdUnitMeasure 计量单位管理
     * @return 结果
     */
    public int updateMdUnitMeasure(MdUnitMeasure mdUnitMeasure);

    /**
     * 批量删除计量单位管理
     * 
     * @param measureIds 需要删除的计量单位管理主键集合
     * @return 结果
     */
    public int deleteMdUnitMeasureByMeasureIds(Long[] measureIds);

    /**
     * 删除计量单位管理信息
     * 
     * @param measureId 计量单位管理主键
     * @return 结果
     */
    public int deleteMdUnitMeasureByMeasureId(Long measureId);
}
