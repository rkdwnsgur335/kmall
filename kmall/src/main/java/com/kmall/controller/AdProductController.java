package com.kmall.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.kmall.domain.CategoryVO;
import com.kmall.service.ProductService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/admin/product/*")
@Controller
public class AdProductController {

	@Resource(name = "uploadPath")
	private String uploadPath; // 서블렛 컨텍스트 안에 있음.
	
	@Setter(onMethod_ = {@Autowired})
	private ProductService proservice;
	
	//상품등록 폼
	@GetMapping("/productInsert")
	public void productInsert(Model model) {
		
		
		model.addAttribute("cateList1", proservice.CateBrand());
		model.addAttribute("cateList2", proservice.CateGender());
		
	}
	
	// CKEditor 이미지 업로드 작업
	@PostMapping("/imageUpload")
	public void imageUpload(HttpServletRequest req, HttpServletResponse res, MultipartFile upload) {
		
		OutputStream out = null;
		PrintWriter printWriter = null;
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		
		try {
			String fileName = upload.getOriginalFilename(); // 클라이언트에서 업로드한 원본파일명.
			byte[] bytes = upload.getBytes(); // 업로드 파일
			
			String uploadTomcatTempPath = req.getSession().getServletContext().getRealPath("/") + "resources\\upload\\";
			log.info("톰캣 물리적 경로: " + uploadTomcatTempPath);
			
			//2)외부폴더(프로젝트 관리하는 폴더가 아님)
			//작업시 톰캣의 server.xml의 <Context docBase="C:\\Dev\\upload\\ckeditor" path="/upload/" reloadable="true"/>설정 할것.
			String uploadPath = "C:\\Dev\\upload\\ckeditor\\"; // 톰캣의 server.xml에 설정정보 참고
			
			log.info("외부 물리적 경로: " + uploadPath);
			
			uploadPath = uploadPath + fileName;
			
			out = new FileOutputStream(new File(uploadPath)); // 파일입출력스트림 객체생성(실제폴더에 파일생성됨). 0byte
			out.write(bytes); // 출력스트림에 업로드된 파일을 가리키는 바이트배열을 쓴다.  업로드된 파일크기.
			
			// CKEditor에게 보낼 파일정보작업
			
			printWriter = res.getWriter();
			
			//클라이언트에서 요청할 이미지 주소정보
			String fileUrl = "/upload/" + fileName; // // 톰캣의 server.xml에 설정정보 참고
			
			// {"filename":"abc.gif", "uploaded":1, "url":"/upload/abc.gif"} CKEditor 4.x version에서 요구하는 json포맷
			printWriter.println("{\"filename\":\"" + fileName + "\", \"uploaded\":1,\"url\":\"" + fileUrl + "\"}");
			printWriter.flush(); // 전송 (return과 같은 역할: 클라이언트로 보냄)
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(out != null) {
				try {
					out.close();
				}catch(IOException e) {
					e.printStackTrace();
				}
			}
			if(printWriter != null) {
				printWriter.close();
			}
		}
		
	}
	
	
	
	
	
	
	
	
}
