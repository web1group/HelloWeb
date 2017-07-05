package com.xidian.tools;

import java.io.InputStream; 
import java.sql.*;
import java.util.Properties; 

/**
 * Created by 张祎轩 14130110047.
 */

/*
 * 连接工厂类，工具类，工厂模式
 */
public class ConnDB {
	public Connection conn = null; //连接初始化
	public Statement stmt = null; // 声明对象初始化
	public ResultSet rs = null; // 结果集初始化
	
	private static String propFileName = "connDB.properties"; // 指定资源文件保存的位置
	private static Properties prop = new Properties(); // 创建并实例化Properties对象的实例
	/*
	 * Properties类继承自Hashtable类并且实现了Map接口，
	 * 也是使用一种键值对的形式来保存属性集。
	 * 不过Properties有特殊的地方，就是它的键和值都是字符串类型。
	 */
	
	private static String dbClassName = "com.mysql.jdbc.Driver"; // 定义保存数据库驱动的变量
	private static String dbUrl = "jdbc:mysql://127.0.0.1:3306/library?user=root&password=123456&useUnicode=true";

	public ConnDB() { // 构造方法
		try { 
			
			InputStream in = getClass().getResourceAsStream(propFileName);// 将Properties文件读取到InputStream对象中
			prop.load(in); // 通过输入流对象加载Properties文件
			
			dbClassName = prop.getProperty("DB_CLASS_NAME"); // 获取数据库驱动	
			dbUrl = prop.getProperty("DB_URL", dbUrl);// 获取连接的URL
		} catch (Exception e) {
			e.printStackTrace(); 
		}
	}
	
	

	/**
	 * 功能：获取连接的语句
	 * 
	 * @return
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try { 
			// 连接数据库时可能发生异常因此需要捕捉该异常
			Class.forName(dbClassName); // 装载数据库驱动
			conn = DriverManager.getConnection(dbUrl); // 建立与相应url的数据库链接
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		if (conn == null) {
			System.err
					.println("警告: DbConnectionManager.getConnection() 获得数据库链接失败.\r\n\r\n链接类型:"
							+ dbClassName + "\r\n链接位置:" + dbUrl); // 在控制台上输出提示信息
			/*
			 * err是运行期异常和错误反馈的输出流的方向
			 * System.err.println只能在屏幕上实现打印，即使你重定向了也一样
			 * 用err打印出的 字符串，再eclipse的console会显示成红色
			 */
		}
		return conn; // 返回数据库连接对象
	}

	
	
	/*
	 * 功能：执行查询语句
	 */
	public ResultSet executeQuery(String sql) {
		try { 
			conn = getConnection(); // 调用getConnection()方法构造Connection对象的一个实例conn
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			/*
			 * ResultSet.TYPE_SCROLL_INSENSITIVE 结果集的游标可以上下移动，
			 * 当数据库变化时，当前结果集不变。
			 */
			
			/*
			 * ResultSet.CONCUR_READ_ONLY 不能用结果集更新数据库中的表。
			 */
			rs = stmt.executeQuery(sql);
		} catch (SQLException e3) {
			System.err.println(e3.getMessage()); // 输出异常信息
		}
		return rs; // 返回结果集对象
	}
	
	

	/*
	 * 功能:执行更新操作
	 */
	public int executeUpdate(String sql) {
		int result = 0; // 定义保存返回值的变量
		try {
			conn = getConnection(); // 构造Connection对象的一个实例conn
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			result = stmt.executeUpdate(sql); // 执行更新操作
		} catch (SQLException e4) {
			result = 0; // 将保存返回值的变量赋值为0
		}
		return result; // 返回保存返回值的变量
	}

	
	
	/*
	 * 功能:关闭数据库的连接
	 */
	public void close() {
		try { 
			if (rs != null) { // 当ResultSet对象的实例rs不为空时
				rs.close(); // 关闭ResultSet对象
			}
			if (stmt != null) { // 当Statement对象的实例stmt不为空时
				stmt.close(); // 关闭Statement对象
			}
			if (conn != null) { // 当Connection对象的实例conn不为空时
				conn.close(); // 关闭Connection对象
			}
		} catch (Exception e5) {
			e5.printStackTrace(System.err); // 输出异常信息
		}
	}
}
