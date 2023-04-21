#!/bin/bash

# 定义变量
BOT_DIR="/root/qq-example"
BOT_PY="$BOT_DIR/bot.py"
CQHTTP_DIR="$BOT_DIR/cqhttp"
CQHTTP_BIN="$CQHTTP_DIR/go-cqhttp"

# 定义函数
start() {
    nohup python3 $BOT_PY > $BOT_DIR/bot.log 2>&1 &
    cd $CQHTTP_DIR && nohup ./go-cqhttp > $CQHTTP_DIR/cqhttp.log 2>&1 &
    echo "Bot and CQHTTP started."
}

stop() {
    killall python3
    killall go-cqhttp-linux
    echo "Bot and CQHTTP stopped."
}

restart() {
    stop
    start
}

clear_logs() {
    echo "" > $BOT_DIR/bot.log
    echo "" > $CQHTTP_DIR/cqhttp.log
    echo "Log files cleared."
}

# 根据传入的参数执行相应操作
case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    restart)
        restart
        ;;
    clear_logs)
        clear_logs
        ;;
    *)
        echo "Usage: $0 {start|stop|restart|clear_logs}"
        exit 1
        ;;
esac
