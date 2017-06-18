package com.database;
import java.sql.*;
public class Database2{
  private Connection con = null;
  private ResultSet rs = null;
  private Statement stmt = null;
  private String ip = "";
  private String port = "";
  private String url = "";
  private String db = "";
  private String user = "";
  private String password = "";
  private String driver = "com.mysql.jdbc.Driver";

  public Database2() {

  }
  public void connectDB(){
    try{
      url = "jdbc:mysql://" + ip + ":" + port + "/" + db + "?useUnicode=true&characterEncoding=utf-8";
      Class.forName(driver);
      con = DriverManager.getConnection(url, user, password);
      stmt = con.createStatement();
    }catch(Exception ex){
      System.out.println(ex);
    }
  }
  public void query(String sql){
    try{
      rs = stmt.executeQuery(sql);

    }catch(Exception ex){
      System.out.println(ex);
    }
  }
  public void insertData(String c_id, String name, String password, String cellphone,String email){
    try{
      String sql = "insert into member(c_id,name,password,cellphone,email) values (?,?,?,?,?)";
      PreparedStatement ps = con.prepareStatement(sql);
      ps.setString(1, c_id);
      ps.setString(2, name);
      ps.setString(3, password);
      ps.setString(4, cellphone);
      ps.setString(5, email);
      int a = ps.executeUpdate();
    }catch(Exception ex){
      System.out.println(ex);
    }
  }
  public void addtoCart(String c_id,String p_id,String quantity){
  try{
    String sql = "insert into mycart(c_id,p_id,quantity) value(?,?,?)";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1,c_id);
    ps.setString(2,p_id);
    ps.setString(3,quantity);
    int a = ps.executeUpdate();
  }catch(Exception ex){
    System.out.println(ex);
  }
}
public void payment(String c_id){
  try{
    String sql = "delete from mycart where c_id='" + c_id + "'";
    int a = stmt.executeUpdate(sql);
  }catch(Exception ex){
    System.out.println(ex);
  }
}
  // public void editData(String id,String sid, String name, String price, String image){
  //   try{
  //     String sql = "update drink set sid = '" + sid + "' ,name = '" + name + "' , price = '" + price + "', image = '" + image +"' where id = " + id;
  //     int a = stmt.executeUpdate(sql);
  //   }catch(Exception ex){
  //     System.out.println(ex);
  //   }
  // }
  public void deleteData(String id){
    try{
      String sql = "delete from drink where id = " + id + ";";
      int a = stmt.executeUpdate(sql);
    }catch(Exception ex){
      System.out.println(ex);
    }
  }
  public Connection getCon(){
    return con;
  }
  public ResultSet getRS(){
    return rs;
  }
  public void setIp(String ip){
    this.ip = ip;
  }
  public void setPort(String port){
    this.port = port;
  }
  public void setUrl(String ip, String port){
    this.url = "jdbc:mysql://" + ip + ":" + port + "/";
  }
  public void setDb(String dbName){
    this.db = dbName;
  }
  public void setUser(String username){
    this.user = username;
  }
  public void setPassword(String password){
    this.password = password;
  }
  public void setDriver(String driver){
    this.driver = driver;
  }
  public void CloseDb(){
    con=null;
    stmt=null;
    rs=null;

  }
}
