package com.qst.mes.system.mapper;

import com.qst.mes.common.core.domain.entity.SysAutoCodeResult;

import java.util.List;

public interface SysAutoCodeResultMapper {
    public List<SysAutoCodeResult> selectSysAutoCodeResultList(SysAutoCodeResult sysAutoCodeResult);

    public void add(SysAutoCodeResult sysAutoCodeResult);

    public void updateAutoCodeResult(SysAutoCodeResult sysAutoCodeResult);

    public void deleteById(Long codeId);


}
