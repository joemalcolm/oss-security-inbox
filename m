X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["767" "Tuesday" "13" "February" "2018" "12:04:50" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180213120450.29f126cf@pc1>" "26" "[oss-security] GNU patch out of bounds read, null pointer crash and double free" nil nil nil "2" "2018021311:04:50" "[oss-security] GNU patch out of bounds read, null pointer crash and double free" (number mark "U       hanno@hboeck Feb 13   26/767   " thread-indent "\"[oss-security] GNU patch out of bounds read, null pointer crash and double free\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1650 invoked by uid 550); 13 Feb 2018 11:05:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1606 invoked from network); 13 Feb 2018 11:05:04 -0000
Date: Tue, 13 Feb 2018 12:04:50 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20180213120450.29f126cf@pc1>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] GNU patch out of bounds read, null pointer crash and double free

The recent release of GNU patch 2.7.6 fixed an old out of bounds read I
had reported in 2015:

out of bounds read with malformed patch in pch_write_line
https://savannah.gnu.org/bugs/index.php?45990

Commit:
https://git.savannah.gnu.org/cgit/patch.git/commit/src/pch.c?id=3Da0d7fe458=
9651c64bd16ddaaa634030bb0455866

I re-checked patch now and found a few more issues:

segfault / null pointer (probably crash only)
https://savannah.gnu.org/bugs/index.php?53132
https://git.savannah.gnu.org/cgit/patch.git/commit/?id=3Df290f48a6218670848=
84bfff87f8093c15195e6a

double free in function another_hunk()
https://savannah.gnu.org/bugs/index.php?53133

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
