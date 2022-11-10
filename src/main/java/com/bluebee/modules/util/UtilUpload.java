package com.bluebee.modules.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.bluebee.modules.base.Base;
import com.bluebee.modules.constants.Constants;

public class UtilUpload {

	public static void upload (MultipartFile multipartFile, String className, Base dto, Integer type) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
		String path;
		String pathForView;
		
		if(className.equals("store")) {
			path = Constants.UPLOAD_PATH_PREFIX + "/product/" + type + "/";
		} else {
			path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
		}
		
		if(className.equals("comment")) {
			path = Constants.UPLOAD_PATH_PREFIX + "/comment/" + type + "/";
		} else {
			path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
		}
		
		if(className.equals("store")) {
			pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/product/" + type + "/";
		} else {
			pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
		}
		
		if(className.equals("comment")) {
			pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/comment/" + type + "/";
		} else {
			pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
		}
		createPath(path);
		multipartFile.transferTo(new File(path + uuidFileName));
		
		dto.setPath(pathForView);
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
	}
	
	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if (!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}
}