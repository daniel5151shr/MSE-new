package com.qst.mes;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * 青软MES项目开发实训
 */
@EnableAsync
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class MESApplication {

    private static Logger logger = LoggerFactory.getLogger(MESApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(MESApplication.class, args);
        logger.info("################MES服务端启动成功################");
    }
}
