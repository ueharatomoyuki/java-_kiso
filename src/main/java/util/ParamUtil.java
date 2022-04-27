package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint(int po) {
		double re = Math.floor(po * 0.01) ; 
		return (int) re ;
	}


    /**
     * ポイント計算(ランクあり)
     */
	public static int gePoint(int x, int y) {
		double re = Math.floor(x * y*0.01) ;
		return (int) re ;
	}

    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
	public static boolean isNullOrEmpty(String str) {
		if(str.isEmpty()) {
    		return true ;
    	}else {
            return false;
    	}
		
	}


}
