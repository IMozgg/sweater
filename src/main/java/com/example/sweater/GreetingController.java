package com.example.sweater;

import com.example.sweater.domain.Message;
import com.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class GreetingController {

    @Autowired
    private MessageRepo messageRepo;

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {

        return "greeting";
    }

    @GetMapping("/main")
    public String main(Map<String, Object> model) {
        Iterable<Message> messages = messageRepo.findAll();

        model.put("messages", messages);

        return "main";
    }

    @PostMapping("/main")
    public String addMessage(@RequestParam String inText, @RequestParam String inTag, Map<String, Object> model) {
        Message message = new Message(inText, inTag);
        messageRepo.save(message);

        Iterable<Message> messages = messageRepo.findAll();
        model.put("messages", messages);

        return "main";
    }

    @PostMapping("filter")
    public String showMsgByTag(@RequestParam String inFilter, Map<String, Object> model) {
        Iterable<Message> messages;

        if (inFilter != null && !inFilter.isEmpty()) {
            messages = messageRepo.findByTag(inFilter);
        } else {
            messages = messageRepo.findAll();
        }
        model.put("messages", messages);

        return "main";
    }
}
