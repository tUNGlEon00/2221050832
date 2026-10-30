var danhSachPhim = [
    {
        id: 1,
        duongDanAnh: "pic/Các thể loại phim/Phim hài/phim-hai-hay-2.jpg"
    },
    {
        id: 2,
        duongDanAnh: "pic/Các thể loại phim/Phim hài/phim-hai-1.jpg"
    },
    {
        id: 3,
        duongDanAnh: "pic/Các thể loại phim/Phim hài/phim-hai-2.jpg"
    },
    {
        id: 4,
        duongDanAnh: "pic/Các thể loại phim/Phim hài/phim-hai-3.jpg"
    },
    {
        id: 5,
        duongDanAnh: "pic/Các thể loại phim/Phim hài/phim-hai-4.jpg"
    },
    {
        id: 6,
        duongDanAnh: "pic/Các thể loại phim/Phim động vật/voh-phim-ve-dong-vat.jpg"
    },
    {
        id: 7,
        duongDanAnh: "pic/Các thể loại phim/Phim động vật/voh-top-15-phim-dong-vat-2.jpg"
    },
    {
        id: 8,
        duongDanAnh: "pic/Các thể loại phim/Phim động vật/voh-top-15-phim-dong-vat-3.jpg"
    },
    {
        id: 9,
        duongDanAnh: "pic/Các thể loại phim/Phim động vật/voh-top-15-phim-dong-vat-4.jpg"
    },
    {
        id: 10,
        duongDanAnh: "pic/Các thể loại phim/Phim động vật/voh-top-15-phim-dong-vat.jpg"
    },
    {
        id: 11,
        duongDanAnh: "pic/Các thể loại phim/Phim phổ biến/0020310.webp"
    },
    {
        id: 12,
        duongDanAnh: "pic/Các thể loại phim/Phim phổ biến/0020320.webp"
    },
    {
        id: 13,
        duongDanAnh: "pic/Các thể loại phim/Phim phổ biến/0020341.webp"
    },
    {
        id: 14,
        duongDanAnh: "pic/Các thể loại phim/Phim phổ biến/04fr0jdj-1920x1080-satthunoitro-3-1267-712_b68cda61.jpg"
    },
    {
        id: 15,
        duongDanAnh: "pic/Các thể loại phim/Phim phổ biến/maxresdefault.jpg"
    },
    {
        id: 16,
        duongDanAnh: "pic/Các thể loại phim/Phim hoạt hình/hinh-nen-thanh-guom-diet-quy-2.jpg"
    },
    {
        id: 17,
        duongDanAnh: "pic/Các thể loại phim/Phim hoạt hình/dragonball.jpg"
    },
    {
        id: 18,
        duongDanAnh: "pic/Các thể loại phim/Phim hoạt hình/JJK.jpg"
    },
    {
        id: 19,
        duongDanAnh: "pic/Các thể loại phim/Phim hoạt hình/made-a-tokyo-ghoul.webp"
    },
    {
        id: 20,
        duongDanAnh: "pic/Các thể loại phim/Phim hoạt hình/solo-leveling.jpg"
    },
    {
        id: 21,
        duongDanAnh: "pic/pic_netflix/banner.jpg"
    },
    {
        id: 22,
        duongDanAnh: "pic/pic_netflix/banner.jpg"
    },
    {
        id: 23,
        duongDanAnh: "pic/pic_netflix/banner.jpg"
    },
    {
        id: 24,
        duongDanAnh: "pic/pic_netflix/banner.jpg"
    },
    {
        id: 25,
        duongDanAnh: "pic/pic_netflix/banner.jpg"
    }
]

function chonPhim(id) {
    for (let i = 0; i < danhSachPhim.length; i++) {
        if(danhSachPhim[i].id == id) {
            document.getElementsByClassName("banner-img")[0].src = danhSachPhim[i].duongDanAnh
        }
    }
}