/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.17-log : Database - db_blog1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_blog1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_blog1`;

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `summary` varchar(400) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `clickHit` int(11) DEFAULT NULL,
  `replyHit` int(11) DEFAULT NULL,
  `content` text,
  `typeId` int(11) DEFAULT NULL,
  `keyWord` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_blog` */

insert  into `t_blog`(`id`,`title`,`summary`,`releaseDate`,`clickHit`,`replyHit`,`content`,`typeId`,`keyWord`) values (1,'dfdsafa',' /**	  * 删除博客信息	  */	 @RequestMapping(\"/delete\")	 public String delete(@RequestParam(value=\"ids\")String ids,HttpServletResponse response)throws Exception{	','2017-10-11 23:31:21',5,1,'<pre class=\"brush:java;toolbar:false\">&nbsp;/**\n	&nbsp;&nbsp;*&nbsp;删除博客信息\n	&nbsp;&nbsp;*/\n	&nbsp;@RequestMapping(&quot;/delete&quot;)\n	&nbsp;public&nbsp;String&nbsp;delete(@RequestParam(value=&quot;ids&quot;)String&nbsp;ids,HttpServletResponse&nbsp;response)throws&nbsp;Exception{\n		&nbsp;String&nbsp;[]idsStr=ids.split(&quot;,&quot;);\n		&nbsp;for(int&nbsp;i=0;i&lt;idsStr.length;i++){\n			&nbsp;blogService.delete(Integer.parseInt(idsStr[i]));\n			&nbsp;blogIndex.deleteIndex(idsStr[i]);//删除对应的博客索引\n		&nbsp;}\n		&nbsp;JSONObject&nbsp;result&nbsp;=new&nbsp;JSONObject();\n		&nbsp;result.put(&quot;success&quot;,true);\n		&nbsp;ResponseUtil.write(response,&nbsp;result);\n		&nbsp;return&nbsp;null;\n	&nbsp;}</pre><pre class=\"brush:xml;toolbar:false\"><br/></pre><p>&lt;!-- 配置数据源 --&gt;</p><p><span style=\"white-space:pre\">	</span>&lt;bean id=&quot;dataSource&quot; class=&quot;com.alibaba.druid.pool.DruidDataSource&quot;&gt;</p><p><span style=\"white-space:pre\">		</span>&lt;property name=&quot;url&quot; value=&quot;jdbc:mysql://localhost:3306/db_blog1?useUnicode=true&amp;amp;characterEncoding=UTF-8&quot;&gt;&lt;/property&gt;</p><p><span style=\"white-space:pre\">		</span>&lt;property name=&quot;username&quot; value=&quot;root&quot;&gt;&lt;/property&gt;</p><p><span style=\"white-space:pre\">		</span>&lt;property name=&quot;password&quot; value=&quot;root&quot;&gt;&lt;/property&gt;</p><p><span style=\"white-space:pre\">	</span>&lt;/bean&gt;</p><p><img src=\"http://localhost:8080/zhangqiang//static/userImages/20171011/1507735875317081130.jpg\" style=\"\" title=\"1507735875317081130.jpg\"/></p><p><img src=\"http://localhost:8080/zhangqiang//static/userImages/20171011/1507735875312082709.jpg\" style=\"\" title=\"1507735875312082709.jpg\"/></p><p><img src=\"http://localhost:8080/zhangqiang//static/userImages/20171011/1507735875316014393.jpg\" style=\"\" title=\"1507735875316014393.jpg\"/></p><p><img src=\"http://localhost:8080/zhangqiang//static/userImages/20171011/1507735875403022771.jpg\" style=\"\" title=\"1507735875403022771.jpg\"/></p><p><br/></p>',14,''),(2,'3','<!-- 配置数据源 -->	<bean id=\"dataSource\" class=\"com.alibaba.druid.pool.DruidDataSource\">		<property name=\"url\" value=\"jdbc:mysql://localhost:3306/db_blog1?useU','2017-10-11 23:32:15',22,1,'<pre class=\"brush:xml;toolbar:false\">&lt;!--&nbsp;配置数据源&nbsp;--&gt;\n	&lt;bean&nbsp;id=&quot;dataSource&quot;&nbsp;class=&quot;com.alibaba.druid.pool.DruidDataSource&quot;&gt;\n		&lt;property&nbsp;name=&quot;url&quot;&nbsp;value=&quot;jdbc:mysql://localhost:3306/db_blog1?useUnicode=true&amp;amp;characterEncoding=UTF-8&quot;&gt;&lt;/property&gt;\n		&lt;property&nbsp;name=&quot;username&quot;&nbsp;value=&quot;root&quot;&gt;&lt;/property&gt;\n		&lt;property&nbsp;name=&quot;password&quot;&nbsp;value=&quot;root&quot;&gt;&lt;/property&gt;\n	&lt;/bean&gt;</pre><p><br/></p>',14,''),(4,'ffffff','<div class=\"data_list_title\">					<img src=\"${pageContext.request.contextPath}/static/images/user_icon.png\"/>					博主信息				</div>				<div class=\"user_image\"','2017-10-25 22:39:18',1,0,'<pre class=\"brush:java;toolbar:false\">&lt;div&nbsp;class=&quot;data_list_title&quot;&gt;\n					&lt;img&nbsp;src=&quot;${pageContext.request.contextPath}/static/images/user_icon.png&quot;/&gt;\n					博主信息\n				&lt;/div&gt;\n				&lt;div&nbsp;class=&quot;user_image&quot;&gt;\n					&lt;img&nbsp;src=&quot;${pageContext.request.contextPath}/static/userImages/${blogger.imageName&nbsp;}&quot;/&gt;\n				&lt;/div&gt;\n				\n				&lt;div&nbsp;class=&quot;nickName&quot;&gt;${blogger.nickName&nbsp;}&lt;/div&gt;\n				&lt;div&nbsp;class=&quot;userSign&quot;&gt;(${blogger.nickName&nbsp;})&lt;/div&gt;\n			&lt;/div&gt;\n			&lt;div&nbsp;class=&quot;data_list&quot;&nbsp;style=&quot;height:&nbsp;60px;&quot;&gt;\n				&lt;canvas&nbsp;id=&#39;canvas&#39;&nbsp;style=&quot;width:300px;&quot;&gt;您的浏览器不支持canvas&lt;/canvas&gt;\n			&lt;/div&gt;</pre><pre class=\"brush:sql;toolbar:false\">\n	create&nbsp;table\nCREATE&nbsp;TABLE&nbsp;`t_blog`&nbsp;(\n&nbsp;&nbsp;&nbsp;`id`&nbsp;int(11)&nbsp;NOT&nbsp;NULL&nbsp;AUTO_INCREMENT,\n&nbsp;&nbsp;&nbsp;`title`&nbsp;varchar(200)&nbsp;DEFAULT&nbsp;NULL,\n&nbsp;&nbsp;&nbsp;`summary`&nbsp;varchar(400)&nbsp;DEFAULT&nbsp;NULL,\n&nbsp;&nbsp;&nbsp;`releaseDate`&nbsp;datetime&nbsp;DEFAULT&nbsp;NULL,\n&nbsp;&nbsp;&nbsp;`clickHit`&nbsp;int(11)&nbsp;DEFAULT&nbsp;NULL,\n&nbsp;&nbsp;&nbsp;`replyHit`&nbsp;int(11)&nbsp;DEFAULT&nbsp;NULL,\n&nbsp;&nbsp;&nbsp;`content`&nbsp;text,\n&nbsp;&nbsp;&nbsp;`typeId`&nbsp;int(11)&nbsp;DEFAULT&nbsp;NULL,\n&nbsp;&nbsp;&nbsp;`keyWord`&nbsp;varchar(200)&nbsp;DEFAULT&nbsp;NULL,\n&nbsp;&nbsp;&nbsp;PRIMARY&nbsp;KEY&nbsp;(`id`),\n&nbsp;&nbsp;&nbsp;KEY&nbsp;`typeId`&nbsp;(`typeId`),\n&nbsp;&nbsp;&nbsp;CONSTRAINT&nbsp;`t_blog_ibfk_1`&nbsp;FOREIGN&nbsp;KEY&nbsp;(`typeId`)&nbsp;REFERENCES&nbsp;`t_blogtype`&nbsp;(`id`)\n&nbsp;)&nbsp;ENGINE=InnoDB&nbsp;AUTO_INCREMENT=82&nbsp;DEFAULT&nbsp;CHARSET=utf8</pre><p><br/></p>',14,''),(5,'骑士大将出院力挺韦德：说得对 就该这么骂！','骑士昨天在主场两分惜败给东部垫底的老鹰，成功阻止对方球队迎来他们的八连败，作为球员配置、整体实力都远远高于老鹰的骑士，在这即将迎来寒冷的冬夜里给对方送去了一丝温暖，简直当代球队里的活雷锋。现在东部排名第一的是凯尔特人，他们在开赛两连败后迎来了九连胜，战绩高居联盟首位。而骑士打完了前10场比赛后，仅仅取得4胜6','2017-11-07 22:12:14',15,3,'<p><span style=\"font-family: 微软雅黑; font-size: 14px;\"><span style=\"letter-spacing: 0.5px; text-align: justify;\">骑士昨天在主场两分惜败给东部垫底的老鹰，成功阻止对方球队迎来他们的八连败，作为球员配置、整体实力都远远高于老鹰的骑士，在这即将迎来寒冷的冬夜里给对方送去了一丝温暖，简直当代球队里的活雷锋。现在东部排名第一的是凯尔特人，他们在开赛两连败后迎来了九连胜，战绩高居联盟首位。<strong>而骑士打完了前10场比赛后，仅仅取得4胜6负的战绩，现在的骑士球迷如下。</strong></span></span><br/></p><p><br/></p><p><br/></p><p><span style=\"font-family: 微软雅黑; font-size: 14px;\"><strong><span style=\"letter-spacing: 0.5px; text-align: justify;\">昨天韦德打出了他加盟骑士以来的最强表现，得到25分11篮板6助攻。</span></strong><span style=\"letter-spacing: 0.5px; text-align: justify;\">作为替补，韦德的矛头直接对准了球队的首发阵容，他想骂醒眼前这支毫无侵略性的骑士。昨天骑士首发一共只得到46分，除詹姆斯和罗斯外，其他三人一共得15分。新赛季10场比赛，骑士有7场都是首节输给对手，一共净负49分。韦德态度坚决地说：<span style=\"letter-spacing: 0.5px; text-align: justify; color: #7b0c00;\"><strong>“我真希望能有一次，是因为我们替补丢了领先优势而被你们首发球员骂，我真期盼这一天到来。”</strong></span></span></span></p><p style=\"line-height: 1.75em; text-align: justify;\"><span style=\"font-family: 微软雅黑; font-size: 14px;\">　　<span style=\"letter-spacing: 0.5px;\">韦德已经累觉不爱了，骑士主力经常都是负的表现值。韦德说：“我们落后10多分，我就告诉大家，我们这群替补差不多每场比赛一上场就是帮主力去追分，我对替补的实力很有信心，但我们真不想每次都上来填坑了。”</span></span></p><p></p><p><span style=\"font-family: 微软雅黑; font-size: 14px;\"><span style=\"letter-spacing: 0.5px;\">而昨天骑士和老鹰的比赛中，<strong>乐福生病被紧急送往了医院</strong>。今天他出院了，重新回来了骑士队的训练馆参加球队的训练。乐福是在比赛中出现胃痛、呼吸不畅，然后紧急退出比赛去了医院，随后在医院进行了挂瓶。他说：“我就是觉得各种不舒服，各种不自在。我无法解释清楚这种感觉，因为我以前从来没有经历过这样的事。”</span></span></p><p style=\"line-height: 1.75em; text-align: justify;\"><span style=\"font-family: 微软雅黑; font-size: 14px;\">　　<span style=\"letter-spacing: 0.5px;\">昨天对老鹰的比赛，骑士先发球员表现不佳，替补倒是一直在努力追赶比分，赛后韦德公开批评了首发队员的表现。对此，<span style=\"letter-spacing: 0.5px; color: #7b0c00;\"><strong>乐福表示韦德批评得极对，就该这么说，首发队员需要被骂醒了。</strong></span>“我们打得确实很丑陋，我也不知道是哪里欠缺，不知道是能量问题，还是注意力的问题，我看到了韦德所说的，他说得完全正确。”</span></span></p><p><br/></p>',14,'信心 韦德 医院'),(6,'张强','','2017-11-07 23:36:54',29,5,'<p><img src=\"http://localhost:80//static/userImages/20171107/1510069000291046098.jpg\" style=\"\" title=\"1510069000291046098.jpg\"/></p><p><img src=\"http://localhost:80//static/userImages/20171107/1510069000360064537.jpg\" style=\"\" title=\"1510069000360064537.jpg\"/></p><p><img src=\"http://localhost:80//static/userImages/20171107/1510069000362056356.png\" style=\"\" title=\"1510069000362056356.png\"/></p><p><br/></p>',14,'张强 ');

