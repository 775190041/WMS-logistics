package com.wms.service;

import com.wms.bean.Shipment;
import com.wms.commons.utils.PageInfo;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.event.TransactionalEventListener;

import java.util.List;

/**
 */

public interface ShipmentService {

    List<Shipment> queryAll();

    void selectDataGrid(PageInfo pageInfo);

    Shipment selectById(Integer id);

    int addShipment(Shipment shipment);

    int deleteById(Integer id);

    int updateShipment(Shipment shipment);

    int importShipment(Shipment shipment);
}
