package com.qst.mes.core.md.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.qst.mes.common.annotation.Log;
import com.qst.mes.common.core.controller.BaseController;
import com.qst.mes.common.core.domain.AjaxResult;
import com.qst.mes.common.enums.BusinessType;
import com.qst.mes.core.md.domain.MdItemType;
import com.qst.mes.core.md.service.IMdItemTypeService;
import com.qst.mes.common.utils.poi.ExcelUtil;

/**
 * 物料产品分类Controller
 * 
 * @author yinjinlu
 * @date 2024-07-21
 */
@RestController
@RequestMapping("/mes/md/itemtype")
public class MdItemTypeController extends BaseController
{
    @Autowired
    private IMdItemTypeService mdItemTypeService;


    // 获取单个物料类型的详细信息
    @GetMapping("/{itemTypeId}/details")
    public ResponseEntity<MdItemType> getItemType(@PathVariable Long itemTypeId) {
        MdItemType itemType = mdItemTypeService.selectItemTypeById(itemTypeId);
        return ResponseEntity.ok(itemType);
    }

    // 获取除了指定ID之外的所有物料类型列表
    @GetMapping("/list/exclude/{excludeId}")
    public ResponseEntity<List<MdItemType>> listExcluding(@PathVariable Long excludeId) {
        List<MdItemType> itemTypes = mdItemTypeService.listAllExcludingId(excludeId);
        return ResponseEntity.ok(itemTypes);
    }
    /**
     * 查询物料产品分类列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:itemtype:list')")
    @GetMapping("/list")
    public AjaxResult list(MdItemType mdItemType)
    {
        List<MdItemType> list = mdItemTypeService.selectMdItemTypeList(mdItemType);
        return AjaxResult.success(list);
    }

    /**
     * 导出物料产品分类列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:itemtype:export')")
    @Log(title = "物料产品分类", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MdItemType mdItemType)
    {
        List<MdItemType> list = mdItemTypeService.selectMdItemTypeList(mdItemType);
        ExcelUtil<MdItemType> util = new ExcelUtil<MdItemType>(MdItemType.class);
        util.exportExcel(response, list, "物料产品分类数据");
    }

    /**
     * 获取物料产品分类详细信息
     */
    @PreAuthorize("@ss.hasPermi('mes/md:itemtype:query')")
    @GetMapping(value = "/{itemTypeId}")
    public AjaxResult getInfo(@PathVariable("itemTypeId") Long itemTypeId)
    {
        return AjaxResult.success(mdItemTypeService.selectMdItemTypeByItemTypeId(itemTypeId));
    }
    /**
     * 新增物料产品分类
     */
    @PreAuthorize("@ss.hasPermi('mes/md:itemtype:add')")
    @Log(title = "物料产品分类", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MdItemType mdItemType)
    {
        return toAjax(mdItemTypeService.insertMdItemType(mdItemType));
    }

    /**
     * 修改物料产品分类
     */
    @PreAuthorize("@ss.hasPermi('mes/md:itemtype:edit')")
    @Log(title = "物料产品分类", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MdItemType mdItemType)
    {
        return toAjax(mdItemTypeService.updateMdItemType(mdItemType));
    }

    /**
     * 删除物料产品分类
     */
    @PreAuthorize("@ss.hasPermi('mes/md:itemtype:remove')")
    @Log(title = "物料产品分类", businessType = BusinessType.DELETE)
	@DeleteMapping("/{itemTypeIds}")
    public AjaxResult remove(@PathVariable Long[] itemTypeIds)
    {
        return toAjax(mdItemTypeService.deleteMdItemTypeByItemTypeIds(itemTypeIds));
    }
}
