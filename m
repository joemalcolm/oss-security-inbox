X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3278" "Wednesday" "1" "September" "2021" "17:15:57" "+0800" "Minh Yuan" "yuanmingbuaa@gmail.com" nil "115" "[oss-security] CVE-2021-3753: A out-of-bounds caused by the race of KDSETMODE in vt for latest Linux" nil nil nil "9" nil nil (number mark "U       yuanmingbuaa Sep  1  115/3278  " thread-indent "\"[oss-security] CVE-2021-3753: A out-of-bounds caused by the race of KDSETMODE in vt for latest Linux\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3753: A out-of-bounds caused by the race of KDSETMODE in vt for latest Linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27892 invoked by uid 550); 1 Sep 2021 09:42:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15997 invoked from network); 1 Sep 2021 09:16:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MXpRfZ8OcL03bcmzjRj+IHwX2SHoa9dXHONBgGZL3P8=;
        b=mUOSvYCrGWalkUrQIhWsXxPyz3wgJkYubVaYIodw4Yiqakx6p7LBrvC/Ncp5VJFRIq
         bIfbtvwC3fNevOlDRrHNRNazpLPK67UyNjbOKkufOsiGS6aR6dzNedk7yBuDH2yjGeJu
         tsOM/4/zERZzrngjG3oFWpcGqLgFoQl0UpNWUMlGf+KPaw2G/9qAmGf/tCmDhMb2pBvL
         A+NFEyZbxLLnsreC/uJavo9f2KwAX7Of/lFops6puE+kbr/U/9FNmfHPU3sm6QQ7bZhA
         QAXol9VyyvueNrm6z/g5cHKYgxzRoXoOFRAEQcdmv9z1Cq0C0Y2kOMkIdov1SK96EzTI
         mACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MXpRfZ8OcL03bcmzjRj+IHwX2SHoa9dXHONBgGZL3P8=;
        b=mvuwIj57JJAPAjHz22DzbcLQNM3AzlhBfz6WMbqh8S5FQ4aPNWqLfVMSVwxoOOoJQ/
         VuzTuV79p++JdU5TZgN85uQjI7yfHPJtMQpC93eVm4P3gX4EZctbMHhvgJaf5PTIxvg7
         gRsrC91P0wnoJ+fwEvX+jwQSP/rW94CDejVsw8IO5J1hKg8S+pzUttK+hSI3IWaOJk3p
         9WPOSlVKXudpiB1aD6T5NsTJI1CGQX/FAiRUGrU+PGunrhqOrkZXqJaEhz51GbPf1cFU
         FTkn0RF6jojJIECdLPt54yCvKUgj9a7RkXm+gqlT9M6O29toieVYZdQhr/lv8ue/ECXH
         nftw==
X-Gm-Message-State: AOAM530/1iOJd3JpnT+983zR2TxjRQUyN4E7169RdD5dKOlKM7/hZ654
	vIK9pWIHdjoGYKeZLaSAEplYC1dfrQTvWRriZjyES6ZurjOJ5K27
X-Google-Smtp-Source: ABdhPJz7vRHYbmH/686UTd9KulK0/sdoACaH0G56ZU3c89CgB4X25UaoPxRjNmt64paIlSWMCa7bqOTfKmkOZ210LNM=
X-Received: by 2002:a65:46cc:: with SMTP id n12mr15238777pgr.274.1630487795486;
 Wed, 01 Sep 2021 02:16:35 -0700 (PDT)
MIME-Version: 1.0
From: Minh Yuan <yuanmingbuaa@gmail.com>
Date: Wed, 1 Sep 2021 17:15:57 +0800
Message-ID: <CAH5WSp4XsLN42kbnDknq2c32mZs_5uvyEzgBSQ9ar_ypASbYRw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000dc53d105caeb85d7"
Subject: [oss-security] CVE-2021-3753: A out-of-bounds caused by the race of KDSETMODE in vt
 for latest Linux

--000000000000dc53d105caeb85d7
Content-Type: text/plain; charset="UTF-8"

Hi,

We recently discovered a race oob read in vt in the latest kernel (
v4.19.205 for now ), and the patch
<https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=ffb324e6f874121f7dce5bdae5e05d02baae7269>
can't
handle this bug.

The root cause of this vulnerability is that the write access to vc_mode is
not protected by lock in vt_ioctl (KDSETMDE).
To trigger the oob, we set the crafted vc_visible_origin by using the
following steps:

  Thread 1                                        Thread 2
                                                                      Thread
3
vt_ioctl()
    case KDSETMODE:
        vc->vc_mode = KD_GRAPHICS

                                            vt_ioctl()
                                                case TIOCL_BLANKSCREEN:
                                                    if (
vc->vc_mode != KD_TEXT)

console_blanked = fg_console + 1;
                                                ... ...
                                                case VT_RESIZE
                                                    set_origin()
                                                        vgacon_set_origin()

// make vc_visible_origin not equal to vga_vram_base
                                                            if (
console_blanked && !vga_palette_blanked)
                                                                return 0;



                                                     vt_ioctl()

                                                         case
KDSETMODE:


vc->vc_mode = KD_TEXT

                                            write()
                                                do_con_write()
                                                    do_con_troll()
                                                        lf()
                                                            con_scroll()

// set vga_rolled_over
                                                                vgacon_scroll()
                                                                    if (
c->vc_mode != KD_TEXT)

return false;

oldo = c->vc_origin;

vga_rolled_over = oldo - vga_vram_base;

                                            vt_ioctl()
                                                case TIOCL_SCROLLCONSOLE:
wrap = rolled_over + c->vc_size_row

// set vc_visible_origin to oob
                                                    c->vc_
visible_origin = vga_vram_base + (from + from_off) % wrap

                                                case TIOCL_SETSEL:
                                                    // trigger oob
                                                    sel_pos(ps)










console_lock();

                                                         ...


console_unlock();



        console_lock();
        ...
        console_unlock();


And the patch for this issue is available now. (
https://github.com/torvalds/linux/commit/2287a51ba822384834dafc1c798453375d1107c7
)

Timeline:
* 08.30.21 - Vulnerability reported to security@kernel.org.
* 08.31.21 - CVE-2021-3753 assigned.
* 09.01.21 - Vulnerability opened.

Regards,

Yuan Ming, Tsinghua University

--000000000000dc53d105caeb85d7--
