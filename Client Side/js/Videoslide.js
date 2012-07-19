var slideShow1 = function () {
    var bxs1, bxe1, fxs1, fxe1, ys1, ye1, ta1, ia1, ie1, st1, ss1, ft1, fs1, xp1, yp1, ci1, t1, tar1, tarl1;
    ta1 = document.getElementById(thumbid1); ia1 = document.getElementById(imgid1);
    t1 = ta1.getElementsByTagName('li'); ie1 = document.all ? true : false;
    st1 = 3; ss1 = 3; ft1 = 10; fs1 = 5; xp1, yp1 = 0;
    return {
        init: function () {
            debugger;
            document.onmousemove = this.pos; window.onresize = function () { setTimeout("slideShow1.lim()", 500) };
            ys1 = this.toppos(ta1); ye1 = ys1 + ta1.offsetHeight;
            len1 = t1.length; tar1 = [];
            for (i = 0; i < len1; i++) {
                var id = t1[i].value; tar1[i] = id;
                //t1[i].onclick = new Function("slideShow1.getimg('" + id + "')");
                if (i == 0) {
                    //this.getimg(id) 
                }
            }
            tarl1 = tar1.length;
        },
        scrl: function (d1) {
            clearInterval(ta1.timer);
            var l = (d1 == -1) ? 0 : (t1[tarl1 - 1].offsetLeft - (ta1.parentNode.offsetWidth - t1[tarl1 - 1].offsetWidth) + 10)
            ta1.timer = setInterval(function () { slideShow1.mv(d1, l) }, st1);
        },
        mv: function (d, l) {
            ta1.style.left = ta1.style.left || '0px';
            var left = ta1.style.left.replace('px', '');
            if (d == 1) {
                if (l - Math.abs(left) <= ss1) {
                    this.cncl(ta1.id); ta1.style.left = '-' + l + 'px';
                } else { ta1.style.left = left - ss1 + 'px' }
            } else {
                if (Math.abs(left) - l <= ss1) {
                    this.cncl(ta1.id); ta1.style.left = l + 'px';
                } else { ta1.style.left = parseInt(left) + ss1 + 'px' }
            }
        },
        cncl: function () { clearTimeout(ta1.timer) },
        getimg: function (id) {
            if (auto1) { clearTimeout(ia1.timer) }
            if (ci1 != null) {
                var ts1, tsl1, x1;
                ts1 = ia1.getElementsByTagName('iframe'); tsl1 = ts1.length; x1 = 0;
                for (x; x < tsl; x++) {
                    if (ci1.id != id) { var o = ts1[x]; clearInterval(o.timer); o.timer = setInterval(function () { slideShow1.fdout(o) }, fs1) }
                }
            }
            if (!document.getElementById(id)) {
                var i = document.createElement('iframe');
                ia1.appendChild(i);
                i.id = id; i.av = 0; i.style.opacity = 0;
                i.style.filter = 'alpha(opacity=0)';
            } else {
                i = document.getElementById(id); clearInterval(i.timer);
            }
            i.timer = setInterval(function () { slideShow1.fdin(i) }, fs1);
        },
        nav: function (d) {
            var c = 0;
            for (key in tar) { if (tar1[key] == ci1.id) { c = key } }
            if (tar1[parseInt(c) + d]) {
                //this.getimg(tar1[parseInt(c) + d]);
            } else {
                if (d == 1) {
                    //this.getimg(tar1[0]);
                } else { //this.getimg(tar1[tarl1 - 1]) 
                }
            }
        },
        auto1: function () { ia1.timer = setInterval(function () { slideShow1.nav(1) }, autodelay1 * 1000) },
        fdin: function (i) {
            if (i.complete) { i.av = i.av + fs1; i.style.opacity = i.av / 100; i.style.filter = 'alpha(opacity=' + i.av + ')' }
            if (i.av >= 100) { if (auto1) { this.auto1() }; clearInterval(i.timer); ci1 = i }
        },
        fdout: function (i) {
            i.av = i.av - fs1; i.style.opacity = i.av / 100;
            i.style.filter = 'alpha(opacity=' + i.av + ')';
            if (i.av <= 0) { clearInterval(i.timer); if (i.parentNode) { i.parentNode.removeChild(i) } }
        },
        lim: function () {
            var taw1, taa1, len1; taw1 = ta1.parentNode.offsetWidth; taa1 = taw1 / 4;
            bxs1 = slideShow1.leftpos(ta1); bxe1 = bxs1 + taa1; fxe1 = bxs1 + taw1; fxs1 = fxe1 - taa1;
        },
        pos: function (e) {
            xp1 = ie1 ? event.clientX + document.documentElement.scrollLeft : e.pageX;
            yp1 = ie1 ? event.clientY + document.documentElement.scrollTop : e.pageY;
            if (xp1 > bxs1 && xp1 < bxe1 && yp1 > ys1 && yp1 < ye1) {
                slideShow1.scrl(-1);
            } else if (xp1 > fxs1 && xp1 < fxe1 && yp1 > ys1 && yp1 < ye1) {
                slideShow1.scrl(1);
            } else { slideShow1.cncl() }
        },
        leftpos: function (t) {
            var l = 0;
            if (t.offsetParent) {
                while (1) { l += t.offsetLeft; if (!t.offsetParent) { break }; t = t.offsetParent }
            } else if (t.x) { l += t.x }
            return l;
        },
        toppos: function (t) {
            var p = 0;
            if (t.offsetParent) {
                while (1) { p += t.offsetTop; if (!t.offsetParent) { break }; t = t.offsetParent }
            } else if (t.y) { p += t.y }
            return p;
        },
        stop: function () { clearInterval(ia1.timer) }
    };
} ();

window.onload = function () { slideShow1.init(); slideShow1.lim() };