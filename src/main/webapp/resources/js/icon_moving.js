$(document).ready(function () {
    balloon_Moving();
});

// ������ ������
function balloon_Moving() {
    $("#img_ball")
    .animate({ marginTop: "5px" }, 500, "", function () {
        $(this)
        .animate({ marginTop: "0px" }, 500, "", function () {
        // �ڱ� ȣ��
        balloon_Moving(); });
    });
}