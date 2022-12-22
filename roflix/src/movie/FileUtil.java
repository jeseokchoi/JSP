package movie;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class FileUtil {

	private static String saveDirectory;
	private static int maxPostSize = 1024 * 1024 * 20;
	private static String encoding = "UTF-8";
	private static FileRenamePolicy namePolicy = new DefaultFileRenamePolicy();
	
	public static MovieDTO getDTO(HttpServletRequest request) throws IOException, ParseException {
		MovieDTO dto = null;

		saveDirectory = "D:\\mvupload";
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
		
		MultipartRequest mpRequest = 
				new MultipartRequest(request, saveDirectory, maxPostSize, encoding, namePolicy);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date d1 = sdf.parse(mpRequest.getParameter("openDate"));
		java.sql.Date d2 = new java.sql.Date(d1.getTime());
		
		dto = new MovieDTO();
		dto.setMvTitle(mpRequest.getParameter("mvTitle"));
		dto.setDirector(mpRequest.getParameter("director"));
		dto.setActors(mpRequest.getParameter("actors"));
		dto.setOpenDate(d2);
		dto.setStory(mpRequest.getParameter("story"));
		dto.setPoster(mpRequest.getOriginalFileName("uploadFile"));
		dto.setUploadFile(mpRequest.getFile("uploadFile"));
		
		return dto;
	}

	public String getPath(MovieDTO dto) {
		String dir = "D:\\movie";
		String poster = dto.getPoster();
		File f = new File(dir, poster);
		return poster;
	}
}