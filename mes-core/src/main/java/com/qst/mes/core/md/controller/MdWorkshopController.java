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
import com.qst.mes.core.md.domain.MdWorkshop;
import com.qst.mes.core.md.service.IMdWorkshopService;
import com.qst.mes.common.utils.poi.ExcelUtil;
import com.qst.mes.common.core.page.TableDataInfo;

/**
 * 车间管理Controller
 *
 * @author yinjinlu
 * @date 2024-07-21
 */
@RestController
@RequestMapping("/mes/md/workshop")
public class MdWorkshopController extends BaseController
{
    @Autowired
    private IMdWorkshopService mdWorkshopService;

    /**
     * 查询车间管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workshop:list')")
    @GetMapping("/list")
    public TableDataInfo list(MdWorkshop mdWorkshop)
    {
        startPage();
        List<MdWorkshop> list = mdWorkshopService.selectMdWorkshopList(mdWorkshop);
        return getDataTable(list);
    }

    /**
     * 查询所有车间管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workshop:listAll')")
    @GetMapping("/listAll")
    public TableDataInfo listAll(MdWorkshop mdWorkshop)
    {
        startPage();
        List<MdWorkshop> list = mdWorkshopService.selectMdWorkshopList(mdWorkshop);
        return getDataTable(list);
    }

    /**
     * 导出车间管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workshop:export')")
    @Log(title = "车间管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MdWorkshop mdWorkshop)
    {
        List<MdWorkshop> list = mdWorkshopService.selectMdWorkshopList(mdWorkshop);
        ExcelUtil<MdWorkshop> util = new ExcelUtil<MdWorkshop>(MdWorkshop.class);
        util.exportExcel(response, list, "车间管理数据");
    }

    /**
     * 获取车间管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workshop:query')")
    @GetMapping(value = "/{workshopId}")
    public AjaxResult getInfo(@PathVariable("workshopId") Long workshopId)
    {
        return AjaxResult.success(mdWorkshopService.selectMdWorkshopByWorkshopId(workshopId));
    }

    /**
     * 新增车间管理
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workshop:add')")
    @Log(title = "车间管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MdWorkshop mdWorkshop)
    {
        return toAjax(mdWorkshopService.insertMdWorkshop(mdWorkshop));
    }

    /**
     * 修改车间管理
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workshop:edit')")
    @Log(title = "车间管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MdWorkshop mdWorkshop)
    {
        return toAjax(mdWorkshopService.updateMdWorkshop(mdWorkshop));
    }

    /**
     * 删除车间管理
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workshop:remove')")
    @Log(title = "车间管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{workshopIds}")
    public AjaxResult remove(@PathVariable Long[] workshopIds)
    {
        return toAjax(mdWorkshopService.deleteMdWorkshopByWorkshopIds(workshopIds));
    }
}