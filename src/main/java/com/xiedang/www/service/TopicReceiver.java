package com.xiedang.www.service;

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
        } catch (JMSException e) {
            e.printStackTrace();
        }
    }
}
