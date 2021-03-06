package com.innovest.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.innovest.dto.HospitalDto_Test;
import com.innovest.dto.HospitalDto_Test_Detail;
import com.innovest.dto.MemberDto;

public class MemberDao {

	public SqlSession sqlsession;

	public SqlSession getSqlsession() {
		return sqlsession;
	}

	public void setSqlsession(SqlSession sqlsession) {
		this.sqlsession = sqlsession;
	}

	public int mysqlCheck(String userid) {
		IDao dao = sqlsession.getMapper(IDao.class);
		int result = dao.mysqlCheck(userid);
		return result;
	}

	public List<MemberDto> select_allList() {
		IDao dao = sqlsession.getMapper(IDao.class);
		List<MemberDto> result_list = dao.selectAllList();
		return result_list;
	}

	public int deleteDatabaseDaoMethod(Integer targetcmd) {
		System.out.println("this is deleteDatabaseDaoMethod()");
		IDao dao = sqlsession.getMapper(IDao.class);
		int delete_result = dao.deleteDatabase(targetcmd);
		return delete_result;
	}

	public int insertDatabseByMapDaoMehthod(Map targetMap) {
		IDao dao = sqlsession.getMapper(IDao.class);
		int insertByMap_result = dao.insertDatabaseByMap(targetMap);
		return insertByMap_result;
	}

	public int insertDatabaseyByObjDaoMethod(MemberDto targetObj) {
		System.out.println("this is insertDatabaseByObjMethod() Started");
		IDao dao = sqlsession.getMapper(IDao.class);
		int insertByObj_result = dao.insertDatabaseByObj(targetObj);
		return insertByObj_result;
	}

	public int updateDatabaseDaoMethod(Integer targetcmd) {
		IDao dao = sqlsession.getMapper(IDao.class);
		int update_result = dao.updateDatabase(targetcmd);
		return update_result;
	}

	public int insertPublicDataByObj(HospitalDto_Test insertObj) {
		IDao dao = sqlsession.getMapper(IDao.class);
		int insertPublicData_result = dao.insertPublicData_Test(insertObj);
		return insertPublicData_result;
	}

	public int insertPublicDetailDataByObj(HospitalDto_Test_Detail insertObj) {
		IDao dao = sqlsession.getMapper(IDao.class);
		int insertPublicData_result = dao.insertPublicData_Test_Detail(insertObj);
		return insertPublicData_result;
	}
	
	
	public List<HospitalDto_Test> selectAllhosDTO(int offset) {
		IDao dao = sqlsession.getMapper(IDao.class);
		List<HospitalDto_Test> result_list = dao.selectAllhosDTO(offset);
		return result_list;
	}
	

}
