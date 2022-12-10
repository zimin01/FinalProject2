package com.mycom.myapp.market;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping
@Controller

public class MarketController {

    @Autowired
    MarketServiceImpl marketService;

    @RequestMapping(value="/")
        public String home(){
        return "index";
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String boardlist(Model model){
        model.addAttribute("list",marketService.getMarketList());
        return "list";
    }

    @RequestMapping(value="add", method=RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value="addok",method=RequestMethod.POST)
    public String addPostOK(MarketVO vo){
        if(marketService.insertMarket(vo)==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value="editform/{id}",method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        MarketVO boardVO=marketService.getMarket(id);
        model.addAttribute("u",boardVO);
        return "editform";
    }

    @RequestMapping(value="editok",method=RequestMethod.POST)
    public String editPostOk(MarketVO vo){
        if(marketService.updateMarket(vo)==0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value="deleteok/{id}",method=RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id){

        if(marketService.deleteMarket(id)==0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }
}
