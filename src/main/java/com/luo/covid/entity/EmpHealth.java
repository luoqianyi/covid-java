package com.luo.covid.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.luo.covid.entity.Enum.GenderEnum;
import lombok.Data;

import java.util.Date;

@Data
public class EmpHealth {

    @TableId(type = IdType.AUTO)
    private Long id;
    private String name;
    private GenderEnum sex;
    private Long phonenum;
    private float temp;
    private String risk;
    private String health;
    private String content;
    private String depart;
    @TableField(value = "createTime" ,fill = FieldFill.INSERT)
    @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    private Date createTime;
}