/*Table structure for table `t_blogger` */

DROP TABLE IF EXISTS `t_blogger`;

CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile` text,
  `nickName` varchar(50) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  `imageName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_blogger` */

insert  into `t_blogger`(`id`,`userName`,`password`,`profile`,`nickName`,`sign`,`imageName`) values (1,'zhangqiang','c47d518fd94825eb30d7cce59497c399','<p>张强<img src=\"http://localhost:8080/zhangqiang/static/userImages/20171010/1507567948030021342.png\" title=\"1507567948030021342.png\" alt=\"image.png\"/></p><p><br/></p><p><br/></p><p>/**</p><p><span style=\"white-space:pre\">	</span> * 获取下一篇博客和下一篇博客代码</p><p><span style=\"white-space:pre\">	</span> * @param lastBlog</p><p><span style=\"white-space:pre\">	</span> * @param nextBlog</p><p><span style=\"white-space:pre\">	</span> * @return</p><p><span style=\"white-space:pre\">	</span> */</p><p><span style=\"white-space:pre\">	</span>private String genUpAndDownPageCode(Blog lastBlog,Blog nextBlog,String projectContext){</p><p><span style=\"white-space:pre\">		</span>StringBuffer pageCode=new StringBuffer();</p><p><span style=\"white-space:pre\">		</span>if(lastBlog==null || lastBlog.getId()==null){</p><p><span style=\"white-space:pre\">			</span>pageCode.append(&quot;&lt;p&gt;上一篇：没有了&lt;/p&gt;&quot;);</p><p><span style=\"white-space:pre\">		</span>}else{</p><p><span style=\"white-space:pre\">			</span>pageCode.append(&quot;&lt;p&gt;上一篇：&lt;a href=&#39;&quot;+projectContext+&quot;/blog/articles/&quot;+lastBlog.getId()+&quot;.html&#39;&gt;&quot;+lastBlog.getTitle()+&quot;&lt;/a&gt;&lt;/p&gt;&quot;);</p><p><span style=\"white-space:pre\">		</span>}</p><p><span style=\"white-space:pre\">		</span>if(nextBlog==null || nextBlog.getId()==null){</p><p><span style=\"white-space:pre\">			</span>pageCode.append(&quot;&lt;p&gt;下一篇：没有了&lt;/p&gt;&quot;);</p><p><span style=\"white-space:pre\">		</span>}else{</p><p><span style=\"white-space:pre\">			</span>pageCode.append(&quot;&lt;p&gt;下一篇：&lt;a href=&#39;&quot;+projectContext+&quot;/blog/articles/&quot;+nextBlog.getId()+&quot;.html&#39;&gt;&quot;+nextBlog.getTitle()+&quot;&lt;/a&gt;&lt;/p&gt;&quot;);</p><p><span style=\"white-space:pre\">		</span>}</p><p><span style=\"white-space:pre\">		</span>return pageCode.toString();</p><p><span style=\"white-space:pre\">	</span>}</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>CREATE TABLE `cgform_button` (<br/>&nbsp; `ID` varchar(32) NOT NULL COMMENT &#39;主键ID&#39;,<br/>&nbsp; `BUTTON_CODE` varchar(50) default NULL COMMENT &#39;按钮编码&#39;,<br/>&nbsp; `button_icon` varchar(20) default NULL COMMENT &#39;按钮图标&#39;,<br/>&nbsp; `BUTTON_NAME` varchar(50) default NULL COMMENT &#39;按钮名称&#39;,<br/>&nbsp; `BUTTON_STATUS` varchar(2) default NULL COMMENT &#39;按钮状态&#39;,<br/>&nbsp; `BUTTON_STYLE` varchar(20) default NULL COMMENT &#39;按钮样式&#39;,<br/>&nbsp; `EXP` varchar(255) default NULL COMMENT &#39;表达式&#39;,<br/>&nbsp; `FORM_ID` varchar(32) default NULL COMMENT &#39;表单ID&#39;,<br/>&nbsp; `OPT_TYPE` varchar(20) default NULL COMMENT &#39;按钮类型&#39;,<br/>&nbsp; `order_num` int(11) default NULL COMMENT &#39;排序&#39;,<br/>&nbsp; PRIMARY KEY&nbsp; (`ID`),<br/>&nbsp; KEY `index_formid` USING BTREE (`FORM_ID`),<br/>&nbsp; KEY `index_button_code` USING BTREE (`BUTTON_CODE`),<br/>&nbsp; KEY `index_button_status` USING BTREE (`BUTTON_STATUS`),<br/>&nbsp; KEY `index_button_order` USING BTREE (`order_num`)<br/>) ENGINE=InnoDB DEFAULT CHARSET=utf8;</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><a _src=\"http://www.baidu.com\" href=\"http://www.baidu.com\">http://www.baidu.com</a><br/></p><p><br/></p><p><br/></p>','个人博客系统112','时间确实是挤出来的12','20171025102746.png');

/*Table structure for table `t_blogtype` */

DROP TABLE IF EXISTS `t_blogtype`;

CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `t_blogtype` */

insert  into `t_blogtype`(`id`,`typeName`,`orderNo`) values (14,'张强',1);

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userIp` varchar(50) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

