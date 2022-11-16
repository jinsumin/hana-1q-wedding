package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.TransactionVO;

@Mapper
public interface AccountDAO {

	public void insertAccount(AccountVO account);
	
	public void newInsertAccount(AccountVO account);

	public List<AccountVO> selectByHanaBank(String phoneNumber);

	public List<AccountVO> selectByKbBank(String phoneNumber);

	public List<AccountVO> selectByShinBank(String phoneNumber);
	
	public List<AccountVO> selectByWooriBank(String phoneNumber);
	
	

	public void senderHanaTransferProcess(String senderAccountNumber, String receiverAccountNumber,
			String senderBankCode, String receiverBankCode, int transferAmount);

	public void receiverHanaTransferProcess(String senderAccountNumber, String receiverAccountNumber,
			String senderBankCode, String receiverBankCode, int transferAmount);

	public void senderKbTransferProcess(String senderAccountNumber, String receiverAccountNumber, String senderBankCode,
			String receiverBankCode, int transferAmount);

	public void receiverKbTransferProcess(String senderAccountNumber, String receiverAccountNumber,
			String senderBankCode, String receiverBankCode, int transferAmount);

	public void senderShinTransferProcess(String senderAccountNumber, String receiverAccountNumber,
			String senderBankCode, String receiverBankCode, int transferAmount);

	public void receiverShinTransferProcess(String senderAccountNumber, String receiverAccountNumber,
			String senderBankCode, String receiverBankCode, int transferAmount);

	public void senderWooriTransferProcess(String senderAccountNumber, String receiverAccountNumber,
			String senderBankCode, String receiverBankCode, int transferAmount);

	public void receiverWooriTransferProcess(String senderAccountNumber, String receiverAccountNumber,
			String senderBankCode, String receiverBankCode, int transferAmount);

	
	
	public void insertHanaTransaction(Map<String, Object> map);
	
	public void insertKbTransaction(Map<String, Object> map);
	
	public void insertShinTransaction(Map<String, Object> map);
	
	public void insertWooriTransaction(Map<String, Object> map);

	
	
	public List<TransactionVO> selectBrideTransactionList(String phoneNumber);
	public List<TransactionVO> selectGroomTransactionList(String phoneNumber);
	public List<TransactionVO> selectGuestTransactionList(String phoneNumber);
	
	public List<TransactionVO> selectManagerTransactionList();
	
	
	
	public List<TransactionVO> selectGuestRePayList(String phoneNumber);
	
	
	public void updateRePay(String receiverAccountNumber);
	
	
	public AccountVO myPageAccount(String phonenumber);
	
	
	
	
	
	
}
