package com.edu.board.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.edu.board.dao.StorageDao;
import com.edu.board.dto.Storage;

@Controller
public class StorageController {

	@Resource(name = "storageDao")
	private StorageDao dao;

	@RequestMapping(value = "listStorage.do")
	public String listStorage(Model model) {
		model.addAttribute("slist", dao.selectStorage());
		return "Project/noticeboard/datalist";
	}

	@RequestMapping(value = "insertStorage.do")
	public String insertStorage(Storage storage, @RequestParam(value = "file", required = false) MultipartFile file) {
		String loc = "C:\\Users\\user\\eclipse-workspace\\education\\edu\\src\\main\\webapp\\Project\\upload\\";
		FileOutputStream fos = null;
		String fileName = file.getOriginalFilename();
		if (fileName.length() > 0) {
			try {
				fos = new FileOutputStream(new File(loc + fileName));
				fos.write(file.getBytes());
				storage.setFileName(file.getOriginalFilename());
			} catch (Exception e) {
				// TODO: handle exception
			} finally {
				try {
					fos.close();
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			}
		}
		dao.insertStorage(storage);
		return "redirect:listStorage.do";
	}

	@RequestMapping(value = "modifyStorage.do")
	public String modifyStorage(Storage storage) {
		dao.modifyStorage(storage);
		return "redirect:listStorage.do";
	}

	@RequestMapping(value = "deleteStorage.do")
	public String deleteStorage(int no) {
		dao.deleteStorage(no);
		return "redirect:listStorage.do";
	}

	@RequestMapping(value = "selectInfoStorage.do")
	public String selectInfoStorage(int no, String job, Model model) {
		if (job != null && job.equals("sinfo")) {
			dao.updateHitStorage(no);
			model.addAttribute("selectInfoStorage", dao.selectInfoStorage(no));
			return "Project/noticeboard/datalistinfo";
		}
		return "Project/noticeboard/datalist";
	}

}
