package com.example.cn.zhanshiredis.controller;
import com.example.cn.zhanshiredis.dao.LogNeed1BookDao;
import com.example.cn.zhanshiredis.entity.*;
import com.example.cn.zhanshiredis.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.ArrayList;
import java.util.List;

/**
 * @author: 张鹏飞
 * @company： 软通动力信息技术股份有限公司
 * @Official： www.isoftstone.com
 */
@Controller
public class EchartsController {

    @Autowired
    UserLogService userLogService;

    @Autowired
    LogNeed1UserService logNeed1UserService;

    @Autowired
    LogNeed1BookService logNeed1BookService;

    @Autowired
    LogNeed1PriceService logNeed1PriceService;

    @Autowired
    LogNeed2Service logNeed2Service;

    @Autowired
    LogNeed3Service logNeed3Service;

    @Autowired
    LogNeed6Service logNeed6Service;

    @Autowired
    LogNeed7Service logNeed7Service;

    @Autowired
    LogNeed10Service logNeed10Service;

//    @Autowired
//    StringRedisTemplate stringRedisTemplate;

    @RequestMapping("/charts/charge")
    public String getCharge(){
       return "charts/chargePosition";
    }


    @RequestMapping("/charts/move")
    public String getMove(){
        return "charts/lineAndBar";
    }

    @RequestMapping("/charts/posi")
    public String getPosi(){
        return "charts/pie";
    }

    @RequestMapping("/charts/logNeed1-user")
    public String getLogNeed1User(){
        return "charts/logNeed1-user";
    }

    @RequestMapping("/charts/getlogNeed1UserData")
    @ResponseBody
    public List<NameValue> getlogNeed1UserData() {
        List<NameValue> allname = logNeed1UserService.findAll1User();
        System.out.println(allname);
        return allname;
    }

    @RequestMapping("/charts/logNeed1-book")
    public String getLogNeed1Book(){
        return "charts/logNeed1-book";
    }

    @RequestMapping("/charts/getlogNeed1BookData")
    @ResponseBody
    public List<NameValue> getlogNeed1BookData() {
        List<NameValue> allname = logNeed1BookService.findAll1Book();
        System.out.println(allname);
        return allname;
    }

    @RequestMapping("/charts/logNeed1-price")
    public String getLogNeed1Price(){
        return "charts/logNeed1-price";
    }

    @RequestMapping("/charts/getlogNeed1PriceData")
    @ResponseBody
    public List<NameValue> getlogNeed1PriceData() {
        List<NameValue> allname = logNeed1PriceService.findAll1Price();
        System.out.println(allname);
        return allname;
    }

    @RequestMapping("/charts/logNeed2")
    public String getLogNeed2(){
        return "charts/logNeed2";
    }

    @RequestMapping("/charts/getLogNeed2Data")
    @ResponseBody
    public LogNeed2 getLogNeed2Data(){
        LogNeed2 logNeed2 = new LogNeed2();
        ArrayList<String> names = new ArrayList<>();
        ArrayList<Integer> values = new ArrayList<>();
        List<LogNeed2Mysql> allIdentity = logNeed2Service.findAllIdentity();
        for (LogNeed2Mysql logNeed2Mysql : allIdentity) {
            names.add(logNeed2Mysql.getIdentity());
            values.add(logNeed2Mysql.getCount());
        }
        logNeed2.setNames(names);
        logNeed2.setValues(values);
        return logNeed2;
    }

    @RequestMapping("/charts/logNeed3")
    public String getLogNeed3(){
        return "charts/logNeed3";
    }

