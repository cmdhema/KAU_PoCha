function memberJoinAction()
{
/*
    if ($('#email1').val() == '' || $('#email2').val() == '') {
        alert(__('이메일을 입력하세요.'));

        if ($('#email1').val() == '')            $('#email1').focus();
        else if ($('#email2').val() == '')       $('#email2').focus();

        return false;
     }
    
    if (FwValidator.Verify.isEmail(sEmail) == false) {
        alert(__('입력하신 이메일을 사용할 수 없습니다.'));
        $('#email1').focus();
        return false;
    }
    
    //날짜 체크
    var aCheckDateMap = [{'idPrefix' : 'birth', 'idName' : __('생년월일')}, {'idPrefix' : 'marry', 'idName' : __('결혼기념일')}, {'idPrefix' : 'partner', 'idName' : __('배우자 생일')}];

    for (var i = 0; i < aCheckDateMap.length; i++) {
        var bDateResult = checkDate(aCheckDateMap[i]['idPrefix'], aCheckDateMap[i]['idName']);
        if (bDateResult == false) return false;
    }

    // 환불계좌 정보 체크
    if ( $('#is_display_bank').val() == 'T'  && $("#useSimpleSignin").val() !='T' ) {
        if ($('#bank_account_owner').val() == '') {
            alert('예금주를 입력해주세요');
            $('#bank_account_owner').focus();

            return false;
        } else if ($('#refund_bank_code').val() == '') {
            alert('은행명을 선택해주세요');
               $('#refund_bank_code').focus();

               return false;
        } else if ($('#bank_account_no').val() == '') {
            alert('환불 계좌번호를 입력해주세요');
            $('#bank_account_no').focus();
            
            return false;
        }
    }
    

    var bank_account_no = $('#bank_account_no').val();
    if ($.trim(bank_account_no) && isNaN(bank_account_no)) {
        alert('계좌번호는 숫자만 입력해 주세요');
        $('#bank_account_no').focus();

        return false;
    }
*/

    if ($('#passwd').val() == '' || $('#user_passwd_confirm').val() == '' ) {
        alert(__('비밀번호 항목은 필수 입력값입니다.'));
        return false;
    }

//    var passwd_type =  ($('#passwd_type').val() == '' || $('#passwd_type').length < 1 ) ? 'A' : $('#passwd_type').val();

    // 비밀번호 조합 체크
//    var passwd_chk = ckPwdPattern($('#passwd').val(), passwd_type);
//    if (passwd_chk !== true) {
//        if (passwd_type == 'A')
//            alert(__('4~16자로 입력해 주세요.'));
//        if (passwd_type == 'B') {
//            if (passwd_chk == 'F')
//                alert(__("공백 또는 허용된 특수문자(~ ` ! @ # $ % ^ ( ) _ - = { [ } ] ' ; : < > , . ? /)외의 특수문자는 사용할 수 없습니다."));
//            else
//                alert(__('영문 대소문자, 숫자, 또는 특수문자 중 2가지 이상 조합하여 8~16자로 입력해 주세요.'));
//        }
//        if (passwd_type == 'C') {
//            if (passwd_chk == 'F')
//                alert(__("공백 또는 허용된 특수문자(~ ` ! @ # $ % ^ ( ) _ - = { [ } ] ' ; : < > , . ? /)외의 특수문자는 사용할 수 없습니다."));
//            else
//                alert(__('영문 대소문자, 숫자, 또는 특수문자 중 2가지 이상 조합하여 10~16자로 입력해 주세요.'));
//        }
//        if (passwd_type == 'D') {
//            if (passwd_chk == 'F')
//                alert(__("공백 또는 허용된 특수문자(~ ` ! @ # $ % ^ ( ) _ - = { [ } ] ' ; : < > , . ? /)외의 특수문자는 사용할 수 없습니다."));
//            else
//                alert(__('비밀번호는 영문 대소문자/숫자/특수문자 중 3가지 이상 조합,8자 ~ 16자로 설정하셔야 합니다.'));
//        }
//        $('#passwd').focus();
//        return false;
//    }
    
//    var result = FwValidator.inspection('joinForm');
    
//    if (result.passed == true) {
//        
//        if ($("#is_use_checking_join_info").val()==="T") {
//            if (CheckingJoinInfo()===true) return false;
////        }
//        
//        $('#joinForm').submit();
//    }
    
    $('#joinForm').submit();
}


/**
 * 비밀번호 체크
 */
function ckPwdPattern(sPwd, sPwdType)
{
    if (sPwdType == 'A') {
        var pattern = /^[a-zA-Z0-9]{4,16}$/; //조합없이 4~16
        var chk = (pattern.test(sPwd)) ? true : false;
        return chk;
    } else {
        var chars1 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'; //영대소문자
        var chars2 = '0123456789'; //숫자
        var chars3 = '\~\`\!\@\#\$\%\^\(\)\_\-\=\{\}\[\]\|\;\:\<\>\,\.\?\/';

        var s = containsChar(sPwd, chars1, chars2, chars3);
        var s1 = s.split("/");
        var check_length = 0;

        if (s1[0] > 0) {
            check_length = parseInt(check_length)+parseInt(s1[0]);
            s1[0] = 1;
        }
        if (s1[1] > 0) {
            check_length = parseInt(check_length)+parseInt(s1[1]);
            s1[1] = 1;
        }
        if (s1[2] > 0) {
            check_length = parseInt(check_length)+parseInt(s1[2]);
            s1[2] = 1;
        }

        //영대문자, 숫자, 특수문자 중 2가지 이상 조합이면
        if ((parseInt(s1[0]) + parseInt(s1[1]) + parseInt(s1[2])) >= 2) {
            if (sPwdType == 'B') {
                if (sPwd.length >= 8 && sPwd.length <=16) {
                    if (sPwd.length > check_length) {//허용되지 않은 문자가 포함된 경우
                        return 'F';//허용되지 않은 문자가 포함됨
                    } else {
                        return true;
                    }
                } else {
                    return false;//8자~16자가 안됨
                }
            } else if (sPwdType == 'C') {
                if (sPwd.length >= 10 && sPwd.length <=16) {
                    if (sPwd.length > check_length) {
                        return 'F';
                    } else {
                        return true;
                    }
                } else {
                    return false;//10자~16자가 안됨
                }
            } else if (sPwdType == 'D') {
                if (parseInt(s1[0]) + parseInt(s1[1]) + parseInt(s1[2]) != 3)
                    return false;

                if (sPwd.length >= 8 && sPwd.length <=16) {
                    if (sPwd.length > check_length) {
                        return 'F';
                    } else {
                        return true;
                    }
                } else {
                    return false;//8자~16자가 안됨
                }
            } else {
                return false;
            }
        } else {
            return false; //영문대소문자, 숫자, 특수문자 2가지 조합이 안됨
        }
    }
}
