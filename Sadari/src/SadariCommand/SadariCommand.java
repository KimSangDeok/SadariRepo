package SadariCommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SadariModel.SadariException;

public interface SadariCommand {
	public String execute( HttpServletRequest request, HttpServletResponse response ) throws SadariException ;
}
