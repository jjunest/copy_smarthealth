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
import com.innovest.dto.HospitalDto_Test_Detail;

@Controller
public class PublicDataController {
	@Autowired
	MemberDao memberdao;

	@RequestMapping(value = "/publicDataTest", method = RequestMethod.GET)
	public String publicDataTest(Locale locale, Model model) {
		System.out.println("this is publicDataTest");

		// 공공데이터 page 3까지 받아오기
		for (int j = 1; j < 3; j++) {
			try {
				Document doc = Jsoup.connect(
						"http://openapi1.nhis.or.kr/openapi/service/rest/HmcSearchService/getRegnHmcList?ServiceKey=8K5J%2FYDyte2OmM4vbXD4d1WkjHqLQNEpjcbSbO56TEzYhqGKl8u8xvt67axIaZGMGlzBa6iqzKF1DlZEzwwNdw%3D%3D")
						.data("pageNo", String.valueOf(j)).userAgent("Mozila").parser(Parser.xmlParser()).get();

				Elements elements_item = doc.select("item");

				for (int i = 0; i < elements_item.size(); i++) {
					// 검진기관찾기 API 오퍼레이션 영문 - getRegnHmcList
					// 검진기관명(hmcNm), 검진기관번호(hmcNo), 검진기관전화번호(hmcTelNo), 소재지주소(locAddr),
					// 소재지우편번호(locPostNo)
					// X좌표값(cxVl), Y좌표값(cyVl), 검진실팩스번호(exmdrFaxNo),시도코드(siDoCd), 시군구코드(siGunGuCd)

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
					// 대표자 성함 추가 시작
					// 검진기관 기본 정보 - 오퍼레이션 명 (getHmcBasicInfoDetail)
					try {
						Document doc2 = Jsoup.connect(
								"http://openapi1.nhis.or.kr/openapi/service/rest/HmcSpecificInfoService/getHmcBasicInfoDetail?ServiceKey=8K5J%2FYDyte2OmM4vbXD4d1WkjHqLQNEpjcbSbO56TEzYhqGKl8u8xvt67axIaZGMGlzBa6iqzKF1DlZEzwwNdw%3D%3D")
								.data("ykiho", hmcNo).userAgent("Mozila").parser(Parser.xmlParser()).get();
						Elements elements_item2 = doc2.select("gjca01ReprNm");
						String presidentName = elements_item2.text();
						System.out.println(presidentName);

					} catch (Exception e) {
						e.printStackTrace();
					}
					// 대표자 성함 추가 끝
					// 검진기관별 정보제공 서비스- 오퍼레이션 명 (getHmcTransInfoDetail)
					// 건물명(gunmulNm),건물호(gunmulHo),건물층(gunmulFl)
					// 시내버스하차지점명(inctBusGoffJijumNm),시내버스노선정보(inctBusRouteInfo),지하철하차지점명(sbwyGoffJijumNm),지하철노선정보(sbwyRouteInfo),지하철요양기관방향(sbwyYoyangDrt)
					// 마을버스하차지점명(vllgBusGoffJijumNm),마을버스노선정보(vllgBusRouteInfo)
					// 추가 시작

					try {
						Document doc2 = Jsoup.connect(
								"http://openapi1.nhis.or.kr/openapi/service/rest/HmcSpecificInfoService/getHmcTransInfoDetail?ServiceKey=8K5J%2FYDyte2OmM4vbXD4d1WkjHqLQNEpjcbSbO56TEzYhqGKl8u8xvt67axIaZGMGlzBa6iqzKF1DlZEzwwNdw%3D%3D")
								.data("ykiho", hmcNo).userAgent("Mozila").parser(Parser.xmlParser()).get();
						String buildingName = doc2.select("gunmulNm").text();
						String buildingHo = doc2.select("gunmulHo").text();
						String gunmulFl = doc2.select("gunmulFl").text();

						String cityBusStopName = doc2.select("inctBusGoffJijumNm").text();
						String cityBusStopInfo = doc2.select("inctBusRouteInfo").text();

						String subwayStopName = doc2.select("sbwyGoffJijumNm").text();
						String subwayInfo = doc2.select("sbwyRouteInfo").text();
						String subwayDirect = doc2.select("sbwyYoyangDrt").text();

						String villageBusStopName = doc2.select("vllgBusGoffJijumNm").text();
						String villageBusInfo = doc2.select("vllgBusRouteInfo").text();

						System.out.println("cityBusStopName - " + cityBusStopName);
						HospitalDto_Test_Detail PubDetailDataObj = new HospitalDto_Test_Detail(hmcNo, buildingName,
								buildingHo, gunmulFl, cityBusStopName, cityBusStopInfo, subwayStopName, subwayInfo,
								subwayDirect, villageBusStopName, villageBusInfo);
						memberdao.insertPublicDetailDataByObj(PubDetailDataObj);

					} catch (Exception e) {
						e.printStackTrace();
					}

					// 건물명(gunmulNm),건물호(gunmulHo),건물층(gunmulFl)
					// 시내버스하차지점명(inctBusGoffJijumNm),시내버스노선정보(inctBusRouteInfo),지하철하차지점명(sbwyGoffJijumNm),지하철노선정보(sbwyRouteInfo),지하철요양기관방향(sbwyYoyangDrt)
					// 마을버스하차지점명(vllgBusGoffJijumNm),마을버스노선정보(vllgBusRouteInfo)
					// 추가 끝

					HospitalDto_Test PubDataObj = new HospitalDto_Test(hmcNm, hmcNo, hmcTelNo, locAddr, locPostNo, cxVl,
							cyVl, exmdrFaxNo, siDoCd, siGunGuCd);

					memberdao.insertPublicDataByObj(PubDataObj);
				}

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "publicDataTest";
	}
}
