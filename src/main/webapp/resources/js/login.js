var MemberAction = {};
MemberAction.login = function(formId) {
	var form = $('#' + formId);
	form.submit();
};