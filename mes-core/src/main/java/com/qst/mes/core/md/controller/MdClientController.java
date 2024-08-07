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
import com.qst.mes.core.md.domain.MdClient;
import com.qst.mes.core.md.service.IMdClientService;
import com.qst.mes.common.utils.poi.ExcelUtil;
import com.qst.mes.common.core.page.TableDataInfo;

/**
 * 客户Controller
 * 
 * @author qst
 * @date 2024-07-14
 */
@RestController
@RequestMapping("/mes/md/client")
public class MdClientController extends BaseController
{
    @Autowired
    private IMdClientService mdClientService;

    /**
     * 查询客户列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:client:list')")
    @GetMapping("/list")
    public TableDataInfo list(MdClient mdClient)
    {
        startPage();
        List<MdClient> list = mdClientService.selectMdClientList(mdClient);
        return getDataTable(list);
    }

    /**
     * 导出客户列表
     */
    @PreAuthorize("@ss.hasPermi('mes/md:client:export')")
    @Log(title = "客户", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MdClient mdClient)
    {
        List<MdClient> list = mdClientService.selectMdClientList(mdClient);
        ExcelUtil<MdClient> util = new ExcelUtil<MdClient>(MdClient.class);
        util.exportExcel(response, list, "客户数据");
    }

    /**
     * 获取客户详细信息
     */
    @PreAuthorize("@ss.hasPermi('mes/md:client:query')")
    @GetMapping(value = "/{clientId}")
    public AjaxResult getInfo(@PathVariable("clientId") Long clientId)
    {
        return AjaxResult.success(mdClientService.selectMdClientByClientId(clientId));
    }

    /**
     * 新增客户
     */
    @PreAuthorize("@ss.hasPermi('mes/md:client:add')")
    @Log(title = "客户", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody MdClient mdClient)
    {
        return toAjax(mdClientService.insertMdClient(mdClient));
    }

    /**
     * 修改客户
     */
    @PreAuthorize("@ss.hasPermi('mes/md:client:edit')")
    @Log(title = "客户", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody MdClient mdClient)
    {
        return toAjax(mdClientService.updateMdClient(mdClient));
    }

    /**
     * 删除客户
     */
    @PreAuthorize("@ss.hasPermi('mes/md:client:remove')")
    @Log(title = "客户", businessType = BusinessType.DELETE)
	@DeleteMapping("/{clientIds}")
    public AjaxResult remove(@PathVariable Long[] clientIds)
    {
        return toAjax(mdClientService.deleteMdClientByClientIds(clientIds));
    }
}
