package com.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalcController {

    @Controller
    public class ControllerSelect {

        @GetMapping("/index")
        public String loadIndex() {
            return "index";
        }

        @PostMapping("/calculate")
        public String select(@RequestParam("firstOperand") Float firstOperand, @RequestParam("secondOperand") Float secondOperand, @RequestParam("operator") String operator, ModelMap modelMap) {
            modelMap.addAttribute("answer", calculate(firstOperand, secondOperand, operator));
            return "result";
        }
    }

    public static float calculate(float firstOperand, float secondOperand, String operator) {
        switch (operator) {
            case "+":
                return firstOperand + secondOperand;
            case "-":
                return firstOperand - secondOperand;
            case "*":
                return firstOperand * secondOperand;
            case "/":
                if (secondOperand != 0)
                    return firstOperand / secondOperand;
                else
                    throw new RuntimeException("Can't divide by zero");
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}
