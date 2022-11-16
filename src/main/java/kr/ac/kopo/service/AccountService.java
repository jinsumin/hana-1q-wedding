package kr.ac.kopo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.TransactionVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AccountService {

	private final AccountDAO accountDao;

	public String makeAccount(String userId) {

		int accountNum1 = 2;
		StringBuilder accountNum2 = new StringBuilder();
		int accountNum3;

		char[] id = userId.toCharArray();
		for (int i = 0; i < 2; i++) {
			int num = (int) id[i];
			accountNum2.append(num);
		}

		accountNum2.toString();

		Random random = new Random();

		while (true) {
			accountNum3 = random.nextInt(100000);
			if (accountNum3 > 10000) {
				break;
			}
		}

		StringBuilder stb = new StringBuilder();

		stb.append(accountNum1);
		stb.append("-");
		stb.append(accountNum2);
		stb.append("-");
		stb.append(accountNum3);

		return stb.toString();

	}

	public void addAccount(AccountVO account, String userId) {

		String accountNumber = this.makeAccount(userId);

		account.setAccountNumber(accountNumber);

		accountDao.insertAccount(account);
	}
	
	public void newAddAccount(AccountVO account, String userId) {
		
		String accountNumber = this.makeAccount(userId);

		account.setAccountNumber(accountNumber);

		accountDao.newInsertAccount(account);
		
	}
	
	

	public List<AccountVO> hanaAccountList(String phonenumber) {

		List<AccountVO> hanaAccountlist = accountDao.selectByHanaBank(phonenumber);

		return hanaAccountlist;

	}

	public List<AccountVO> otherAccountList(String phonenumber) {

		List<AccountVO> accountList = new ArrayList<>();

		List<AccountVO> kbAccountlist = accountDao.selectByKbBank(phonenumber);

		List<AccountVO> shinAccountlist = accountDao.selectByShinBank(phonenumber);
		List<AccountVO> wooriAccountlist =
accountDao.selectByWooriBank(phonenumber);

		accountList.addAll(kbAccountlist);
		accountList.addAll(shinAccountlist);
		accountList.addAll(wooriAccountlist);
		
		return accountList;

	}

	// @Transactional
	public void accountTransferProcess(String senderAccountNumber, String receiverAccountNumber, String senderBankCode,
			String receiverBankCode, int transferAmount) {

		if (senderBankCode.equals("2") && receiverBankCode.equals("2")) {

			accountDao.senderHanaTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverHanaTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("2") && receiverBankCode.equals("9")) {

			accountDao.senderHanaTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverKbTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("2") && receiverBankCode.equals("14")) {

			accountDao.senderHanaTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverShinTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("2") && receiverBankCode.equals("20")) {

			accountDao.senderHanaTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverWooriTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("9") && receiverBankCode.equals("2")) {

			accountDao.senderKbTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverHanaTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("9") && receiverBankCode.equals("9")) {

			accountDao.senderKbTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverKbTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("9") && receiverBankCode.equals("14")) {

			accountDao.senderKbTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverShinTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("9") && receiverBankCode.equals("20")) {

			accountDao.senderKbTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverWooriTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("14") && receiverBankCode.equals("2")) {

			accountDao.senderShinTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverHanaTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("14") && receiverBankCode.equals("9")) {

			accountDao.senderShinTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverKbTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("14") && receiverBankCode.equals("14")) {

			accountDao.senderShinTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverShinTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("14") && receiverBankCode.equals("20")) {

			accountDao.senderShinTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverWooriTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("20") && receiverBankCode.equals("2")) {

			accountDao.senderWooriTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverHanaTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("20") && receiverBankCode.equals("9")) {

			accountDao.senderWooriTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverShinTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("20") && receiverBankCode.equals("14")) {

			accountDao.senderWooriTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverShinTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

		} else if (senderBankCode.equals("20") && receiverBankCode.equals("20")) {

			accountDao.senderWooriTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);

			accountDao.receiverWooriTransferProcess(senderAccountNumber, receiverAccountNumber, senderBankCode,
					receiverBankCode, transferAmount);
		}
	}



	public void addTransaction(Map<String, Object> map) {

		 if(map.get("senderBankCode").equals("2")) {
			 accountDao.insertHanaTransaction(map);
		 } else if(map.get("senderBankCode").equals("9")) {
			 accountDao.insertKbTransaction(map);
		 } else if(map.get("senderBankCode").equals("14")) {
			 accountDao.insertShinTransaction(map);
		 } else if(map.get("senderBankCode").equals("20")) {
			 accountDao.insertWooriTransaction(map);
		 }
		 
	}

	

	public List<TransactionVO> selectBrideTransactionList(String phoneNumber){
		
		List<TransactionVO> transactionList = new ArrayList<>();
		
		transactionList = accountDao.selectBrideTransactionList(phoneNumber);
		
		return transactionList;
	}
	
public List<TransactionVO> selectGroomTransactionList(String phoneNumber){
		
		List<TransactionVO> transactionList = new ArrayList<>();
		
		transactionList = accountDao.selectGroomTransactionList(phoneNumber);
		
		return transactionList;
	}




public List<TransactionVO> selectGuestTransactionList(String phoneNumber){
	
	List<TransactionVO> transactionList = new ArrayList<>();
	
	transactionList = accountDao.selectGuestTransactionList(phoneNumber);
	
	return transactionList;
}

public List<TransactionVO> selectManagerTransactionList(String phoneNumber){
	
	List<TransactionVO> transactionList = new ArrayList<>();
	
	transactionList = accountDao.selectManagerTransactionList();
	
	return transactionList;
}


	
	public List<TransactionVO> selectGuestRePayList(String accountNumber){
		
		List<TransactionVO> guestRePayList = new ArrayList<>();
		
		guestRePayList = accountDao.selectGuestRePayList(accountNumber);
		
		return guestRePayList;
	}
	
	
	public void changeRePay(String receiverAccountNumber) {
		
		accountDao.updateRePay(receiverAccountNumber);
		
	}
	
	public AccountVO myPageAccount(String phonenumber) {
		
		return accountDao.myPageAccount(phonenumber);
	}
	
	public List<TransactionVO> selectManagerTransactionList(){
		
		return accountDao.selectManagerTransactionList();
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
