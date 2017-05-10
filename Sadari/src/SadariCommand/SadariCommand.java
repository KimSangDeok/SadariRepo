package SadariCommand;

import javax.servlet.http.HttpServletRequest;
 
import SadariModel.SadariException;

public interface SadariCommand {
	public String execute( HttpServletRequest request ) throws SadariException ;
}
