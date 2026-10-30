var danhSachVid = [
{
    id: 1,
    ten: "Em của ngày hôm qua",
    duongDanAnh: "ảnh bài hát/emCuaNgayHomQua.jpg",
    duongDanYoutube: "https://www.youtube.com/embed/t-cKtOItdhc?si=I-1TK47itjdM_3Gb"
},
{
    id: 2,
    ten: "Đom đóm",
    duongDanAnh: "ảnh bài hát/domDom.jpg",
    duongDanYoutube: "https://www.youtube.com/embed/4CCGI83vOVo?si=vVYeaMaG0JPe6AD4"
},
{
    id: 3,
    ten: "Không buông",
    duongDanAnh: "ảnh bài hát/khongBuong.jpg",
    duongDanYoutube: "https://www.youtube.com/embed/9UcQ7ddVjoc?si=jSxNRu4n-H_59PD17"
},
{
    id: 4,
    ten: "Secret",
    duongDanAnh: "ảnh bài hát/secret.jpg",
    duongDanYoutube: "https://www.youtube.com/embed/XwshmJV-DHg?si=UGIranMxvcMVeNXI"
}
]

function chonBai(id){
    for (let i = 0; i < danhSachVid.length; i++) {
        if(danhSachVid[i].id == id) {
            document.getElementsByClassName("video")[0].src = danhSachVid[i].duongDanYoutube
        }
    }


}