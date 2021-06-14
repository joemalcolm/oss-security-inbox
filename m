X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1022" "Monday" "14" "June" "2021" "12:12:56" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" nil "28" "[oss-security] xscreensaver: filename command injection in vidwhacker screensaver" nil nil nil "6" nil nil (number mark "U       hanno@hboeck Jun 14   28/1022  " thread-indent "\"[oss-security] xscreensaver: filename command injection in vidwhacker screensaver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] xscreensaver: filename command injection in vidwhacker screensaver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11532 invoked by uid 550); 14 Jun 2021 10:13:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11502 invoked from network); 14 Jun 2021 10:13:09 -0000
Date: Mon, 14 Jun 2021 12:12:56 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20210614121256.75640f6b@computer>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] xscreensaver: filename command injection in vidwhacker screensaver

The "vidwhacker" screensaver in xscreensaver does not properly escape
filenames of input images, allowing command injection via filenames.

The autor of xscreensaver considers this a non-issue.

xscreensaver contains a screensaver called "vidwhacker" which uses
image files as an input and passes them to various command line tools
for decoding. A user can configure a directory with images.

The filenames are passed to the command line tools without any
escaping. This allows injecting commands, e.g. via subshells.

PoC:
* Create a dir with a file named '$(touch pwn).png'
* Run xscreensaver-demo, configure the vidwhacker directory to above
  dir and run preview.
* File "pwn" gets created.

I believe this is a low risk security issue. A possible attack
scenario would be e.g. someone providing an image collection to a
victim which is large enough that an unusual filename wouldn't be noted.

The author of xscreensaver disagrees and wrote me he considers this a
non-issue.

--=20
Hanno B=C3=B6ck
https://hboeck.de/
