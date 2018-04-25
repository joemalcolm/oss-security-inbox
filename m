X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["635" "Wednesday" "25" "April" "2018" "13:01:30" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwW1WG339h=fqMzjG4p0VdeoOe3q5qKM=Q7KUQPuLzS1RA@mail.gmail.com>" "23" "[oss-security] =?UTF-8?B?W0NWRS0yMDE4LTEzMzhdIERvUyAoSW5maW5pdGUgTG9vcCkgVnVsbmVyYWJpbGl0eSBpbg==?==?UTF-8?B?IEFwYWNoZSBUaWth4oCZcyBCUEdQYXJzZXI=?=" nil nil nil "4" "2018042517:01:30" "[oss-security] =?UTF-8?B?W0NWRS0yMDE4LTEzMzhd?= =?UTF-8?B?RG9T?= =?UTF-8?B?KEluZmluaXRl?= =?UTF-8?B?TG9vcCk=?= =?UTF-8?B?VnVsbmVyYWJpbGl0eQ==?= =?UTF-8?B?aW4=?= =?UTF-8?B?QXBhY2hl?= =?UTF-8?B?VGlrYeKAmXM=?= =?UTF-8?B?QlBHUGFyc2Vy?=" (number mark "U       tallison@apa Apr 25   23/635   " thread-indent "\"[oss-security] =?UTF-8?B?W0NWRS0yMDE4LTEzMzhdIERvUyAoSW5maW5pdGUgTG9vcCkgVnVsbmVyYWJpbGl0eSBpbg==?==?UTF-8?B?IEFwYWNoZSBUaWth4oCZcyBCUEdQYXJzZXI=?=\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15689 invoked by uid 550); 25 Apr 2018 17:01:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15655 invoked from network); 25 Apr 2018 17:01:45 -0000
X-Gm-Message-State: ALQs6tD9TWrUbL7uo6Bd++Ql/0/L2m6p2Nh1gkK2QrEGmFky5W0iTCc0
	4i2CabT+8nGfJlccsFRwhhSeB06oFF1H1RTqUZs=
X-Google-Smtp-Source: AIpwx4+hQ4VAnwhFwVdADBtbuTgRb2uXg+Vph1rgOnkosIplzdbpiiJ/9/xZcEJ62Zt+2xseLcdz0k65uTxiCJGbKcM=
X-Received: by 2002:a25:ac8d:: with SMTP id x13-v6mr16809283ybi.502.1524675690720;
 Wed, 25 Apr 2018 10:01:30 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Wed, 25 Apr 2018 13:01:30 -0400
X-Gmail-Original-Message-ID: <CAC1dCwW1WG339h=fqMzjG4p0VdeoOe3q5qKM=Q7KUQPuLzS1RA@mail.gmail.com>
Message-ID: <CAC1dCwW1WG339h=fqMzjG4p0VdeoOe3q5qKM=Q7KUQPuLzS1RA@mail.gmail.com>
To: announce@apache.org, dev@tika.apache.org, user@tika.apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000f1746d056aaf385f"
Subject: [oss-security] =?UTF-8?Q?=5BCVE=2D2018=2D1338=5D_DoS_=28Infinite_Loop=29_Vulnerability_in?=
	=?UTF-8?Q?_Apache_Tika=E2=80=99s_BPGParser?=

--000000000000f1746d056aaf385f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2018-1338 =E2=80=93 DoS (Infinite Loop) Vulnerability in Apache Tika=E2=
=80=99s BPGParser


Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: <1.18

Description: A carefully crafted (or fuzzed) file can trigger an infinite
loop in Apache Tika's BPGParser.

Mitigation: Turn off the BPGParser or upgrade to Apache Tika >=3D1.18.

Credit: Tobias Ospelt of modzero AG discovered this issue by fuzzing with
Kelinci (https://github.com/isstac/kelinci).

--000000000000f1746d056aaf385f--
