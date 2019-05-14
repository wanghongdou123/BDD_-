# Created by doudou at 2018/8/1
# Created by doudou at 2018/6/27
Feature: Query specified vehicle information and Estimated price
  As a consumer
  I want to Query specified vehicle information
  In order to inquiry the value of my car
  Background: This is a set of search criteria data
    |品牌     |车型           |年款   |销售名称                       |首次上牌     |上牌城市    |行驶里程   |姓名            |验证码  |新车含税价 |
    |奥迪     |A3 Limousine   |2016  |1.8TFSI 双离合 40TFSI 风尚型   |2016年6月    |北京 北京   |2.61	   |阿尔扎提·阿尔西丁 |123456 |25.39    |

  Scenario: Five sets of empty conditions estimate prices
    Given I have install the app named "车辆估价平台" and open the app home page
    And there have "已有100,000,000人次进行了车辆的精准评估" at the top of page,Each visit, counting plus 1
    And there have three selection boxes are "选择车型"、"首次上牌"、"上牌城市" besides there have input boxes are "行驶里程"、"手机号码"
    And there have a button is "马上估值"

    When I have't input any Query conditions
    And I click button named is "马上估值"
    Then I can see a popup window showing "请选择爱车车型" appears in the middle of the screen

  Scenario: select one conditions estimate prices
    Given I have install the app named "车辆估价平台" and open the app home page
    And there have "已有100,000,000人次进行了车辆的精准评估" at the top of page,Each visit, counting plus 1
    And there have three selection boxes are "选择车型"、"首次上牌"、"上牌城市" besides there have input boxes are "行驶里程"、"手机号码"
    And there have a button is "马上估值"

    When I click "选择车型"
    Then I can see "选择品牌" at the top of the page and centered
    And I can see a label is "热门品牌"
    And I can see there have 10 hot brands in the upper part
    And I can see the Brand names are sorted by first character

    When I click a Brands is "奥迪"
    Then I can see "奥迪" at the top of the page and centered
    And I can see a label is "车型级别"
    And I can see there have all styles of "奥迪" in the upper part

    When I click "紧凑型车"
    Then I can see "A3 Limousine" in pagesouce

    When I click "A3 Limousine"
    Then I can see "A3 Limousine" at the top of the page and centered
    And I can see "2016 1.8TFSI 双离合 40TFSI 风尚型" in pagesouce

    When I click "2016 1.8TFSI 双离合 40TFSI 风尚型"
    Then I can see the button is named "马上估值"
    And I can see "选择车型" is "奥迪 A3 Limousine 2016 1.8TFSI 双离合 40TFSI 风尚型"

    When I click button "马上估值"
    Then I can see a popup window showing "请选择爱车上牌时间" appears in the middle of the screen


  Scenario: select two conditions estimate prices
    Given I have install the app named "车辆估价平台" and open the app home page
    And there have "已有100,000,000人次进行了车辆的精准评估" at the top of page,Each visit, counting plus 1
    And there have three selection boxes are "选择车型"、"首次上牌"、"上牌城市" besides there have input boxes are "行驶里程"、"手机号码"
    And there have a button is "马上估值"

    When I click "选择车型"
    Then I can see "选择品牌" at the top of the page and centered
    And I can see a label is "热门品牌"
    And I can see there have 10 hot brands in the upper part
    And I can see the Brand names are sorted by first character

    When I click a Brands is "奥迪"
    Then I can see "奥迪" at the top of the page and centered
    And I can see a label is "车型级别"
    And I can see there have all styles of "奥迪" in the upper part

    When I click "紧凑型车"
    Then I can see "A3 Limousine" in pagesouce

    When I click "A3 Limousine"
    Then I can see "A3 Limousine" at the top of the page and centered
    And I can see "2016 1.8TFSI 双离合 40TFSI 风尚型" in pagesouce

    When I click "2016 1.8TFSI 双离合 40TFSI 风尚型"
    Then I can see the button is named "马上估值"
    And I can see "选择车型" is "奥迪 A3 Limousine 2016 1.8TFSI 双离合 40TFSI 风尚型"

    When I click "请选择时间"
    Then I can see Date picker
    And  I can see "首次上牌" default is "2018年8月"

    When I select "2016年6月"
    Then I can see "首次上牌" is "2016年6月"

    When I click button "马上估值"
    Then I can see a popup window showing "请选择爱车上牌城市" appears in the middle of the screen


  Scenario: select three conditions estimate prices
    Given I have install the app named "车辆估价平台" and open the app home page
    And there have "已有100,000,000人次进行了车辆的精准评估" at the top of page,Each visit, counting plus 1
    And there have three selection boxes are "选择车型"、"首次上牌"、"上牌城市" besides there have input boxes are "行驶里程"、"手机号码"
    And there have a button is "马上估值"

    When I click "选择车型"
    Then I can see "选择品牌" at the top of the page and centered
    And I can see a label is "热门品牌"
    And I can see there have 10 hot brands in the upper part
    And I can see the Brand names are sorted by first character

    When I click a Brands is "奥迪"
    Then I can see "奥迪" at the top of the page and centered
    And I can see a label is "车型级别"
    And I can see there have all styles of "奥迪" in the upper part

    When I click "紧凑型车"
    Then I can see "A3 Limousine" in pagesouce

    When I click "A3 Limousine"
    Then I can see "A3 Limousine" at the top of the page and centered
    And I can see "2016 1.8TFSI 双离合 40TFSI 风尚型" in pagesouce

    When I click "2016 1.8TFSI 双离合 40TFSI 风尚型"
    Then I can see the button is named "马上估值"
    And I can see "选择车型" is "奥迪 A3 Limousine 2016 1.8TFSI 双离合 40TFSI 风尚型"

    When I click "请选择时间"
    Then I can see Date picker
    And  I can see "首次上牌" default is "2018年8月"
    When I select "2016年6月"
    Then I can see "首次上牌" is "2016年6月"

    When I click "请选择地区"
    Then I can see area picker
    And I can see "上牌城市" default is "北京 北京"
    When I select "河北 石家庄"
    Then I can see "上牌城市" is "北京 北京"

    When I click button "马上估值"
    Then I can see a popup window showing "请输入爱车行驶里程" appears in the middle of the screen

  Scenario: select four conditions but delete entered driven distance estimate prices
    Given I have install the app named "车辆估价平台" and open the app home page
    And there have "已有100,000,000人次进行了车辆的精准评估" at the top of page,Each visit, counting plus 1
    And there have three selection boxes are "选择车型"、"首次上牌"、"上牌城市" besides there have input boxes are "行驶里程"、"手机号码"
    And there have a button is "马上估值"

    When I click "选择车型"
    Then I can see "选择品牌" at the top of the page and centered
    And I can see a label is "热门品牌"
    And I can see there have 10 hot brands in the upper part
    And I can see the Brand names are sorted by first character

    When I click a Brands is "奥迪"
    Then I can see "奥迪" at the top of the page and centered
    And I can see a label is "车型级别"
    And I can see there have all styles of "奥迪" in the upper part

    When I click "紧凑型车"
    Then I can see "A3 Limousine" in pagesouce

    When I click "A3 Limousine"
    Then I can see "A3 Limousine" at the top of the page and centered
    And I can see "2016 1.8TFSI 双离合 40TFSI 风尚型" in pagesouce

    When I click "2016 1.8TFSI 双离合 40TFSI 风尚型"
    Then I can see the button is named "马上估值"
    And I can see "选择车型" is "奥迪 A3 Limousine 2016 1.8TFSI 双离合 40TFSI 风尚型"

    When I click "请选择时间"
    Then I can see Date picker
    And  I can see "首次上牌" default is "2018年8月"
    When I select "2016年6月"
    Then I can see "首次上牌" is "2016年6月"

    When I click "请选择地区"
    Then I can see area picker
    And I can see "上牌城市" default is "北京 北京"
    When I select "河北 石家庄"
    Then I can see "上牌城市" is "北京 北京"

    When I click area picker is "万公里"
    And I enter "2.61"
    Then I can see "行驶里程" is "2.61"

    When I delete "2.61"
    And I click button "马上估值"
    Then I can see a popup window showing "请输入爱车行驶里程" appears in the middle of the screen

  Scenario: select four conditions but the fourth is invalid estimate prices
    Given I have install the app named "车辆估价平台" and open the app home page
    And there have "已有100,000,000人次进行了车辆的精准评估" at the top of page,Each visit, counting plus 1
    And there have three selection boxes are "选择车型"、"首次上牌"、"上牌城市" besides there have input boxes are "行驶里程"、"手机号码"
    And there have a button is "马上估值"

    When I click "选择车型"
    Then I can see "选择品牌" at the top of the page and centered
    And I can see a label is "热门品牌"
    And I can see there have 10 hot brands in the upper part
    And I can see the Brand names are sorted by first character

    When I click a Brands is "奥迪"
    Then I can see "奥迪" at the top of the page and centered
    And I can see a label is "车型级别"
    And I can see there have all styles of "奥迪" in the upper part

    When I click "紧凑型车"
    Then I can see "A3 Limousine" in pagesouce

    When I click "A3 Limousine"
    Then I can see "A3 Limousine" at the top of the page and centered
    And I can see "2016 1.8TFSI 双离合 40TFSI 风尚型" in pagesouce

    When I click "2016 1.8TFSI 双离合 40TFSI 风尚型"
    Then I can see the button is named "马上估值"
    And I can see "选择车型" is "奥迪 A3 Limousine 2016 1.8TFSI 双离合 40TFSI 风尚型"

    When I click "请选择时间"
    Then I can see Date picker
    And  I can see "首次上牌" default is "2018年8月"
    When I select "2016年6月"
    Then I can see "首次上牌" is "2016年6月"

    When I click "请选择地区"
    Then I can see area picker
    And I can see "上牌城市" default is "北京 北京"
    When I select "河北 石家庄"
    Then I can see "上牌城市" is "北京 北京"

    When I click area picker is "万公里"
    And I enter "-10.23"
    Then I can see "行驶里程" is "-10.23"

    When I click button "马上估值"
    Then I can see a popup window showing "请输入有效的爱车行驶里程" appears in the middle of the screen

    When I click area picker is "万公里"
    And I enter "10000"
    Then I can see "行驶里程" is "10000"

    When I click button "马上估值"
    Then I can see a popup window showing "请输入有效的爱车行驶里程" appears in the middle of the screen


  Scenario: select four conditions estimate prices
    Given I have install the app named "车辆估价平台" and open the app home page
    And there have "已有100,000,000人次进行了车辆的精准评估" at the top of page,Each visit, counting plus 1
    And there have three selection boxes are "选择车型"、"首次上牌"、"上牌城市" besides there have input boxes are "行驶里程"、"手机号码"
    And there have a button is "马上估值"

    When I click "选择车型"
    Then I can see "选择品牌" at the top of the page and centered
    And I can see a label is "热门品牌"
    And I can see there have 10 hot brands in the upper part
    And I can see the Brand names are sorted by first character

    When I click a Brands is "奥迪"
    Then I can see "奥迪" at the top of the page and centered
    And I can see a label is "车型级别"
    And I can see there have all styles of "奥迪" in the upper part

    When I click "紧凑型车"
    Then I can see "A3 Limousine" in pagesouce

    When I click "A3 Limousine"
    Then I can see "A3 Limousine" at the top of the page and centered
    And I can see "2016 1.8TFSI 双离合 40TFSI 风尚型" in pagesouce

    When I click "2016 1.8TFSI 双离合 40TFSI 风尚型"
    Then I can see the button is named "马上估值"
    And I can see "选择车型" is "奥迪 A3 Limousine 2016 1.8TFSI 双离合 40TFSI 风尚型"

    When I click "请选择时间"
    Then I can see Date picker
    And  I can see "首次上牌" default is "2018年8月"
    When I select "2016年6月"
    Then I can see "首次上牌" is "2016年6月"

    When I click "请选择地区"
    Then I can see area picker
    And I can see "上牌城市" default is "北京 北京"
    When I select "河北 石家庄"
    Then I can see "上牌城市" is "北京 北京"

    When I click area picker is "万公里"
    And I enter "2.61"
    Then I can see "行驶里程" is "2.61"

    When I click button "马上估值"
    Then I can see "爱车评估" in page top
    And I can see first line is "奥迪 A3 Limousine 2016 1.8TFSI 双离合 40TFSI 风尚型"
    And I can see second line is "2016年6月 北京 北京 2.61万公里"
    And I can see third line is "新车含税价：25.39万"
    And I can see "新车未来五年估值" 2018 is "25.39万" 2019 is "20.31万" 2020 is "14.25万" 2021 is "13万" 2022 is "10.40万"


  Scenario: Check session plus 1
    Given I can see "爱车评估" in page top
    When I click back
    Then I can see "已有100,000,001人次进行了车辆的精准评估" at the top of page
    And I can see "选择车型" is "奥迪 A3 Limousine 2016 1.8TFSI 双离合 40TFSI 风尚型"
    And I can see "首次上牌" is "2016年6月"
    And I can see "上牌城市" is "北京 北京"
    And I can see "行驶里程" is "2.61"



















