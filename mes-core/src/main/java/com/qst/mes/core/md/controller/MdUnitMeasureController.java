package com.qst.mes.core.md.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.qst.mes.core.md.domain.MdUnitMeasure;
import com.qst.mes.core.md.service.IMdUnitMeasureService;
import com.qst.mes.common.utils.poi.ExcelUtil;
import com.qst.mes.common.core.page.TableDataInfo;

/**
 * 计量单位管理Controller
 * 
 * @author yinjinlu
 * @date 2024-07-06
 */
@RestController
@RequestMapping("/mes/md/unitmeasure")
public class MdUnitMeasureController extends BaseController
{
    @Autowired
    private IMdUnitMeasureService mdUnitMeasureService;

    /**
     * 查询计量单位管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:unitmeasure:list')")
    @GetMapping("/list")
    public TableDataInfo list(MdUnitMeasure mdUnitMeasure)
    {
        startPage();
        List<MdUnitMeasure> list = mdUnitMeasureService.selectMdUnitMeasureList(mdUnitMeasure);
        return getDataTable(list);
    }

    /**
     * 导出计量单位管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:unitmeasure:export')")
    @Log(title = "计量单位管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MdUnitMeasure mdUnitMeasure)
    {
        List<MdUnitMeasure> list = mdUnitMeasureService.selectMdUnitMeasureList(mdUnitMeasure);
        ExcelUtil<MdUnitMeasure> util = new ExcelUtil<MdUnitMeasure>(MdUnitMeasure.class);
        util.exportExcel(response, list, "计量单位管理数据");
    }

    /**
     * 获取计量单位管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mes/md:unitmeasure:query')")
    @GetMapping(value = "/{measureId}")
    public AjaxResult getInfo(@PathVariable("measureId") Long measureId)
    {
        return AjaxResult.success(mdUnitMeasureService.selectMdUnitMeasureByMeasureId(measureId));
    }

    /**
     * 新增计量单位管理
     */
    @PreAuthorize("@ss.hasPermi('mes/md:unitmeasure:add')")
    @Log(title = "计量单位管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MdUnitMeasure mdUnitMeasure)
    {
        return toAjax(mdUnitMeasureService.insertMdUnitMeasure(mdUnitMeasure));
    }

    /**
     * 修改计量单位管理
     */
    @PreAuthorize("@ss.hasPermi('mes/md:unitmeasure:edit')")
    @Log(title = "计量单位管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MdUnitMeasure mdUnitMeasure)
    {
        return toAjax(mdUnitMeasureService.updateMdUnitMeasure(mdUnitMeasure));
    }

    /**
     * 删除计量单位管理
     */
    @PreAuthorize("@ss.hasPermi('mes/md:unitmeasure:remove')")
    @Log(title = "计量单位管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{measureIds}")
    public AjaxResult remove(@PathVariable Long[] measureIds)
    {
        return toAjax(mdUnitMeasureService.deleteMdUnitMeasureByMeasureIds(measureIds));
    }
}
