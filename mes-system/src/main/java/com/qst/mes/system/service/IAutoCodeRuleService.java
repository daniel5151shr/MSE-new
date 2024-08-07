package com.qst.mes.system.service;

import com.qst.mes.common.core.domain.entity.SysAutoCodeRule;

import java.util.List;

public interface IAutoCodeRuleService {

    public SysAutoCodeRule getOne(String ruleCode);

    public List<SysAutoCodeRule> selectAutoCodeList(SysAutoCodeRule sysAutoCodeRule);

    public SysAutoCodeRule findById(Long ruleId);

    public String checkRuleCodeUnique(SysAutoCodeRule sysAutoCodeRule);

    public String checkRuleNameUnique(SysAutoCodeRule sysAutoCodeRule);

    public int insertInfo(SysAutoCodeRule rule);

    public int updateInfo(SysAutoCodeRule rule);

    public int deleteById(Long ruleId);

    public int deleteByIds(Long[] ruleIds);

}
