package com.qst.mes.core.md.service.impl;

import java.util.List;
import com.qst.mes.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qst.mes.core.md.mapper.MdItemTypeMapper;
import com.qst.mes.core.md.domain.MdItemType;
import com.qst.mes.core.md.service.IMdItemTypeService;

/**
 * 物料产品分类Service业务层处理
 * 
 * @author yinjinlu
 * @date 2024-07-21
 */
@Service
public class MdItemTypeServiceImpl implements IMdItemTypeService 
{
    @Autowired
    private MdItemTypeMapper mdItemTypeMapper;

    @Override
    public MdItemType selectItemTypeById(Long itemTypeId) {
        return mdItemTypeMapper.selectItemTypeById(itemTypeId);
    }

    @Override
    public List<MdItemType> listAllExcludingId(Long excludeId) {
        return mdItemTypeMapper.selectAllExcludingId(excludeId);
    }
    /**
     * 查询物料产品分类
     * 
     * @param itemTypeId 物料产品分类主键
     * @return 物料产品分类
     */
    @Override
    public MdItemType selectMdItemTypeByItemTypeId(Long itemTypeId)
    {
        return mdItemTypeMapper.selectMdItemTypeByItemTypeId(itemTypeId);
    }

    /**
     * 查询物料产品分类列表
     * 
     * @param mdItemType 物料产品分类
     * @return 物料产品分类
     */
    @Override
    public List<MdItemType> selectMdItemTypeList(MdItemType mdItemType)
    {
        return mdItemTypeMapper.selectMdItemTypeList(mdItemType);
    }

    /**
     * 新增物料产品分类
     * 
     * @param mdItemType 物料产品分类
     * @return 结果
     */
    @Override
    public int insertMdItemType(MdItemType mdItemType)
    {
        mdItemType.setCreateTime(DateUtils.getNowDate());
        return mdItemTypeMapper.insertMdItemType(mdItemType);
    }

    /**
     * 修改物料产品分类
     * 
     * @param mdItemType 物料产品分类
     * @return 结果
     */
    @Override
    public int updateMdItemType(MdItemType mdItemType)
    {
        mdItemType.setUpdateTime(DateUtils.getNowDate());
        return mdItemTypeMapper.updateMdItemType(mdItemType);
    }

    /**
     * 批量删除物料产品分类
     * 
     * @param itemTypeIds 需要删除的物料产品分类主键
     * @return 结果
     */
    @Override
    public int deleteMdItemTypeByItemTypeIds(Long[] itemTypeIds)
    {
        return mdItemTypeMapper.deleteMdItemTypeByItemTypeIds(itemTypeIds);
    }

    /**
     * 删除物料产品分类信息
     * 
     * @param itemTypeId 物料产品分类主键
     * @return 结果
     */
    @Override
    public int deleteMdItemTypeByItemTypeId(Long itemTypeId)
    {
        return mdItemTypeMapper.deleteMdItemTypeByItemTypeId(itemTypeId);
    }
}
