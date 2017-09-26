package com.mp3.cvt.common.dto;

import org.springframework.stereotype.Component;

@Component
public class RtInfo {
	
	private int rtnum;
	private String id;
	private String name;
	private String address;
	private float lat;
	private float lng;
	private String type;
	public int getRtnum() {
		return rtnum;
	}
	public void setRtnum(int rtnum) {
		this.rtnum = rtnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public float getLat() {
		return lat;
	}
	public void setLat(float lat) {
		this.lat = lat;
	}
	public float getLng() {
		return lng;
	}
	public void setLng(float lng) {
		this.lng = lng;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "RTInfo [rtnum=" + rtnum + ", id=" + id + ", name=" + name + ", address=" + address + ", lat=" + lat
				+ ", lng=" + lng + ", type=" + type + "]";
	}
	
	
}
