X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["639" "Wednesday" "25" "April" "2018" "13:04:59" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwVvwLpJMi+-YYx=u_9YxZnMpd729Hy=B+BADXaCEpWceQ@mail.gmail.com>" "27" "[oss-security] =?UTF-8?B?W0NWRS0yMDE4LTEzMzldIERvUyAoSW5maW5pdGUgTG9vcCkgVnVsbmVyYWJpbGl0eSBpbg==?==?UTF-8?B?IEFwYWNoZSBUaWth4oCZcyBDaG1QYXJzZXI=?=" nil nil nil "4" "2018042517:04:59" "[oss-security] =?UTF-8?B?W0NWRS0yMDE4LTEzMzld?= =?UTF-8?B?RG9T?= =?UTF-8?B?KEluZmluaXRl?= =?UTF-8?B?TG9vcCk=?= =?UTF-8?B?VnVsbmVyYWJpbGl0eQ==?= =?UTF-8?B?aW4=?= =?UTF-8?B?QXBhY2hl?= =?UTF-8?B?VGlrYeKAmXM=?= =?UTF-8?B?Q2htUGFyc2Vy?=" (number mark "U       tallison@apa Apr 25   27/639   " thread-indent "\"[oss-security] =?UTF-8?B?W0NWRS0yMDE4LTEzMzldIERvUyAoSW5maW5pdGUgTG9vcCkgVnVsbmVyYWJpbGl0eSBpbg==?==?UTF-8?B?IEFwYWNoZSBUaWth4oCZcyBDaG1QYXJzZXI=?=\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30414 invoked by uid 550); 25 Apr 2018 17:05:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30394 invoked from network); 25 Apr 2018 17:05:14 -0000
X-Gm-Message-State: ALQs6tA38v2Qjnojf+oIiLwc/uJNlYJBC028OPAIWAxohKx6W6GIijgT
	P6jsTriaFrLyYXjywXV0QATAf9i+dFGW4ZIV6Is=
X-Google-Smtp-Source: AIpwx482OWFeOuUFzBvaPOymAqyvZlPaAadsNZJt1m6vikBasQjXTvR/fb5A+3DBS7uRgvcvCUv/bO3rdyoVdhbYH14=
X-Received: by 2002:a81:33c4:: with SMTP id z187-v6mr15295327ywz.512.1524675899665;
 Wed, 25 Apr 2018 10:04:59 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Wed, 25 Apr 2018 13:04:59 -0400
X-Gmail-Original-Message-ID: <CAC1dCwVvwLpJMi+-YYx=u_9YxZnMpd729Hy=B+BADXaCEpWceQ@mail.gmail.com>
Message-ID: <CAC1dCwVvwLpJMi+-YYx=u_9YxZnMpd729Hy=B+BADXaCEpWceQ@mail.gmail.com>
To: announce@apache.org, dev@tika.apache.org, user@tika.apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000065b502056aaf4534"
Subject: [oss-security] =?UTF-8?Q?=5BCVE=2D2018=2D1339=5D_DoS_=28Infinite_Loop=29_Vulnerability_in?=
	=?UTF-8?Q?_Apache_Tika=E2=80=99s_ChmParser?=

--00000000000065b502056aaf4534
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2018-1339 =E2=80=93 DoS (Infinite Loop) Vulnerability in Apache Tika=E2=
=80=99s ChmParser


Severity: Important


Vendor: The Apache Software Foundation


Versions Affected: <1.18


Description: A carefully crafted (or fuzzed) file can trigger an infinite
loop in Apache Tika's ChmParser.

Mitigation: Turn off the ChmParser or upgrade to Apache Tika >=3D1.18.


Credit: Tobias Ospelt of modzero AG discovered this issue by fuzzing with
Kelinci (https://github.com/isstac/kelinci).

--00000000000065b502056aaf4534--
