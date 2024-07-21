package com.qst.mes.core.md.service;

import java.util.List;
import com.qst.mes.core.md.domain.MdItemType;

/**
 * 物料产品分类Service接口
 * 
 * @author yinjinlu
 * @date 2024-07-21
 */
public interface IMdItemTypeService 
{
    /**
     * 查询物料产品分类
     * 
     * @param itemTypeId 物料产品分类主键
     * @return 物料产品分类
     */
    public MdItemType selectMdItemTypeByItemTypeId(Long itemTypeId);

    /**
     * 查询物料产品分类列表
     * 
     * @param mdItemType 物料产品分类
     * @return 物料产品分类集合
     */
    public List<MdItemType> selectMdItemTypeList(MdItemType mdItemType);

    /**
     * 新增物料产品分类
     * 
     * @param mdItemType 物料产品分类
     * @return 结果
     */
    public int insertMdItemType(MdItemType mdItemType);

    /**
     * 修改物料产品分类
     * 
     * @param mdItemType 物料产品分类
     * @return 结果
     */
    public int updateMdItemType(MdItemType mdItemType);

    /**
     * 批量删除物料产品分类
     * 
     * @param itemTypeIds 需要删除的物料产品分类主键集合
     * @return 结果
     */
    public int deleteMdItemTypeByItemTypeIds(Long[] itemTypeIds);

    /**
     * 删除物料产品分类信息
     * 
     * @param itemTypeId 物料产品分类主键
     * @return 结果
     */
    public int deleteMdItemTypeByItemTypeId(Long itemTypeId);
}
