package com.market.utils;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MyUtils {
	// ����˭���ʼ� ע�⣬������qq���� ssl����
	public String myEmailAccount = "q954502872@163.com";
	// �ⲻ�ǵ�¼���룬����Ȩ����
	public String myEmailPassword = "l199828";
	public String myEmailSMTPHost = "smtp.163.com";

	// �ʼ����� �ռ�������
	public void sendMail(String receiveMail) {
		Random rd = new Random();
		StringBuffer sbf = new StringBuffer();
		int count = 0;
		while (count <= 5) {
			sbf.append(rd.nextInt(10));
			count++;
		}
		String code = sbf.toString();
		Data.code=code;

		try {
			// 1�������������ã����������ʼ��������Ĳ�������
			Properties props = new Properties(); // ��������
			props.setProperty("mail.transport.protocol", "smtp");// ʹ�õ�Э�飨javaMail�淶Ҫ��
			props.setProperty("mail.smtp.host", myEmailSMTPHost);// �����˵������SMTP
																	// ��������ַ
			props.setProperty("mail.smtp.auth", "true");// ��Ҫ������֤
			// 2���������ô����Ự�������ں��ʼ�����������
			Session session = Session.getInstance(props);
			session.setDebug(false);
			// 3������һ���ʼ�
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(myEmailAccount, "��Web Super Market��", "UTF-8"));
			message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "�û�", "UTF-8"));
			message.setSubject("��Web Super Market��", "UTF-8");
			message.setContent("��ӭʹ��Super Markrt����    �𾴵��û�    ������֤��Ϊ��" + code, "text/html;charset=UTF-8");
			message.setSentDate(new Date());
			message.saveChanges();
			// 4������Session��ȡ�ʼ��������
			Transport transport = session.getTransport();
			transport.connect(myEmailAccount, myEmailPassword);
			transport.sendMessage(message, message.getAllRecipients());
			// 7���ر�����
			transport.close();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (NoSuchProviderException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
