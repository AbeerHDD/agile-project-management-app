package tn.essat.dao;


import tn.essat.utils.DBConnexion;

public class userDao {
	DBConnexion dbConnexion = new DBConnexion();

	public userDao() {
		dbConnexion.connect();
	}

	
	public void delete(int id) {

		String request = "Delete from user where id ='" + id + "' ";

		dbConnexion.updateQuery(request);
	}

	
}
