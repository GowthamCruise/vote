import java.io.Serializable;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Block implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String hash, prehash, timestamp, votefor;
	int blockid;

	public Block(String votefor, int lastid, String prehash) {
		this.blockid = lastid+1;
		this.prehash = prehash;
		this.votefor = votefor;
		timestamp = java.util.Calendar.getInstance().getTime().toString();
		hash=encryptThisString(prehash+timestamp+votefor+blockid);

	}

	public static String encryptThisString(String input) {
		String hashtext = null;
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-512");
			byte[] messageDigest = md.digest(input.getBytes());
			BigInteger no = new BigInteger(1, messageDigest);
			hashtext = no.toString(16);
			while (hashtext.length() < 32) {
				hashtext = "0" + hashtext;
			}

		} catch (NoSuchAlgorithmException e) {
			System.out.println(e);
		}
		return hashtext;
	}
	public static void main(String[] args) {
		Block block=new Block(null, 0, null);
		System.out.println(block.hash);
	}
}
