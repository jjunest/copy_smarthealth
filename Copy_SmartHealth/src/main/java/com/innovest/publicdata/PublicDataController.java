package com.innovest.publicdata;

import java.io.IOException;
import java.util.Locale;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.innovest.dao.MemberDao;
import com.innovest.dto.HospitalDto_Test;

@Controller
public class PublicDataController {
	@Autowired
	MemberDao memberdao;
	
	@RequestMapping(value = "/publicDataTest", method = RequestMethod.GET)
	public String publicDataTest(Locale locale, Model model) {
		System.out.println("this is publicDataTest");
		try {
			Document doc = Jsoup.connect(
					"http://openapi1.nhis.or.kr/openapi/service/rest/HmcSearchService/getRegnHmcList?ServiceKey=8K5J%2FYDyte2OmM4vbXD4d1WkjHqLQNEpjcbSbO56TEzYhqGKl8u8xvt67axIaZGMGlzBa6iqzKF1DlZEzwwNdw%3D%3D")
					.data("pageNo", "3").userAgent("Mozila").parser(Parser.xmlParser()).get();

			System.out.println("this is doc: "+doc);
			Elements elements_item = doc.select("item");
			System.out.println("this is elements_item size: "+elements_item.size());

			for(int i=0; i<elements_item.size(); i++) {
//				2.병원이름
		
				
				Elements elements_hmcNm = doc.select("hmcNm");
				String hmcNm = elements_hmcNm.get(i).text();
				
				Elements elements_hmcNo = doc.select("hmcNo");
				String hmcNo = elements_hmcNo.get(i).text();

				Elements elements_hmcTelNo = doc.select("hmcTelNo");
				String hmcTelNo = elements_hmcTelNo.get(i).text();

				Elements elements_locAddr = doc.select("locAddr");
				String locAddr = elements_locAddr.get(i).text();
				
				Elements elements_locPostNo = doc.select("locPostNo");
				String locPostNo = elements_locPostNo.get(i).text();
				
				Elements elements_cxVl = doc.select("cxVl");
				String cxVl = elements_cxVl.get(i).text();
				
				Elements elements_cyVl = doc.select("cyVl");
				String cyVl = elements_cyVl.get(i).text();
				
				Elements elements_exmdrFaxNo = doc.select("exmdrFaxNo");
				String exmdrFaxNo = elements_exmdrFaxNo.get(i).text();
				
				Elements elements_siDoCd = doc.select("siDoCd");
				String siDoCd = elements_siDoCd.get(i).text();
				
				Elements elements_siGunGuCd = doc.select("siGunGuCd");
				String siGunGuCd = elements_siGunGuCd.get(i).text();
				
				
				HospitalDto_Test PubDataObj = new HospitalDto_Test(hmcNm,hmcNo,hmcTelNo,locAddr,locPostNo,cxVl,cyVl,siDoCd,siGunGuCd,hmcNm);
				
				memberdao.insertPublicDataByObj(PubDataObj);
			}
		




		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "publicDataTest";
	}
}