    @RequestMapping("/charts/getlogNeed3Data")
    @ResponseBody
    public List<ValueName> getlogNeed3Data() {
        List<ValueName> allname = logNeed3Service.findAll3();
        return allname;
    }



//    @RequestMapping("/charts/logNeed6")
//    public String getLogNeed6(){
//        return "charts/logNeed6";
//    }

//    @RequestMapping("/charts/getlogNeed6Data")
//    @ResponseBody
//    public List<List<String>> getlogNeed6Data(){
//
//
//
//        //LogNeed6 logNeed6 = new LogNeed6();
//        List<List<String>> sums = new ArrayList<>();
//        List<String> sums0 = new ArrayList<>();
//        sums0.add("sex");sums0.add("男");sums0.add("女");System.out.println("11111111");
//        sums.add(sums0);
//        System.out.println(sums);
//        ArrayList<Integer> values1 = new ArrayList<>();
//        ArrayList<Integer> values2 = new ArrayList<>();
//        List<LogNeed6Mysql> allTime = logNeed6Service.findAll6();
//        for (LogNeed6Mysql logNeed6Mysql : allTime) {
//            List<String> sums1 = new ArrayList<>();
//            sums1.add(logNeed6Mysql.getBook_name());
//            sums1.add(String.valueOf(logNeed6Mysql.getBook_num1()));
//            sums1.add(String.valueOf(logNeed6Mysql.getBook_num2()));
//            sums.add(sums1);
//        }
//
//        return sums;
//    }

    @RequestMapping("/charts/logNeed6")
    public String getLogNeed6(){
        return "charts/logNeed6";
    }

    @RequestMapping("/charts/logNeed7")
    public String getLogNeed7(){
        return "charts/logNeed7";
    }

    @RequestMapping("/charts/getlogNeed7Data")
    @ResponseBody
    public LogNeed2 getlogNeed7Data(){
        LogNeed2 logNeed2 = new LogNeed2();
        ArrayList<String> names = new ArrayList<>();
        ArrayList<Integer> values = new ArrayList<>();
        List<LogNeed7Mysql> allTime = logNeed7Service.findAllTime();
        for (LogNeed7Mysql logNeed7Mysql : allTime) {
            names.add(logNeed7Mysql.getTime());
            values.add(logNeed7Mysql.getSum_book());
        }
        logNeed2.setNames(names);
        logNeed2.setValues(values);
        return logNeed2;
    }

    @RequestMapping("/charts/logNeed10")
    public String getLogNeed10(){
        return "charts/logNeed10";
    }

    @RequestMapping("/charts/getlogNeed10Data")
    @ResponseBody
    public LogNeed2 getlogNeed10Data(){
        LogNeed2 logNeed2 = new LogNeed2();
        ArrayList<String> names = new ArrayList<>();
        ArrayList<Integer> values = new ArrayList<>();
        List<LogNeed10Mysql> allTime = logNeed10Service.findAllTimePeriod();
        for (LogNeed10Mysql logNeed10Mysql : allTime) {
            names.add(logNeed10Mysql.getTime_period());
            values.add(logNeed10Mysql.getBook_count());
        }
        logNeed2.setNames(names);
        logNeed2.setValues(values);
        return logNeed2;
    }


    @RequestMapping("/charts/getChargeData")
    @ResponseBody
    public ChargeVO getChargeData(){
        ChargeVO chargeVO = new ChargeVO();

        ArrayList<String> names = new ArrayList<>();
        ArrayList<Float> values = new ArrayList<>();
        //从mysql中取数据
        List<UserLog> lists = userLogService.getAll();
        //循环遍历
        for (UserLog userLog : lists) {
           names.add(userLog.getUsername());
           values.add(userLog.getSums());
        }
        //
        chargeVO.setNames(names);
        chargeVO.setValues(values);
        return chargeVO;
    }


//    @RequestMapping("/charts/getChargeData")
//    @ResponseBody
//    public ChargeVO getChargeData(){
//        ChargeVO chargeVO = new ChargeVO();
//
//        ArrayList<String> names = new ArrayList<>();
//        ArrayList<Float> values = new ArrayList<>();
//        //从redis中取数据
//        Map<Object, Object> map = stringRedisTemplate.opsForHash().entries("province");
//        //循环遍历
//        for (Map.Entry<Object, Object> entry : map.entrySet()) {
//            names.add(entry.getKey().toString());
//            values.add(Float.parseFloat(entry.getValue().toString()));
//        }
//        //
//        chargeVO.setNames(names);
//        chargeVO.setValues(values);
//        return chargeVO;
//    }
}
