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
import com.qst.mes.core.md.domain.MdWorkstation;
import com.qst.mes.core.md.service.IMdWorkstationService;
import com.qst.mes.common.utils.poi.ExcelUtil;
import com.qst.mes.common.core.page.TableDataInfo;

/**
 * 工作站管理Controller
 *
 * @author yinjinlu
 * @date 2024-07-21
 */
@RestController
@RequestMapping("/mes/md/workstation")
public class MdWorkstationController extends BaseController
{
    @Autowired
    private IMdWorkstationService mdWorkstationService;

    /**
     * 查询工作站管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workstation:list')")
    @GetMapping("/list")
    public TableDataInfo list(MdWorkstation mdWorkstation)
    {
        startPage();
        List<MdWorkstation> list = mdWorkstationService.selectMdWorkstationList(mdWorkstation);
        return getDataTable(list);
    }

    /**
     * 导出工作站管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workstation:export')")
    @Log(title = "工作站管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MdWorkstation mdWorkstation)
    {
        List<MdWorkstation> list = mdWorkstationService.selectMdWorkstationList(mdWorkstation);
        ExcelUtil<MdWorkstation> util = new ExcelUtil<MdWorkstation>(MdWorkstation.class);
        util.exportExcel(response, list, "工作站管理数据");
    }

    /**
     * 获取工作站管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workstation:query')")
    @GetMapping(value = "/{workstationId}")
    public AjaxResult getInfo(@PathVariable("workstationId") Long workstationId)
    {
        return AjaxResult.success(mdWorkstationService.selectMdWorkstationByWorkstationId(workstationId));
    }

    /**
     * 新增工作站管理
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workstation:add')")
    @Log(title = "工作站管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MdWorkstation mdWorkstation)
    {
        return toAjax(mdWorkstationService.insertMdWorkstation(mdWorkstation));
    }

    /**
     * 修改工作站管理
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workstation:edit')")
    @Log(title = "工作站管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MdWorkstation mdWorkstation)
    {
        return toAjax(mdWorkstationService.updateMdWorkstation(mdWorkstation));
    }

    /**
     * 删除工作站管理
     */
    @PreAuthorize("@ss.hasPermi('mes/md:workstation:remove')")
    @Log(title = "工作站管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{workstationIds}")
    public AjaxResult remove(@PathVariable Long[] workstationIds)
    {
        return toAjax(mdWorkstationService.deleteMdWorkstationByWorkstationIds(workstationIds));
    }
}