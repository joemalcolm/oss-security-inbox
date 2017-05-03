X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2845" "Wednesday" "3" "May" "2017" "20:49:28" "+0800" "redrain root" "rootredrain@gmail.com" "<CAPGxrc8ERFkDD=+x3qo2rkWPZ_3SxMGdJaAgUsEkcrBsZZ0ovg@mail.gmail.com>" "98" "[oss-security]Sourcetree arbitrary command execution" "^Cc:" nil nil "5" "2017050312:49:28" "[oss-security]Sourcetree arbitrary command execution" (number mark "U       rootredrain@ May  3   98/2845  " thread-indent "\"[oss-security]Sourcetree arbitrary command execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22009 invoked by uid 550); 3 May 2017 12:49:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21988 invoked from network); 3 May 2017 12:49:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=sTJShEwWNo9W+GRMVImuiFYK+z1wz0/BUNeptBZO5Yc=;
        b=cQS0X4uifz6eSCUnlaWmjTxn6arNZVKoPcTHXKiisIP/zXTgzR3gDP436XGOoZi1mm
         cw+SE0hxpcpGLTPx0lHRCHJJmQJbp3MQh5DbOvgF2VQUjnJVqmEwx75LIpyQbPriJyqp
         NTbJog+cuyEEqpORlNO4YXKHsMUf7JHMxcG3Mh/CTSa/7vqkBYMYx1BLyCuXB3ZYZ/Vl
         2bMDlSDBPL4wHQYZ3EjP7W5q/WNnGbqjcXmfb6T73keB8U05vCrG6qiAguUv53HuYwVt
         nd5PD9AOaW3wLAXhAoN8cQuozvX8Ya9RsoJNONmv9WrRHpFh4P6FHMHRzqoXKY1cggeV
         Mn/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=sTJShEwWNo9W+GRMVImuiFYK+z1wz0/BUNeptBZO5Yc=;
        b=FzUaN2zcJ5q6XQxoabHEU/GapDgxHcFRiSStUE32075bUB3yWR/B8H5Kds1Oxi7N4M
         dU86QsF0MN+i+rEMRJBMDfGcOdrFGNKrlCAATWuhcFrgu1a9tRZTgv6KRjJc1vdsfUe8
         ww5+Yaxi8Xqm1OOyiLEW9Tt8n4PePH2EBjtpZnWQs0lOFynYL6I4bdlkLjyInddFPTS0
         T4xft2EV6gNOqPJUY96hNTlLpQ390ZxnyWUM2VMo0pRkm6A6za4TT3XjyS+DC0rnkyfT
         odlpZd0cOyA8n38EcDKHeohxaKMXnJV431yn9e5Ti5z1Vf7RgC9txORQdr0lohuoEzSO
         +n8A==
X-Gm-Message-State: AN3rC/5qo18J1J6QJmGdgfqoo+bBc7Oi7jtDTHf2kh0EkA2BnVdTFCF7
	Pghf5NS/blMqHpJFoML8hFobQROtqQ==
X-Received: by 10.129.85.72 with SMTP id j69mr29137331ywb.220.1493815768476;
 Wed, 03 May 2017 05:49:28 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAPGxrc8ERFkDD=+x3qo2rkWPZ_3SxMGdJaAgUsEkcrBsZZ0ovg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113f1bbe3d7499054e9e16ad
Cc: security@atlassian.com
Date: Wed, 3 May 2017 20:49:28 +0800
From: redrain root <rootredrain@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security]Sourcetree arbitrary command execution
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org

--001a113f1bbe3d7499054e9e16ad
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi there,

I would report a sourcetree arbitrary command execution

Sourcetree is a popular git gui client,and I found a command execution two
month ago,
and I report to the official atlassian but the told me they have known this
vulnerability internal tracker and they will fix it in next version but
sourcetree has upgrade several version, this vulnerability still alive.
So I want to disclose this vulnerability and make a copy for atlassian
again.


Author: redrain, hongyu-s@360.cn
Date: 2017-03-02
Version:2.5c and prior
Platform: macOS, Windows, Linux Desktop
Site: https://www.sourcetreeapp.com
Vendor: Atlassian
Vendor Notified: 2017-03-02


Technical Details:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

SourceTree v2.5c and prior are affected by a command injection in the
handling of sourcetree:// scheme.
The cloneRepo action with =E2=80=98ext=E2=80=99 is base on git-remote-ext, =
The git team=E2=80=99s
description of the bug was:
Some protocols (like git-remote-ext) can execute arbitrary code found in
the URL.

PoC:
sourcetree://cloneRepo/ext::[command injection]
Even attacker can exploit it through the browser

<html>
<head></head>
<body>
	<a href=3Dsourcetree://checkoutRef/ext::id>a</a>
</body>
</html>

There is a simple demo video:
https://youtu.be/SQ1_Ht-0Bdo


Other:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
and there is the last bugtrack I reported:


```
Activity
Your request status changed to Resolved with resolution Tracked Elsewhere.
03/Mar/17 5:35 PMLATEST
Alexander Minozhenko
Alexander Minozhenko03/Mar/17 5:34 PM
Hi rootredrain,
Thank you for sending this notification to Atlassian. This is indeed a
vulnerability and an issue has been filed on an internal tracker.
The issue is SRCTREE-4632. Unfortunately, this issue is not accessible
externally, so you will not be able to monitor its progress. Feel free to
check with us for updates.
redrain
redrain02/Mar/17 5:43 PM
sourcetree_vuln.7z (9.62 MB)
Details02/Mar/17 5:43 PM
Product or Service
Other
Product Version
2.4.1a and earlier
Description
SourceTree v2.4.1a and earlier are affected by a command injection in the
handling of sourcetree:// scheme.
The cloneRepo action with =E2=80=98ext=E2=80=99 is base on git-remote-ext, =
The git team=E2=80=99s
description of the bug was:
Some protocols (like git-remote-ext) can execute arbitrary code found in
the URL.
PoC:
sourcetree://cloneRepo/ext::[command injection]
Even attacker can exploit it through the browser
there is a simple demo in the attachment.
```


Regards,
redrain

--001a113f1bbe3d7499054e9e16ad--
