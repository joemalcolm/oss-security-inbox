X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9139" "Wednesday" "13" "July" "2016" "14:53:03" "-0300" "Franco Costantini" "franco.costantini.20@gmail.com" "<CAGkswnQeO6oXv+so+DRCMWHqpVKuKYjZ3dTo=gZo2GzycdArhw@mail.gmail.com>" "173" "[oss-security] CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7" nil nil nil "7" "2016071317:53:03" "[oss-security] CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7" (number mark "U       franco.costa Jul 13  173/9139  " thread-indent "\"[oss-security] CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16191 invoked by uid 550); 13 Jul 2016 18:02:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1709 invoked from network); 13 Jul 2016 17:53:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=19VEkatWXEpjjFJJkt5l/PLv61udrk4kX95J3b98pE0=;
        b=j07ZolSxKcVgxsUPpiLLO/jHD543OyA7QqxGgt0xgn1iHGl0bHAnzxK6r3zfavf6oG
         KLxpDywuUz9QaJZTzjmKhepA1zBh9cOFn/KigY0VjAGllcmWveaL7WGOJkpDsX2JHb5f
         JAZsZCLAZPLDyCXLHsFke0WS9UCxStDdrK8zCsHVhXAwsbE8kVn05MYS3DIQ2iE7F5Uu
         0u1yzX1MI5vHnA+S3vDphI4NZO3YLFWFXKExCYUFXw1W3V3Xj9kRP8hTMBkAEBBx3u2D
         fUVoV+beuAbZ36IZXkvbUSsi8+hun9ALFt6hmgKpMwJjjfPjseO8YmAELQt+iBloCqZe
         HbnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=19VEkatWXEpjjFJJkt5l/PLv61udrk4kX95J3b98pE0=;
        b=DOFdgMDwIDTXv91/WfH5g0KIIpMAT5QuI9BAHDTtE/Z/4ck4ZLo1OJixRahNeFgd0R
         E44m1itP2W0nRz+ewiNBtaoNJyG8Xg8ULfWb2nAHK+l07sqdmAfDCDYiMwNqvhSJN6GC
         SxowhX5cBeD3ZoHAFz+KbbUU/JlpKkWsDyTO4l9oJAXcgHEcAf1oATqa8IUR92MiHGzV
         8Y8g6ghI3eElT1yNS66OQj2jZSgMNAORgPC9iFAvkB3zh5FbS5aA+H4z5d7so56GoyWI
         3wCHhIhThpNYSDu+y9K/rgjd0cC6uYylQbEeAk/3WFp8yYx1OMUpF85aLEja+ssecyeU
         DbAw==
X-Gm-Message-State: ALyK8tIatA9WbT+T8DJPFipCPRQa8p9c8g2/uNwHZqJX+A24j1HMFlozjPd1r/lAuyoBKS4SDF1E7+CBWZcexw==
X-Received: by 10.55.178.195 with SMTP id b186mr11059379qkf.81.1468432383991;
 Wed, 13 Jul 2016 10:53:03 -0700 (PDT)
MIME-Version: 1.0
From: Franco Costantini <franco.costantini.20@gmail.com>
Date: Wed, 13 Jul 2016 14:53:03 -0300
Message-ID: <CAGkswnQeO6oXv+so+DRCMWHqpVKuKYjZ3dTo=gZo2GzycdArhw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: gustavo.grieco@imag.fr
Content-Type: multipart/mixed; boundary=94eb2c06ee04a068f50537880ec2
Subject: [oss-security] CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7

--94eb2c06ee04a068f50537880ec2
Content-Type: multipart/alternative; boundary=94eb2c06ee04a068f20537880ec0

--94eb2c06ee04a068f20537880ec0
Content-Type: text/plain; charset=UTF-8

This issue was reported to Redhat secalert, they asked me to disclose it
publicly.

A write out-of-bounds parsing an ico file was found in gdk-pixbuf 2.30.7.
It's tested in Ubuntu 14.04, other versions can be affected (in Debian 8,
an assert inside gtk3 stops the execution before the crash). This issue can
be reproduced using eog:

 (gdb) run crash.ico
 Starting program: /usr/bin/eog crash.ico
 [Thread debugging using libthread_db enabled]
 Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
 [New Thread 0x7fffec58e700 (LWP 3709)]
 [New Thread 0x7fffebd8d700 (LWP 3710)]
 [New Thread 0x7fffe9656700 (LWP 3711)]
 [New Thread 0x7fffe8e55700 (LWP 3712)]

 (eog:3705): EOG-WARNING **: Couldn't load icon: Icon 'image-loading' not
