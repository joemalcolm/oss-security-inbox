X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["376" "Saturday" "16" "January" "2021" "08:39:46" "+0100" "Hanno =?iso-8859-1?Q?B=F6c?==?iso-8859-1?Q?k?=" "hanno@hboeck.de" "<20210116083946.29de5cf3@computer>" "13" "[oss-security] MATE screensaver screen lock bypass with external monitor" nil nil nil "1" "2021011607:39:46" "[oss-security] MATE screensaver screen lock bypass with external monitor" (number mark "U       hanno@hboeck Jan 16   13/376   " thread-indent "\"[oss-security] MATE screensaver screen lock bypass with external monitor\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] MATE screensaver screen lock bypass with external monitor" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26472 invoked by uid 550); 16 Jan 2021 07:39:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26442 invoked from network); 16 Jan 2021 07:39:59 -0000
Date: Sat, 16 Jan 2021 08:39:46 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20210116083946.29de5cf3@computer>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] MATE screensaver screen lock bypass with external monitor

Given the discussion about a cinnamon screensaver crash vuln, I was
recently made aware of this issue in mate-screensaver:

https://github.com/mate-desktop/mate-screensaver/issues/183

It seems by a series of plugging in and out external monitors with mate
screensaver you can see the screen content despite the screen being
locked.


--=20
Hanno B=C3=B6ck
https://hboeck.de/
