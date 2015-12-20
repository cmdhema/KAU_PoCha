$(document).ready(function () {
    balloon_Moving();
});

// 아이콘 움직임
function balloon_Moving() {
    $("#img_ball")
    .animate({ marginTop: "5px" }, 500, "", function () {
        $(this)
        .animate({ marginTop: "0px" }, 500, "", function () {
        // 자기 호출
        balloon_Moving(); });
    });
}