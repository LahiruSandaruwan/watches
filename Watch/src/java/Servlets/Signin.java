package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

public class Signin extends HttpServlet {

    PrintWriter out = null;
    String msg = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String email = request.getParameter("username");
            String pass = request.getParameter("password");
            out = response.getWriter();

            Session s = Db.DBCon.getSessionFactory().openSession();

            Criteria c = s.createCriteria(pojos.UserLogin.class);
            c.add(Restrictions.eq("userName", email));
            c.add(Restrictions.eq("passWord", pass));
            pojos.UserLogin l = (pojos.UserLogin) c.uniqueResult();

            if (l == null) {
                out.write("invalid username or password...");
                msg = "invalid username or password...";
                System.out.println("message = " + msg);
            } else if (l != null) {
                String btn = request.getParameter("logbtn");
                System.out.println("btn = " + btn);

                out.write("ok");
                msg = "ok";
                System.out.println("message = " + msg);
                request.getSession().setAttribute("logins", l);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