insert  into `t_comment`(`id`,`userIp`,`blogId`,`content`,`commentDate`,`state`) values (1,'0:0:0:0:0:0:0:1',2,'[嘘][撇嘴]','2017-10-12 21:44:25',1),(2,'0:0:0:0:0:0:0:1',3,'fdsff 顶顶顶顶顶顶顶顶顶[发呆][哈哈][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥][训斥]','2017-10-14 11:55:27',1),(3,'0:0:0:0:0:0:0:1',1,'[挑逗]','2017-11-01 01:07:45',1),(4,'0:0:0:0:0:0:0:1',5,'[懵圈]','2017-11-07 22:14:13',0),(5,'127.0.0.1',6,'[疑问]','2017-11-07 23:38:50',1),(6,'0:0:0:0:0:0:0:1',6,'12','2017-11-09 23:15:40',0),(7,'0:0:0:0:0:0:0:1',6,'12[疑问]','2017-11-09 23:19:00',1),(8,'0:0:0:0:0:0:0:1',6,'12[疑问]我勒个去\n国防大厦','2017-11-09 23:20:04',1),(9,'0:0:0:0:0:0:0:1',6,'发生大幅度发速度[作][撅嘴流汗]','2017-11-09 23:20:43',1),(10,'0:0:0:0:0:0:0:1',5,'[封口]我草你你个比','2017-11-09 23:27:54',1),(11,'0:0:0:0:0:0:0:1',5,'转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提转前活提','2017-11-09 23:29:56',1);

