package com.training.upload;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {
    @RequestMapping(value="/upload/upload-foto", method = RequestMethod.GET)
    public void tampilUpload(){
        System.out.print("ini tampil upload");
    }
    
    @RequestMapping(value="/upload/upload-foto", method = RequestMethod.POST)
    public String prosesUpload(@RequestParam("photofile") MultipartFile hasilUpload)throws Exception{
        String namaFile = hasilUpload.getOriginalFilename();
        File file = new File("src/main/webapp/File_Foto/"+namaFile);
        hasilUpload.transferTo(file);
        return "redirect:daftar-foto";
//        ModelMap mm = new ModelMap();
//        String pesan = "Sukses di upload";
//        mm.addAttribute("pesan",pesan);
//        return mm;        
    }    
    
    @RequestMapping("/upload/daftar-foto")
    public ModelMap daftarFoto(){
        List<Upload> f = new ArrayList<Upload>();
        String direktori = "src/main/webapp/File_Foto/";
        File fileFoto = new File(direktori);
        File[] daftar = fileFoto.listFiles();
        for (File file : daftar) {
            if(file.isFile()){  //jika file ada
                Upload u = new Upload();
                u.setNamaFile(file.getName());
                u.setUkuran(file.length()/1024);
                f.add(u);
            }
        }
        ModelMap mm = new ModelMap();
        mm.addAttribute("daftarFoto", f);
        return mm;
    }
    
    @RequestMapping("/upload/hapus-foto")
    public String hapusFoto(@RequestParam("nama") String nF){
        File dirFoto = new File("src/main/webapp/File_Foto/"+nF);
        boolean hapus = dirFoto.delete();
        return "redirect:daftar-foto";
    }    
}
