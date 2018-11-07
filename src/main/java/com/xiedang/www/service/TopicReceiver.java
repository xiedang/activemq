package com.xiedang.www.service;

import com.xiedang.www.utils.SendMailUtil;
import org.springframework.stereotype.Component;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * <p></p>
 *
 * @author : 谢当
 * @date : 2018/11/6 17:24
 */
@Component
public class TopicReceiver implements MessageListener {

    @Override
    public void onMessage(Message message) {
        try {
            System.out.println(((TextMessage)message).getText());
            try {
                SendMailUtil.sendTextEmail("xdyx1994@163.com",((TextMessage)message).getText());
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (JMSException e) {
            e.printStackTrace();
        }
    }
}
