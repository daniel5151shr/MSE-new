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
import com.qst.mes.core.md.domain.ProProcess;
import com.qst.mes.core.md.service.IProProcessService;
import com.qst.mes.common.utils.poi.ExcelUtil;
import com.qst.mes.common.core.page.TableDataInfo;

/**
 * 生产工序管理Controller
 *
 * @author yinjinlu
 * @date 2024-07-21
 */
@RestController
@RequestMapping("/mes/pro/process")
public class ProProcessController extends BaseController
{
    @Autowired
    private IProProcessService proProcessService;

    /**
     * 查询生产工序管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/pro:process:list')")
    @GetMapping("/list")
    public TableDataInfo list(ProProcess proProcess)
    {
        startPage();
        List<ProProcess> list = proProcessService.selectProProcessList(proProcess);
        return getDataTable(list);
    }

    /**
     * 查询所有生产工序管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/pro:process:listAll')")
    @GetMapping("/listAll")
    public TableDataInfo listAll(ProProcess proProcess)
    {
        startPage();
        List<ProProcess> list = proProcessService.selectProProcessList(proProcess);
        return getDataTable(list);
    }

    /**
     * 导出生产工序管理列表
     */
    @PreAuthorize("@ss.hasPermi('mes/pro:process:export')")
    @Log(title = "生产工序管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ProProcess proProcess)
    {
        List<ProProcess> list = proProcessService.selectProProcessList(proProcess);
        ExcelUtil<ProProcess> util = new ExcelUtil<ProProcess>(ProProcess.class);
        util.exportExcel(response, list, "生产工序管理数据");
    }

    /**
     * 获取生产工序管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('mes/pro:process:query')")
    @GetMapping(value = "/{processId}")
    public AjaxResult getInfo(@PathVariable("processId") Long processId)
    {
        return AjaxResult.success(proProcessService.selectProProcessByProcessId(processId));
    }

    /**
     * 新增生产工序管理
     */
    @PreAuthorize("@ss.hasPermi('mes/pro:process:add')")
    @Log(title = "生产工序管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProProcess proProcess)
    {
        return toAjax(proProcessService.insertProProcess(proProcess));
    }

    /**
     * 修改生产工序管理
     */
    @PreAuthorize("@ss.hasPermi('mes/pro:process:edit')")
    @Log(title = "生产工序管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProProcess proProcess)
    {
        return toAjax(proProcessService.updateProProcess(proProcess));
    }

    /**
     * 删除生产工序管理
     */
    @PreAuthorize("@ss.hasPermi('mes/pro:process:remove')")
    @Log(title = "生产工序管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{processIds}")
    public AjaxResult remove(@PathVariable Long[] processIds)
    {
        return toAjax(proProcessService.deleteProProcessByProcessIds(processIds));
    }
}