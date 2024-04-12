package com.prj;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.prj.users.domain.PUserVo;
import com.prj.users.mapper.UsersMapper;

@SpringBootTest
class TeamProjectApplicationTests {
	@Autowired
	private DataSource ds;
	
	@Autowired
	private UsersMapper usersMapper;
	
	@Test
	void contextLoads() {
	}
	@Test
	void test1() {
		double n1 = 10;
		double n2 = 3;
		double n = n1 / n2;
		System.out.println(n); // 3.3333333333333335
		//assertEquals(n,3.5);
		assertEquals(n,3.5,0.5); // 오차범위 : +-0.5
	}
	// db 연결확인
		@Test
		void testConnection() throws SQLException {
			System.out.println(ds); // HikariDataSource (null)
			Connection conn = ds.getConnection();
			System.out.println(conn); // HikariProxyConnection@1766431855 wrapping oracle.jdbc.driver.T4CConnection@61957d9c
			conn.close();
		}
		
		
}