present in theme

 Program received signal SIGSEGV, Segmentation fault.
 [Switching to Thread 0x7fffe9656700 (LWP 3711)]
 0x00007fffd83b428c in OneLine32 (context=0x7fffe0029820) at io-ico.c:589
 (gdb) bt
 #0  0x00007fffd83b428c in OneLine32 (context=0x7fffe0029820) at
io-ico.c:589
 #1  OneLine (context=0x7fffe0029820) at io-ico.c:800
 #2  gdk_pixbuf__ico_image_load_increment (data=0x7fffe0029820,
     buf=0x7fffe001b852 "", size=0, error=0x7fffe9655b68) at io-ico.c:891
 #3  0x00007ffff53e2665 in gdk_pixbuf_loader_load_module (
     loader=loader@entry=0x7df420, image_type=image_type@entry=0x0,
     error=error@entry=0x7fffe9655b68) at gdk-pixbuf-loader.c:443
 #4  0x00007ffff53e2ee8 in gdk_pixbuf_loader_close (loader=0x7df420,
     error=0xaa1aa0) at gdk-pixbuf-loader.c:808
 #5  0x00000000004236ab in eog_image_load ()
 #6  0x00000000004275d7 in ?? ()
 #7  0x0000000000425959 in ?? ()
 #8  0x00007ffff43eff05 in ?? () from /lib/x86_64-linux-gnu/libglib-2.0.so.0
 #9  0x00007ffff3f53184 in start_thread (arg=0x7fffe9656700)
     at pthread_create.c:312
 #10 0x00007ffff3c8037d in clone ()
     at ../sysdeps/unix/sysv/linux/x86_64/clone.S:111

The affected function is here:

 static void OneLine32 (struct ico_progressive_state *context)
{
        gint X;
        guchar *Pixels;

        X = 0;
        if (context->Header.Negative == 0)
                Pixels = (context->pixbuf->pixels +
                          context->pixbuf->rowstride *
                          (context->Header.height - context->Lines - 1));
        else
                Pixels = (context->pixbuf->pixels +
                          context->pixbuf->rowstride *
                          context->Lines);
        while (X < context->Header.width) {
                Pixels[X * 4 + 0] = context->LineBuf[X * 4 + 2];
                Pixels[X * 4 + 1] = context->LineBuf[X * 4 + 1];
                Pixels[X * 4 + 2] = context->LineBuf[X * 4 + 0];
                Pixels[X * 4 + 3] = context->LineBuf[X * 4 + 3];
                X++;
        }
}

The value of context->Header.height in OneLine32 is a very large number
(probably it wasn't validated correctly). Such value is used to calculate
where to write, resulting in an overflow where Pixels is written.

This issue was found using QuickFuzz, the file to reproduce it is attached.
Please assign a CVE if suitable.

Regards, Franco

--94eb2c06ee04a068f20537880ec0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This issue was reported to Redhat secalert, they asked me =
to disclose it publicly.<br><div><br>A write out-of-bounds parsing an ico f=
ile was found in gdk-pixbuf=20
2.30.7. It&#39;s tested in Ubuntu 14.04, other versions can be affected (in=
=20
Debian 8, an assert inside gtk3 stops the execution before the crash).=20
This issue can be reproduced using eog:<br><br>=C2=A0(gdb) run crash.ico<br=
>=C2=A0Starting program: /usr/bin/eog crash.ico<br>=C2=A0[Thread debugging =
using libthread_db enabled]<br>=C2=A0Using host libthread_db library &quot;=
/lib/x86_64-linux-gnu/libthread_db.so.1&quot;.<br>=C2=A0[New Thread 0x7fffe=
c58e700 (LWP 3709)]<br>=C2=A0[New Thread 0x7fffebd8d700 (LWP 3710)]<br>=C2=
=A0[New Thread 0x7fffe9656700 (LWP 3711)]<br>=C2=A0[New Thread 0x7fffe8e557=
00 (LWP 3712)]<br><br>=C2=A0(eog:3705): EOG-WARNING **: Couldn&#39;t load i=
con: Icon &#39;image-loading&#39; not present in theme<br><br>=C2=A0Program=
 received signal SIGSEGV, Segmentation fault.<br>=C2=A0[Switching to Thread=
 0x7fffe9656700 (LWP 3711)]<br>=C2=A00x00007fffd83b428c in OneLine32 (conte=
xt=3D0x7fffe0029820) at io-ico.c:589<br>=C2=A0(gdb) bt<br>=C2=A0#0=C2=A0 0x=
00007fffd83b428c in OneLine32 (context=3D0x7fffe0029820) at io-ico.c:589<br=
>=C2=A0#1=C2=A0 OneLine (context=3D0x7fffe0029820) at io-ico.c:800<br>=C2=
=A0#2=C2=A0 gdk_pixbuf__ico_image_load_increment (data=3D0x7fffe0029820,<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 buf=3D0x7fffe001b852 &quot;&quot;, size=3D0, erro=
r=3D0x7fffe9655b68) at io-ico.c:891<br>=C2=A0#3=C2=A0 0x00007ffff53e2665 in=
 gdk_pixbuf_loader_load_module (<br>=C2=A0=C2=A0=C2=A0=C2=A0 loader=3Dloade=
r@entry=3D0x7df420, image_type=3Dimage_type@entry=3D0x0,<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 error=3Derror@entry=3D0x7fffe9655b68) at gdk-pixbuf-loader.c:443<=
br>=C2=A0#4=C2=A0 0x00007ffff53e2ee8 in gdk_pixbuf_loader_close (loader=3D0=
x7df420,<br>=C2=A0=C2=A0=C2=A0=C2=A0 error=3D0xaa1aa0) at gdk-pixbuf-loader=
.c:808<br>=C2=A0#5=C2=A0 0x00000000004236ab in eog_image_load ()<br>=C2=A0#=
6=C2=A0 0x00000000004275d7 in ?? ()<br>=C2=A0#7=C2=A0 0x0000000000425959 in=
 ?? ()<br>=C2=A0#8=C2=A0 0x00007ffff43eff05 in ?? () from /lib/x86_64-linux=
