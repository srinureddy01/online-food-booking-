<% page import="java.sql.*" %>

	<%
	int eid=Integer.parseInt(request.getParameter("eid"));
	string ename=request.getParameter("ename");
	String email=request.getParameter("email");
	try
	{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","system","blessy");
		String qry="insert into empcseb values(?,?,?)";
		PreparedStatement pstmt=con.preparedStatement(qry);
		pstm.setInt(1,eid);
		pstm.setInt(2,ename);
		pstm.setInt(3,email);
		int sts=pstmt.executeUpdate();
		out.println(sts+ "row inserted successfully");
	}
	catch(Exception e)
	{
		out.print(e);
		e.printStackTrace();
	}
	%>