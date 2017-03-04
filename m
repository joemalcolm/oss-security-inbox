X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1203" "Saturday" "4" "March" "2017" "16:48:23" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170304164823.3fb862c4@pc1>" "33" "[oss-security] One byte stack buffer overflow in keepassxc / zxcvbn-c" nil nil nil "3" "2017030415:48:23" "[oss-security] One byte stack buffer overflow in keepassxc / zxcvbn-c" (number mark "U       hanno@hboeck Mar  4   33/1203  " thread-indent "\"[oss-security] One byte stack buffer overflow in keepassxc / zxcvbn-c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9257 invoked by uid 550); 4 Mar 2017 15:48:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9233 invoked from network); 4 Mar 2017 15:48:36 -0000
Date: Sat, 4 Mar 2017 16:48:23 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To:
  "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <20170304164823.3fb862c4@pc1>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] One byte stack buffer overflow in keepassxc / zxcvbn-c

Hi,

I recently reported a one byte buffer overflow in keepassxc [1] [2].
It's a pretty typical C bug: An array supposed to hold a string of a
certain size plus a trailing zero byte is one byte too small (i.e. the
size doesn't consider the trailing zero).
Given that the overflow happens right at the application's startup I
doubt it's exploitable in a meaningful way.
The bug was discovered simply by compiling with asan and running
keepassxc.

The code comes from zxcvbn-c (a checker for password quality), where
I've also reported it [3] (together with another minor bug regarding a
misuse of new [] / delete).

keepassxc is a fork of keepassx. However keepassx is not affected, as
it doesn't contain the zxcvbn password quality checking code.

One takeaway of this is that even amongst developers of security tools
the use of address sanitizer is still not a standard practice
everyone's using to test their C code.


[1] https://github.com/keepassxreboot/keepassxc/pull/363
[2] https://github.com/keepassxreboot/keepassxc/pull/365
[3] https://github.com/tsyrogit/zxcvbn-c/pull/11

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
