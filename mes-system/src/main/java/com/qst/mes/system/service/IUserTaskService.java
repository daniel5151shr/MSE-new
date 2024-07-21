package com.qst.mes.system.service;

import com.qst.mes.system.domain.UserTask;

import java.util.List;

public interface IUserTaskService {

    public List<UserTask> listTodoList(String usesrName);

    public List<UserTask> listFinishedList(String usesrName);

}
