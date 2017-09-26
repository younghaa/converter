package com.mp3.cvt.common.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mp3.cvt.common.dto.RtInfo;
import com.mp3.cvt.common.service.RtService;

@Controller
public class MapController {
	@Autowired
	RtService rs;

	@RequestMapping(value="/rt/maps/position",method=RequestMethod.POST)
	public @ResponseBody List<RtInfo>getRtInfo(@RequestBody RtInfo ri){
		return rs.getRtInfo(ri);
	}
}
