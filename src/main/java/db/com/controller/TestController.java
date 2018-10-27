package db.com.controller;


import db.com.domain.User;
import db.com.mapper.MainMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class TestController {

    @Autowired
    private MainMapper mainMapper;

    @RequestMapping("/index")
    public ModelAndView User(){
        return new ModelAndView("/main/main");
    }

    @RequestMapping("/list")
    public List<User> list(){
        System.out.println("断一发");
        return mainMapper.getAll();
    }
    /*三方登陆模块*/
    @RequestMapping("/qqindex")
    public  ModelAndView qqindex(){
        return new ModelAndView("/login/qqindex");
    }
    @RequestMapping("/qqlogin")
    public  ModelAndView qqlogin(){
        return new ModelAndView("/login/qq");
    }
}
