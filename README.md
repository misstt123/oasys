##	oasys(OA自动化办公系统)
 办公自动化（OA）是面向组织的日常运作和管理，员工及管理者使用频率最高的应用系统，极大提高公司的办公效率。
###	1.项目介绍
oasys是一个OA办公自动化系统，使用Maven进行项目管理，基于springboot框架开发的项目，mysql底层数据库，前端采用freemarker模板引擎，Bootstrap作为前端UI框架，集成了jpa、mybatis等框架。作为初学springboot的同学是一个很不错的项目，如果想在此基础上面进行OA的增强，也是一个不错的方案。
### 2.框架介绍
#### 前端

| 技术      |    名称| 版本|	官网|
| :--------: | :--------:| :--: |:--:|
| freemarker|模板引擎|springboot1.5.6.RELEASE集成版本|https://freemarker.apache.org/|
| Bootstrap|前端UI框架|3.3.7|http://www.bootcss.com/|
| Jquery|快速的JavaScript框架|1.11.3|https://jquery.com/|
|kindeditor|HTML可视化编辑器|4.1.10|http://kindeditor.net|
|My97 DatePicker|时间选择器|4.8 Beta4|http://www.my97.net/|

#### 后端

| 技术 | 名称 | 版本 | 官网 |
| :--------: | :--------:|:---:|:------:|
|SpringBoot|SpringBoot框架|1.5.6.RELEASE|https://spring.io/projects/spring-boot|
|JPA|spring-data-jpa|1.5.6.RELEASE|https://projects.spring.io/spring-data-jpa|
|Mybatis|Mybatis框架|1.3.0|http://www.mybatis.org/mybatis-3|
|fastjson|json解析包|1.2.36|https://github.com/alibaba/fastjson|
|pagehelper|Mybatis分页插件|1.0.0|https://pagehelper.github.io|

### 3.部署流程

            1.下载项目、把oasys.sql(原tr18lx.sql)导入本地数据库
		2. 修改application.properties，
		3. 修改数据源，oasys——>自己本地的库名，用户名和密码修改成自己的
		4. 修改相关路径，配置图片路径、文件路径、附件路径
		5. OasysApplication.java中的main方法运行，控制台没有报错信息，数据启动时间多久即运行成功
		6. 在浏览器中输入localhost:8088/logins
		
### 4. 演示地址

#####     演示地址链接：http://oa.lxsir.cn:8088/index
#####     账号：test      密码：test

###  5.项目截图





# oa_system
办公自动化（OA）是面向组织的日常运作和管理，员工及管理者使用频率最高的应用系统，极大提高公司的办公效率。![富士达](https://images.gitee.com/uploads/images/2018/0926/110634_4b26994c_1277461.jpeg "l.jpg")
###  使用Maven来进行项目管理，数据库文件为tr18lx.sql；
### 请先记得把数据库文件中的数据到你所对应的数据库，在application.properties文件里面修改数据源，把数据库名字改成你的
[![主页面.png](https://i.loli.net/2018/03/02/5a98ec4da6bb0.png)](https://i.loli.net/2018/03/02/5a98ec4da6bb0.png)
[![用户面板.png](https://i.loli.net/2018/03/02/5a98ec4da96b4.png)](https://i.loli.net/2018/03/02/5a98ec4da96b4.png)

[![登录界面.png](https://i.loli.net/2018/03/02/5a98ec4e28dcb.png)](https://i.loli.net/2018/03/02/5a98ec4e28dcb.png)

[![流程_费用报销详情.png](https://i.loli.net/2018/03/02/5a98ec4d7aec0.png)](https://i.loli.net/2018/03/02/5a98ec4d7aec0.png)
[![笔记管理.png](https://i.loli.net/2018/03/02/5a98ec4d7edc2.png)](https://i.loli.net/2018/03/02/5a98ec4d7edc2.png)
[![日程管理_查看.png](https://i.loli.net/2018/03/02/5a98ec4d8b86c.png)](https://i.loli.net/2018/03/02/5a98ec4d8b86c.png)
[![文件管理.png](https://i.loli.net/2018/03/02/5a98ec4d8eb92.png)](https://i.loli.net/2018/03/02/5a98ec4d8eb92.png)
[![邮件管理.png](https://i.loli.net/2018/03/02/5a98ec4d9c10b.png)](https://i.loli.net/2018/03/02/5a98ec4d9c10b.png)
[![讨论区_投票.png](https://i.loli.net/2018/03/02/5a98ec4d9d689.png)](https://i.loli.net/2018/03/02/5a98ec4d9d689.png)

[![通讯录.png](https://i.loli.net/2018/03/02/5a98ec4dab825.png)](https://i.loli.net/2018/03/02/5a98ec4dab825.png)
