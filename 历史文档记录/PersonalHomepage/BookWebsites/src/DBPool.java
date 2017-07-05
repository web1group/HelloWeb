import javax.naming.Context;

import javax.naming.InitialContext;

import javax.naming.NamingException;

import javax.sql.DataSource;

public class DBPool {

private static DataSource pool;

static {

Context env = null;

try {

env = (Context) new InitialContext().lookup("java:comp/env");

pool = (DataSource)env.lookup("jdbc/DBPool");

if(pool==null)

System.err.println("'DBPool' is an unknown DataSource");

} catch(NamingException ne) {

ne.printStackTrace();

}

}

public static DataSource getPool() {

return pool;

}

}