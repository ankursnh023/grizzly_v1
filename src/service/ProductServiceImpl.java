package service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDAO;
import com.dao.ProductDAOImpl;
import com.model.Product;

public class ProductServiceImpl implements ProductService{
	
	ProductDAO pd;
	
	

	public ProductServiceImpl() {
		super();
		pd=new ProductDAOImpl();
	}



	@Override
	public void showAllProducts(HttpServletRequest request,HttpServletResponse response) throws SQLException, ServletException, IOException {
		// TODO Auto-generated method stub
		List<Product> l=new ArrayList<>();
		l=pd.listAllProduct();
		System.out.println(l);
		RequestDispatcher rd=request.getRequestDispatcher("product.jsp");
		request.setAttribute("products", l);
		rd.forward(request, response);
	}



	@Override
	public void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Product existingProduct=pd.findAProduct(id);
		System.out.println(existingProduct.toString());
		int res=pd.deleteProduct(existingProduct);
		if(res==1){
			System.out.println("Deleted");
			request.getRequestDispatcher("/ProductController").forward(request, response);
		}
		
	}



	@Override
	public void addNewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd=request.getRequestDispatcher("addproduct.jsp");
		rd.forward(request, response);
		
	}



	@Override
	public void insertNewProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String category=request.getParameter("category");
		String desc=request.getParameter("description");
		float p=Float.parseFloat(request.getParameter("price"));
		Product nP=new Product(name,category,desc, p);
		int result=pd.addProduct(nP);
		if(result==1){
			System.out.println("RESULT");
			showAllProducts(request, response);
		}
		
		
	}
	

}
