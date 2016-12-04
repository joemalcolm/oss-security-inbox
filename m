X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["574" "Sunday" "4" "December" "2016" "23:35:18" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2349403.hFb0Mj2ZlT@arcadia>" "25" "Re: [oss-security] libav: multiple crashes from the Undefined Behavior Sanitizer" nil nil nil "12" "2016120422:35:18" "[oss-security] libav: multiple crashes from the Undefined Behavior Sanitizer" (number mark "U       ago@gentoo.o Dec  4   25/574   " thread-indent "\"Re: [oss-security] libav: multiple crashes from the Undefined Behavior Sanitizer\"\n") "<2421787.A5MWpBLn5b@arcadia>" ("<2421787.A5MWpBLn5b@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24508 invoked by uid 550); 4 Dec 2016 22:34:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24487 invoked from network); 4 Dec 2016 22:34:00 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sun, 04 Dec 2016 23:35:18 +0100
Message-ID: <2349403.hFb0Mj2ZlT@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
In-Reply-To: <2421787.A5MWpBLn5b@arcadia>
References: <2421787.A5MWpBLn5b@arcadia>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] libav: multiple crashes from the Undefined Behavior Sanitizer

On Thursday 01 December 2016 14:30:33 Agostino Sarubbo wrote:
> Affected version / Tested on:
> 11.8
> Output/failure:
> /tmp/portage/media-
> video/libav-11.8/work/libav-11.8/libavcodec/get_bits.h:530:5: runtime err=
or:
> load of null pointer of type =E2=80=98int16_t=E2=80=99 (aka =E2=80=98shor=
t=E2=80=99)
> Commit fix:
> N/A
> Fixed version:
> N/A
> Testcase:
> https://github.com/asarubbo/poc/blob/master/00042-libav-loadnullptr-get_b=
its
> _h

Please ignore the issue above. It was already tracked as CVE-2016-8676.



--=20
Agostino Sarubbo
Gentoo Linux Developer
