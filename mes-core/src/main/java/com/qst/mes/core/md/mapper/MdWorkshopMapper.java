package com.qst.mes.core.md.mapper;

import java.util.List;
import com.qst.mes.core.md.domain.MdWorkshop;

/**
 * 车间管理Mapper接口
 * 
 * @author yinjinlu
 * @date 2024-07-14
 */
public interface MdWorkshopMapper 
{
    /**
     * 查询车间管理
     * 
     * @param workshopId 车间管理主键
     * @return 车间管理
     */
    public MdWorkshop selectMdWorkshopByWorkshopId(Long workshopId);

    /**
     * 查询车间管理列表
     * 
     * @param mdWorkshop 车间管理
     * @return 车间管理集合
     */
    public List<MdWorkshop> selectMdWorkshopList(MdWorkshop mdWorkshop);

    /**
     * 新增车间管理
     * 
     * @param mdWorkshop 车间管理
     * @return 结果
     */
    public int insertMdWorkshop(MdWorkshop mdWorkshop);

    /**
     * 修改车间管理
     * 
     * @param mdWorkshop 车间管理
     * @return 结果
     */
    public int updateMdWorkshop(MdWorkshop mdWorkshop);

    /**
     * 删除车间管理
     * 
     * @param workshopId 车间管理主键
     * @return 结果
     */
    public int deleteMdWorkshopByWorkshopId(Long workshopId);

    /**
     * 批量删除车间管理
     * 
     * @param workshopIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMdWorkshopByWorkshopIds(Long[] workshopIds);
}