-gnu/libglib-2.0.so.0<br>=C2=A0#9=C2=A0 0x00007ffff3f53184 in start_thread =
(arg=3D0x7fffe9656700)<br>=C2=A0=C2=A0=C2=A0=C2=A0 at pthread_create.c:312<=
br>=C2=A0#10 0x00007ffff3c8037d in clone ()<br>=C2=A0=C2=A0=C2=A0=C2=A0 at =
../sysdeps/unix/sysv/linux/x86_64/clone.S:111<br><br>The affected function =
is here:<br><br>=C2=A0static void OneLine32 (struct ico_progressive_state *=
context)<br>{<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gint X;<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 guchar *Pixels;<br><br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 X =3D 0;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if (context-&gt;Header.Negative =3D=3D 0)<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Pixels =3D (context-&gt;pixbuf-&gt;pixels +<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 context-&gt;pixbuf-&gt;row=
stride *<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 (context-&gt;Header.height - context-&gt;Lines - 1));<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pixels =3D =
(context-&gt;pixbuf-&gt;pixels +<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 context-&gt;pixbuf-&gt;rowstride *<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 context-&gt;Lines);<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 while (X=
 &lt; context-&gt;Header.width) {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pixels[X * 4 + 0] =
=3D context-&gt;LineBuf[X * 4 + 2];<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pixels[X * 4 + 1] =
=3D context-&gt;LineBuf[X * 4 + 1];<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pixels[X * 4 + 2] =
=3D context-&gt;LineBuf[X * 4 + 0];<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Pixels[X * 4 + 3] =
=3D context-&gt;LineBuf[X * 4 + 3];<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 X++;<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br>}<br><br>The
 value of context-&gt;Header.height in OneLine32 is a very large number=20
(probably it wasn&#39;t validated correctly). Such value is used to=20
calculate where to write, resulting in an overflow where Pixels is=20
written.<br><br>This issue was found using QuickFuzz, the file to reproduce=
 it is attached. Please assign a CVE if suitable.<br><br>Regards, Franco<br=
></div></div>

--94eb2c06ee04a068f20537880ec0--

--94eb2c06ee04a068f50537880ec2
Content-Type: application/x-gzip; name="crash.ico.tar.gz"
Content-Disposition: attachment; filename="crash.ico.tar.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iql6jcw10

H4sIAAnMX1cAA+3QMQ4CIRCF4XG9gJU1pZUBRGi9CkGjW2lYvf8OFnZrx1b/
RyaTeSRkQql5ehzH8pR+rIohaHc+Wt/mYFP85o2zUZxPPqUQ0llz5+IpibEd
d/r5TO9cjZF7HW//fqHk62uNfVa30TMMrRu56LzXOmhpJFsR0/Jmt/TA4gUA
AAAAAAAAAAAAAAAAoJ8ZdqN/TgAoAAA=

--94eb2c06ee04a068f50537880ec2--
