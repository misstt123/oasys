package cn.gson.oasys.common.formValid;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

public class BindingResultVOUtil {
    /**
     * 表单验证，返回形式ResultVO
     *
     * @param br
     * @return
     */
    public static ResultVO hasErrors(BindingResult br) {
        if (br.hasErrors()) {
            List<FieldError> fieldErrors = br.getFieldErrors();
            List<String> messagge;
            Map<String, List<String>> map = new HashMap<>();
            for (FieldError fieldError : fieldErrors) {
                if (!map.containsKey(fieldError.getField())) {
                    messagge = new ArrayList<>();
                } else {
                    messagge = map.get(fieldError.getField());
                }
                messagge.add(fieldError.getDefaultMessage());
                map.put(fieldError.getField(), messagge);
            }
            return new BindingResultVOUtil().verifyError(ResultEnum.ERROR.getCode(), ResultEnum.ERROR.getMessage(), map);
        }
        return new BindingResultVOUtil().success();
    }
    
    

    public static ResultVO success() {
        return success(null);
    }
    
    public static ResultVO success(Object object) {
        ResultVO resultVO = new ResultVO();
        resultVO.setData(object);
        resultVO.setMsg("成功");
        resultVO.setCode(ResultEnum.SUCCESS.getCode());
        return resultVO;
    }

    public static ResultVO error(Integer code, String msg) {
        ResultVO resultVo = new ResultVO();
        resultVo.setCode(code);
        resultVo.setMsg(msg);
        return resultVo;
    }

    /**
     * 验证错误
     *
     * @param code
     * @param msg
     * @param map
     * @return
     */
    public static ResultVO verifyError(Integer code, String msg, Map map) {
        ResultVO resultVo = new ResultVO();
        resultVo.setCode(code);
        resultVo.setMsg(msg);
        resultVo.setData(map);
        return resultVo;
    }
}