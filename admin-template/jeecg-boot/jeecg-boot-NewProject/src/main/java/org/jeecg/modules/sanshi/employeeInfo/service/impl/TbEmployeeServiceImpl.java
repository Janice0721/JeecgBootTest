package org.jeecg.modules.sanshi.employeeInfo.service.impl;

import org.jeecg.modules.sanshi.employeeInfo.entity.TbEmployee;
import org.jeecg.modules.sanshi.employeeInfo.mapper.TbEmployeeMapper;
import org.jeecg.modules.sanshi.employeeInfo.service.ITbEmployeeService;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * @Description: 员工表
 * @Author: jeecg-boot
 * @Date:   2022-06-22
 * @Version: V1.0
 */
@Service
public class TbEmployeeServiceImpl extends ServiceImpl<TbEmployeeMapper, TbEmployee> implements ITbEmployeeService {

}
