package com.example;

import com.example.board.BoardController;
import com.example.board.BoardDAO;
import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.xml.ws.RequestWrapper;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Controller
public class HomeController {
    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
    @RequestMapping("/")
    public String home(Locale locale, Model model){
//        logger.info("Welcome home! The client locale is {}.", locale);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
        String formattedDate = dateFormat.format(date);
        model.addAttribute("serverTime", formattedDate);
        return "home";
    }


    @RequestMapping("practice")
    public String classList(Model model){
        model.addAttribute("title", "2학년 2학기 교과목 리스트");

        List<String> list = new ArrayList<String>();
        list.add("실전프로젝트1");
        list.add("컴퓨터 비전");
        model.addAttribute("classList", list);

        return "practice";
    }
}
