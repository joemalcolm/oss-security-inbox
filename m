X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2973" "Tuesday" "3" "May" "2016" "20:52:55" "-0400" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9YwFJU6942BNgFfao4pU+zzT_5-CYPa0N_=aSVzoFmVHwQ@mail.gmail.com>" "99" "[oss-security] CVE Request: information leak in devio of Linux kernel" "^Date:" nil nil "5" "2016050400:52:55" "[oss-security] CVE Request: information leak in devio of Linux kernel" (number mark "U       kangjielu@gm May  3   99/2973  " thread-indent "\"[oss-security] CVE Request: information leak in devio of Linux kernel\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24223 invoked by uid 550); 4 May 2016 01:28:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26187 invoked from network); 4 May 2016 00:53:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=fYF/yw0DUGHHGfTSRhBQVkxV32EJ9reng5UU4xdR3AE=;
        b=qGSLukt6CBN4C6p8ImWDOknYUcIxyW0aAJIS7zlvcv2eQYqO+sAqk0zwWsy7AjUtWK
         6IvqeABGt1zSLZzJtrrbYfPdCISFF8VhzrpppIhU+XIg7zxpI0NP5pUdx57vh3GKWJjs
         Po+7QTWcxL+XUFyl56SevCQQVI9j6+RqbRKcUopdlVEXPMDRbtNO8RqbOJPJJFUyeEaw
         n16oWQoZugAmSOT338m9RPkiSvmltom9qwTbUMlMvBjOfRmN+HaHQHeqcngAv3sCXpW0
         wkBwkvMWrrVENQY4w/SLLZCIj5MsHmW6dPP8lyhQNtHeLsFfSSiQwLW/Lmunm26JcgL/
         zyfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=fYF/yw0DUGHHGfTSRhBQVkxV32EJ9reng5UU4xdR3AE=;
        b=eflvzsLNunSJ+T0zEEhkKWVYKr3qhN1F4Jd9Bz4ZoP79uPqBtQV1E5LTuPXNehZtuL
         C3uaQTvUqKj9ue/H0rv6PJBgiY6lkT8U4nMpmknay0c/PWfsBO9OXSMRk2PdjAGB5IJW
         zPaBRkuieXMddhaEOCX543s7+PCaabKaRgRUeR10k/EsUyZAYQ6FD8V4Meli/dAxD6V+
         yEcrS8jm83wweeuY+llN5JKJvDNPF1eT43zCW9YdYJx15DGAsNNXYWy2b3d17PaAJgZZ
         Q0pMCJOIn+wArKLsNz4aEu1ExnyWrHaqDhSWmPGzdPauFq6Nzs/RELVlSzACa+f/OW/x
         ZokA==
X-Gm-Message-State: AOPr4FU+f2Fuauz8bB46deV6BTuVksCjTdCEqyYqx4Nn7Fch1dUYJrcZ84paqBSZbFwrpzmOFuoA8/R4A2ZWkA==
MIME-Version: 1.0
X-Received: by 10.202.184.6 with SMTP id i6mr2904364oif.76.1462323175346; Tue,
 03 May 2016 17:52:55 -0700 (PDT)
Message-ID: <CABEk9YwFJU6942BNgFfao4pU+zzT_5-CYPa0N_=aSVzoFmVHwQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113cd19069dd1a0531f9a5f1
Date: Tue, 3 May 2016 20:52:55 -0400
From: Kangjie Lu <kangjielu@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: information leak in devio of Linux kernel
To: oss-security@lists.openwall.com, Taesoo Kim <taesoo@gatech.edu>, 
	Chengyu Song <csong84@gatech.edu>, Insu Yun <insu@gatech.edu>

--001a113cd19069dd1a0531f9a5f1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

In the USB module (drivers/usb/core/devio.c), The stack object =E2=80=9Cci=
=E2=80=9D has a
total
size of 8 bytes. Its last 3 bytes are padding bytes which are not
initialized and
leaked to userland via =E2=80=9Ccopy_to_user=E2=80=9D.

The patch of this bug has been accepted by Linux kernel maintainer and will
be
merged in the next major kernel release (see the bellow message).

Fix info:
http://www.spinics.net/lists/linux-usb/msg140243.html
git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git

Could you please assign a CVE to it?

Thanks,
Kangjie Lu




---------- Forwarded message ----------
From: <gregkh@linuxfoundation.org>
Date: Tue, May 3, 2016 at 7:23 PM
Subject: patch "USB: usbfs: fix potential infoleak in devio" added to
usb-next
To: kangjielu@gmail.com, gregkh@linuxfoundation.org, kjlu@gatech.edu



This is a note to let you know that I've just added the patch titled

    USB: usbfs: fix potential infoleak in devio

to my usb git tree which can be found at
    git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
in the usb-next branch.

The patch will show up in the next release of the linux-next tree
(usually sometime within the next 24 hours during the week.)

The patch will also be merged in the next major kernel release
during the merge window.

If you have any questions about this process, please let me know.


=46rom 681fef8380eb818c0b845fca5d2ab1dcbab114ee Mon Sep 17 00:00:00 2001
From: Kangjie Lu <kangjielu@gmail.com>
Date: Tue, 3 May 2016 16:32:16 -0400
Subject: USB: usbfs: fix potential infoleak in devio
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

The stack object =E2=80=9Cci=E2=80=9D has a total size of 8 bytes. Its last=
 3 bytes
are padding bytes which are not initialized and leaked to userland
via =E2=80=9Ccopy_to_user=E2=80=9D.

Signed-off-by: Kangjie Lu <kjlu@gatech.edu>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/usb/core/devio.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
index 73ce87166401..e9f5043a2167 100644
--- a/drivers/usb/core/devio.c
+++ b/drivers/usb/core/devio.c
@@ -1316,10 +1316,11 @@ static int proc_getdriver(struct usb_dev_state *ps,
void __user *arg)

 static int proc_connectinfo(struct usb_dev_state *ps, void __user *arg)
 {
-       struct usbdevfs_connectinfo ci =3D {
-               .devnum =3D ps->dev->devnum,
-               .slow =3D ps->dev->speed =3D=3D USB_SPEED_LOW
-       };
+       struct usbdevfs_connectinfo ci;
+
+       memset(&ci, 0, sizeof(ci));
+       ci.devnum =3D ps->dev->devnum;
+       ci.slow =3D ps->dev->speed =3D=3D USB_SPEED_LOW;

        if (copy_to_user(arg, &ci, sizeof(ci)))
                return -EFAULT;
--
2.8.2

--001a113cd19069dd1a0531f9a5f1--
