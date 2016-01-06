X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2773" "Wednesday" "6" "January" "2016" "14:53:57" "+0100" "Guillaume Ayoub" "guillaume.ayoub@kozea.fr" "<1452088437.1365.2@smtp.gmail.com>" "73" "[oss-security] Re: CVE request for radicale" "^Date:" nil nil "1" "2016010613:53:57" "[oss-security] Re: CVE request for radicale" (number mark "        guillaume.ay Jan  6   73/2773  " thread-indent "\"[oss-security] Re: CVE request for radicale\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30159 invoked by uid 550); 6 Jan 2016 14:35:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5335 invoked from network); 6 Jan 2016 13:54:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kozea-fr.20150623.gappssmtp.com; s=20150623;
        h=date:from:subject:to:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=r9ZsU2Gnq5jcHOYN29FanHcLVOfWPczxKdhbhelkrbU=;
        b=gLf+a5bETiNcow8a0xEIvI2ssfsusVPdb9O0o5xr61zsneZNrgtZiT3zJzMW30LvMJ
         sQYJDWs6TlNbE6KpB1Ex0K2tbc5jjm0hKhsbnCeozZ1WOUm6cwByB+CWsojStLFmAp8Q
         55M9MlicI1VBVxOUxy05Q0lgLyb3J3O12rjM47ig2HmnaKkYhKdIDxhM8vKLXWkwntsQ
         3ZFsrrmLt1GizLuvfRB61Qxl92A23qv42ySSnBcBQlaaU+p/mum+F24uBAUIViQoQdPo
         isVLdf+u+vTuntqLaJO31ndZ1pN43Aa+WMoPfFiemf3aI0aU4Ff2pDPcvKCNuPRiZfVo
         FMDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:subject:to:message-id:mime-version
         :content-type:content-transfer-encoding;
        bh=r9ZsU2Gnq5jcHOYN29FanHcLVOfWPczxKdhbhelkrbU=;
        b=cWi2hlohEJ4tw1NvzABajVwRbQJrDXaWq3ZB2DFN1Hf7t5PMa8IgEYkfgzDc2VbD89
         QYP63H7ZS7zWfoQ0g/qCNfqNPgz2iYdcOgHczyN2hoTcNa5izlYbNnT/OJZHRz5t1bGC
         DShpPM3KDpxgH5Uz2ovf/gG7UsPHkvUqJZ1VuGkz7A9IjiqKFJfYaucSYv0T2jdcCfeK
         5xH4JG2pIiIjlwPXRqtOHdAfRh4hPG/dp7TZL+1Y5NC3JhvhrWRhfOdDUPKnbUqi6qF8
         qJmu7MsIxGBhKZojFCiCntmolypJVaFoaSd9Y4XER8ovaZ9KB9Dl+WPKUtD9YoKWDuUi
         bIrQ==
X-Gm-Message-State: ALoCoQn0uyYU4uoGiM84V0GYsh+wY2rebxmtayKwtnRj4rJUeAsyc7KyfFnuF6vEqYLBBBb5+0m9Z7l+j2jhdIK+D/lMENPCgQ==
X-Received: by 10.194.79.227 with SMTP id m3mr106604195wjx.5.1452088442542;
        Wed, 06 Jan 2016 05:54:02 -0800 (PST)
Message-Id: <1452088437.1365.2@smtp.gmail.com>
X-Mailer: geary/0.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Jan 2016 14:53:57 +0100
From: Guillaume Ayoub <guillaume.ayoub@kozea.fr>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for radicale
To: oss-security@lists.openwall.com

(Sorry if this mail is not in the original thread, I wasn't following=20
the mailing-list before today)

Hi,

I'm the main developer of Radicale, I've merged the different fixes,=20
but I'm not the author of these fixes. So, I know the software quite=20
well, but I'm definitely no security expert.


That being said, here are for me the 3 real independent vulnerabilities=20
reported and fixed in 1.1:

1. "The multifilesystem backend allows access to arbitrary files on all=20
platforms."

This storage backend is not the default backend used, it's even marked=20
as "not ready for production" in the configuration file. But when used,=20
this backend could allow anybody to read/write anything anywhere, by=20
sending requests with particular paths and contents.

2. "Prevent regex injection in rights management."

If an attacker is able to authenticate with a user name like .*, he can=20
bypass read/write limitations imposed by regex-based rules, including=20
the built-in rules called owner_write (read for everybody, write for=20
the owner of the calendar) and owner_only (read and write for the owner=20
of the calendr).

3. "On MS Windows the filesystem backend allows access to the first=20
level of files on a drive."

The filesystem backend is the default storage backend. When used, it=20
converts paths like /c:/filename/dummy to c:\filename, and allowing=20
anybody to read/write anything anywhere, by sending requests with=20
particular paths and contents.


For me, the other ones are theoretical vulnerabilities, but I'm not=20
sure that they can lead to real life consequences:

- "Paths like .., ../.. or // are not sanitized correctly". But when=20
translated into a filesystem path, I think that it could only enable to=20
read/write files in the default storage directory, like "normal"=20
requests do.

- "The program crashes if a path doesn't start with base_prefix instead=20
of showing an error message." It was actually raising an exception, but=20
didn't "crash". That's bad for sure, but not related to security.

- "Improve the regex used for well-known URIs." It wasn't really=20
harmful because of Radicale's code at this moment, but may have become=20
a problem later.

- "Decouple the daemon from its parent environment." Always a good=20
idea, but I can't find a related possible attack.

- "Avoid race condition in PID file creation." No possible attack for=20
me.

- "Prevent crafted HTTP request from calling arbitrary functions". In=20
real life, no way to attack because of the signature of the other=20
methods, but may have enabled an attacker to call a method called "a"=20
by sending an HTTP "a" request, if "a" had had the good signature.


Hope that it helps!

Regards,
--=20
Guillaume Ayoub
Kozea - Directeur associ=C3=A9

