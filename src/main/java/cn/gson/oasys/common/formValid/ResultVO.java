package cn.gson.oasys.common.formValid;

/**
 * Description:
 * http请求返回的最外层对象
 *
 * @author zzy
 * @create 2017-09-07 13:38
 */

public class ResultVO<T> {
    /**
     * 错误码
     */
    private Integer code;
    /**
     * 提示信息
     */
    private String msg;
    /**
     * 返回的具体内容
     */

    T Data;

    public ResultVO() {
    }

    public ResultVO(Integer code, String msg, T data) {
        this.code = code;
        this.msg = msg;
        Data = data;
    }

    public ResultVO(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public ResultVO success(T data) {
        this.code = ResultEnum.SUCCESS.getCode();
        this.msg = ResultEnum.SUCCESS.getMessage();
        this.Data = data;
        return new ResultVO(code, msg, data);
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return Data;
    }

    public void setData(T data) {
        Data = data;
    }


    public ResultVO error(Integer code, String message, T data) {
        this.code = ResultEnum.ERROR.getCode();
        this.msg = msg;
        this.Data = data;
        return new ResultVO(code, msg, data);
    }
}