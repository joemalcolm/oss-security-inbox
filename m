X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["833" "Wednesday" "25" "April" "2018" "13:06:53" "-0400" "Tim Allison" "tallison@apache.org" "<CAC1dCwVhrPRyFJMS5BbY02+495CUODrAzndqZkvKacJnXUSm+w@mail.gmail.com>" "42" "[oss-security] =?UTF-8?B?W0NWRS0yMDE4LTEzMzVdIENvbW1hbmQgSW5qZWN0aW9uIFZ1bG5lcmFiaWxpdHkgaW4gQQ==?==?UTF-8?B?cGFjaGUgVGlrYeKAmXMgdGlrYS1zZXJ2ZXIgbW9kdWxl?=" nil nil nil "4" "2018042517:06:53" "[oss-security] =?UTF-8?B?W0NWRS0yMDE4LTEzMzVd?= =?UTF-8?B?Q29tbWFuZA==?= =?UTF-8?B?SW5qZWN0aW9u?= =?UTF-8?B?VnVsbmVyYWJpbGl0eQ==?= =?UTF-8?B?aW4=?= =?UTF-8?B?QQ==?==?UTF-8?B?cGFjaGU=?= =?UTF-8?B?VGlrYeKAmXM=?= =?UTF-8?B?dGlrYS1zZXJ2ZXI=?= =?UTF-8?B?bW9kdWxl?=" (number mark "U       tallison@apa Apr 25   42/833   " thread-indent "\"[oss-security] =?UTF-8?B?W0NWRS0yMDE4LTEzMzVdIENvbW1hbmQgSW5qZWN0aW9uIFZ1bG5lcmFiaWxpdHkgaW4gQQ==?==?UTF-8?B?cGFjaGUgVGlrYeKAmXMgdGlrYS1zZXJ2ZXIgbW9kdWxl?=\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11495 invoked by uid 550); 25 Apr 2018 17:07:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11472 invoked from network); 25 Apr 2018 17:07:07 -0000
X-Gm-Message-State: ALQs6tD0F/PemAjh9UXDKmThxYypHEwrW3rAWgwWfC8XQaZb3TIyd5tx
	aP2lysHSmrWeOwwhmGtMMzfYsPFkp4wWEXGNZ8A=
X-Google-Smtp-Source: AIpwx49chp3xOSPZ8aUDYRm+r3nzsVCDd3tBeYrTx4P+JLCpElgiWkuGq9Qjhn9w3KO8fv/WbYjsPQDpNuIDmoIA20I=
X-Received: by 2002:a0d:c901:: with SMTP id l1-v6mr15791691ywd.416.1524676014154;
 Wed, 25 Apr 2018 10:06:54 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Wed, 25 Apr 2018 13:06:53 -0400
X-Gmail-Original-Message-ID: <CAC1dCwVhrPRyFJMS5BbY02+495CUODrAzndqZkvKacJnXUSm+w@mail.gmail.com>
Message-ID: <CAC1dCwVhrPRyFJMS5BbY02+495CUODrAzndqZkvKacJnXUSm+w@mail.gmail.com>
To: announce@apache.org, dev@tika.apache.org, user@tika.apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000038ad79056aaf4cad"
Subject: [oss-security] =?UTF-8?Q?=5BCVE=2D2018=2D1335=5D_Command_Injection_Vulnerability_in_A?=
	=?UTF-8?Q?pache_Tika=E2=80=99s_tika=2Dserver_module?=

--00000000000038ad79056aaf4cad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2018-1335 =E2=80=93 Command Injection Vulnerability in Apache Tika=E2=
=80=99s tika-server
module


Severity: High



Vendor: The Apache Software Foundation



Versions Affected: <1.18



Description: Before Tika 1.18, clients could send carefully crafted

headers to tika-server that could be used to inject commands into the

command line of the server running tika-server.  This vulnerability

only affects those running tika-server on a server that is open to

 untrusted clients.



Mitigation: Ensure that untrusted users don't have access to

tika-server and/or upgrade to Apache Tika >=3D1.18.



Credit: Tim Allison, a member of the Apache Tika team, discovered this.

--00000000000038ad79056aaf4cad--
