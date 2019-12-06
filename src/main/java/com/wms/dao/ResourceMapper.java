package com.wms.dao;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.wms.bean.Resource;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * selectallbytypeandpid
 */
@Repository
public interface ResourceMapper extends AutoMapper<Resource> {

    List<Resource> selectAllByTypeAndpIdnull(@Param("resourceType") Integer resourceType);

    List<Resource> selectAllByTypeAndpId(@Param("resourceType") Integer resourceType, @Param("pId") Long pId);

    List<Resource> selectAll();

}