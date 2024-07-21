package com.qst.mes.system.mapper;

import com.qst.mes.system.domain.UserTask;

import java.util.List;

public interface UserTaskMapper {

    public List<UserTask> listTodoList(String userName);

    public List<UserTask> listFinishedList(String userName);

}
