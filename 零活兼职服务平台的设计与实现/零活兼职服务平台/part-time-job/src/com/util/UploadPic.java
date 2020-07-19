package com.util;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;


public class UploadPic {

	public static Map<String, Object> uploadPic(MultipartFile uploadfile,String createId,String proId,String picPath, HttpServletRequest request) {
		
		try {
		
			String webPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";
			Map<String, Object> map=new HashMap<String,Object>();
			MultipartFile items_pic=uploadfile;
			//ԭʼ����
	  		String originalFilename = items_pic.getOriginalFilename();
	  		
	  		//String nowpath=System.getProperty("user.dir");
	  		
	  		String nowPath = request.getSession().getServletContext().getRealPath("");  
	  		
	  		String projectName = request.getContextPath();
	  		
	  		String path=nowPath.replace(projectName.substring(1, projectName.length()), "");
	  		
	  		//ͼƬ�����·��
	  		path=path+"uploadfiles/"+picPath;
	  		
	  		//����ͼƬ��·��
	  		String path2="";
	  		path2=webPath+"uploadfiles/"+picPath;
	  		
	  		File file=new File(path);
	  		if(!file.exists()){
	  			file.mkdirs();
	  		}
	  		//�ϴ�ͼƬ
	  		if(items_pic!=null && originalFilename!=null && originalFilename.length()>0){
		  		//�洢ͼƬ������·��
		  		//String pic_path = "E:\\testpic\\temp\\";
		  		//�µ�ͼƬ����
		  		String newFileName = StringUtils.getUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
		  		//��ͼƬ
		  		File newFile = new File(path+newFileName);
		  		//���ڴ��е�����д�����
				items_pic.transferTo(newFile);

				map.put("msg", "msg");
				map.put("imgurl", path2+newFileName);
				return map;
	  		}
  		
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		return null;
		
	}
	
}
