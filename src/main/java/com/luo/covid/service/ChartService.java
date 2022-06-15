package com.luo.covid.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.luo.covid.entity.EmpIden;
import com.luo.covid.vo.LineVO;
import com.luo.covid.vo.PieVo;

import java.util.List;

public interface ChartService extends IService<EmpIden> {
    public LineVO lineVOList();
    public List<PieVo> pieVOMap();
}
