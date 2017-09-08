package com.innovest.smarthealth;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.innovest.dao.MemberDao;
import com.innovest.dto.MemberDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	MemberDao memberdao;
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping("/maindoor")
	public String main(Model model) {

		System.out.println("this is main");

		return "maindoor";
	}

	@RequestMapping("/companyIntros")
	public String companyIntro(Model model) {

		System.out.println("this is companyIntros");

		return "companyIntros";
	}

	@RequestMapping("/checkupInfos")
	public String checkupInfo(Model model) {

		System.out.println("this is checkupInfos");

		return "checkupInfos";
	}

	@RequestMapping("/eventHospitals")
	public String eventHospital(Model model) {

		System.out.println("this is eventHospitals");

		return "eventHospitals";
	}

	@RequestMapping("/allHospitalInfo")
	public String allHospitalInfo(Model model) {

		System.out.println("this is allHospitalInfo");

		return "allHospitalInfo";
	}

	@RequestMapping("/detailHospital")
	public String detailHospital(Model model) {

		System.out.println("this is detailHospital");

		return "detailHospital";
	}
	
	@RequestMapping("/header")
	public String header(Model model) {

		System.out.println("this is header");

		return "header";
	}

	@RequestMapping("/footer")
	public String footer(Model model) {

		System.out.println("this is footer");

		return "footer";
	}
	
	@RequestMapping("dbtest")
	public String dbtest() {
		System.out.println("this is dbtest() start");
		
		// selctList 시작
		List<MemberDto> memberlist_result = memberdao.select_allList();
		for (int i = 0; i < memberlist_result.size(); i++) {
			System.out.println("this is memberlist_result and id: " + memberlist_result.get(i).admin_id + " and pw: "
					+ memberlist_result.get(i).admin_pw);
		}
		
		
		return "dbtest";
	}
	

}
