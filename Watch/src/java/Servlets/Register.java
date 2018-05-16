package Servlets;

import CodeGen.CodeGenerator;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import pojos.User;
import pojos.UserLogin;
import pojos.UserType;

public class Register extends HttpServlet {

    PrintWriter out = null;
    String msg = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name, contact, em, un, pw;
            name = request.getParameter("name");
            contact = request.getParameter("contact");
            em = request.getParameter("em");
            un = request.getParameter("un");
            pw = request.getParameter("pw");

            CodeGen.CodeGenerator cg = new CodeGenerator();
            String code = cg.Generate(Math.random());
            System.out.println("user code = "+code);

            Session ses = Db.DBCon.getSessionFactory().openSession();
            Transaction tr = ses.beginTransaction();
            out = response.getWriter();

            Criteria oo = ses.createCriteria(pojos.UserLogin.class);
            oo.add(Restrictions.eq("userName", un));
            pojos.UserLogin ops = (pojos.UserLogin) oo.uniqueResult();
            if (ops != null) {
                msg = "this user already exists!";
                System.out.println("message = " + msg);
                out.write(msg);
            } else {
                UserType userType = new pojos.UserType();
                userType.setIdUserType(2);

                User user = new pojos.User();
                user.setName(name);
                user.setPhoneNo(contact);
                user.setEmail(em);
                user.setUserType(userType);
                user.setUserName(un);
                ses.save(user);

                UserLogin userLogin = new pojos.UserLogin();
                userLogin.setUserName(un);
                userLogin.setPassWord(pw);
                userLogin.setUser(user);

                ses.save(userLogin);
//            request.getSession().setAttribute("logins", userLogin);
                System.out.println("User Saved Success!");
                out.write("ok");
                tr.commit();
                ses.close();
            }
        } catch (Exception e) {
            out.write(e.getMessage());
            e.printStackTrace();
        }
    }
}
