package com.we.base;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class Logs {

    // Initialize Log4j instance
    static final Logger Logs = LogManager.getLogger(Logs.class);

    // Info Level Logs

    public static void info(String message) {
        Logs.info(message);
    }

    // Warn Level Logs
    public static void warn(String message) {
        Logs.warn(message);
    }

    // Error Level Logs
    public static void error(String message) {
        Logs.error(message);
    }

    // Fatal Level Logs
    public static void fatal(String message) {
        Logs.fatal(message);
    }

    // Debug Level Logs
    public static void debug(String message) {
        Logs.debug(message);
    }

}
