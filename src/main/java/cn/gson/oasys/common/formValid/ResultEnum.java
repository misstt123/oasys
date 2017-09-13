package cn.gson.oasys.common.formValid;

/**
 * Description:
 * 异常结果抛出
 *
 * @author zzy
 * @create 2017-09-12 14:56
 */
public enum ResultEnum {
    ERROR(2, "验证失败"),
    SUCCESS(200, "成功"),
    NONETYPE(1, "找不到参数"),;

    private Integer code;
    private String message;


    ResultEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
