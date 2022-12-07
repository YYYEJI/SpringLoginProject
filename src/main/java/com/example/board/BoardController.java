package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@Controller
public class BoardController {
    @Autowired
    BoardService boardService;

    @RequestMapping(value = "/board/list", method= RequestMethod.GET)
    public String boardlist(Model model) {
        model.addAttribute("list", boardService.getBoardList());
        return "list";
    }

    @RequestMapping(value = "/board/add", method= RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "/board/addok", method= RequestMethod.GET)
    public String addPostOK(BoardVO vo) {
        vo.setRegdate(new Date());
        System.out.println(vo);
        int i = boardService.insertBoard(vo);
        if(i==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "/board/editok", method= RequestMethod.GET)
    public String editPostOK(@ModelAttribute("boardVO") BoardVO boardVO) {
        System.out.println("edit post ok start");
        boardVO.setRegdate(new Date());

        System.out.println(boardVO.toString());
        int i = boardService.updateBoard(boardVO);
        if(i==0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value="/board/deleteok/{id}", method=RequestMethod.GET)
    public String deletePost(@PathVariable("id") int id) {
        int i = boardService.deleteBoard(id);
        if(i == 0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }



    @RequestMapping(value = "/board/editform", method= RequestMethod.GET)
    public String editPost(@RequestParam(value = "id") Integer id, Model model) {
        System.out.println("edit post start!");
        BoardVO boardVO = boardService.getBoard(id);
        System.out.println(boardVO.toString());
        model.addAttribute("boardVO", boardVO);
        model.addAttribute("id", id);

        return "editform";
    }

}
