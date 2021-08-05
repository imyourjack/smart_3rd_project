package kr.pcolor.idol;

import java.io.File;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.pcolor.domain.AttachFileVO;

@Controller
public class UploadController {

   @GetMapping("/uploadForm.do")
   public void uploadForm() {
      
   }
   
   @PostMapping("/uploadFormAction.do")
   public void uploadFormAction(MultipartFile[] uploadFile, Model model) {
      
      List<AttachFileVO> list = new ArrayList<AttachFileVO>();
      
      String uploadFolder="C:\\upload";
      String uploadFolderPath=getFolder(); // 2021\07\27
      File uploadPath = new File(uploadFolder, uploadFolderPath);
      if(uploadPath.exists()==false) {
         uploadPath.mkdirs(); //디렉토리생성
      }
      
      for(MultipartFile multipartFile : uploadFile) {
         System.out.print(multipartFile.getOriginalFilename()+":");
         System.out.println(multipartFile.getSize());
         
         AttachFileVO vo = new AttachFileVO();
         
         String uploadFileName=multipartFile.getOriginalFilename();
         vo.setFileName(uploadFileName);
         UUID uuid = UUID.randomUUID();
         uploadFileName=uuid.toString()+"_"+uploadFileName;
         
         File saveFile=new File(uploadPath, uploadFileName);
         try {
            multipartFile.transferTo(saveFile);
            vo.setUuid(uuid.toString());
            vo.setUploadPath(uploadFolderPath);
            list.add(vo);
         }catch(Exception e) {
            e.printStackTrace();
         }

      }
      model.addAttribute("list", list);
      
   }
   
   private String getFolder() {
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
      Date date = new Date();
      String str = sdf.format(date);
      return str.replace("-", "/");
   }
   
   @GetMapping(value="/download.do", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
   // @ResponseBody   // download.jsp(X)
   public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent")String userAgent, String fileName) {
      System.out.println(fileName);
      
      Resource resource = new FileSystemResource("C:\\upload\\"+fileName);  //
      String resourceName=resource.getFilename();
      System.out.println(resourceName);
      
      String resourceOriginalName=resourceName.substring(resourceName.indexOf("_")+1);
      // 다운로드 작업
      HttpHeaders headers = new HttpHeaders();
      try {
    	 String downloadName=null;
    	 if(userAgent.contains("Trident")) {
             System.out.println("IE");
             downloadName=URLEncoder.encode(resourceOriginalName,"UTF-8").replaceAll("\\+"," ");
           }else if(userAgent.contains("Edge")) {
             System.out.println("Edge");
             downloadName=URLEncoder.encode(resourceOriginalName,"UTF-8");
           }else {
             System.out.println("Chrome");   
             downloadName=new String(resourceOriginalName.getBytes("UTF-8"),"ISO-8859-1");
           }  
         headers.add("Content-Disposition", "attachment;filename="+resourceOriginalName);
      }catch(Exception e) {
         e.printStackTrace();
      }
      return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
   }
   
}