/*Table structure for table `t_file` */

DROP TABLE IF EXISTS `t_file`;

CREATE TABLE `t_file` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(500) DEFAULT NULL COMMENT '名称',
  `beizhu` varchar(500) DEFAULT NULL COMMENT '备注',
  `dizhi` varchar(500) DEFAULT NULL COMMENT '地址',
  `xzl` varchar(500) DEFAULT NULL COMMENT '下载量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `t_file` */

insert  into `t_file`(`id`,`name`,`beizhu`,`dizhi`,`xzl`) values (1,'1','3','1','2'),(2,'2','3','4','1'),(3,'2','3','4','0'),(4,'2','3','4','0'),(5,'2','3','4','0'),(6,'2','3','4','2'),(7,'2','3','4','0'),(8,'2','3','4','0'),(9,'2','3','4','1'),(10,'2','3','4','0'),(11,'2','3','4','0'),(12,'2','3','4','0'),(13,'2','23','4','0'),(14,'测试','测试1','D:\\eclipseMars\\eclipsMars2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\zhangqiang\\upload\\context.xml','0'),(15,'xml','解析xml','D:\\eclipseMars\\eclipsMars2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\zhangqiang\\upload\\context.xml','0'),(16,'JTree2.java','sdffdfd','D:\\eclipseMars\\eclipsMars2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\zhangqiang\\upload\\JTree2.java','0'),(17,'反倒是','方法','D:\\eclipseMars\\eclipsMars2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\zhangqiang\\upload\\IMG_0470_旋转.JPG','0'),(18,'爱妃','放大','D:\\eclipseMars\\eclipsMars2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\zhangqiang\\upload\\apache-tomcat-6.0.36.zip','0'),(19,'jdbcSupport.xml','发发呆','D:\\eclipseMars\\eclipsMars2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\zhangqiang\\upload\\jdbcSupport.xml','9'),(20,'工作总结111.xlsx','请问','D:\\eclipseMars\\eclipsMars2\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\zhangqiang\\upload\\工作总结111.xlsx','7'),(21,'1',NULL,NULL,NULL);

/*Table structure for table `t_link` */

DROP TABLE IF EXISTS `t_link`;

CREATE TABLE `t_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(100) DEFAULT NULL,
  `linkUrl` varchar(200) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_link` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `USER_ID` double DEFAULT NULL,
  `USER_NAME` varchar(90) DEFAULT NULL,
  `USER_PASSWORD` varchar(90) DEFAULT NULL,
  `USER_EMAIL` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`USER_ID`,`USER_NAME`,`USER_PASSWORD`,`USER_EMAIL`) values (1,'2','3','4'),(2,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(3,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(4,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(5,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(6,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(7,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(8,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(9,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(10,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(11,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(12,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(13,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(14,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(15,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(16,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(17,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(18,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(19,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(20,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(21,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(22,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(23,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(24,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(25,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(26,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(27,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(28,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(29,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(30,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(31,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(32,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(33,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(34,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(35,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(36,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(37,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(38,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(39,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(40,'USER_NAME','USER_PASSWORD','USER_EMAIL'),(41,'USER_NAME','USER_PASSWORD','USER_EMAIL');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
