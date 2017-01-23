X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["842" "Monday" "23" "January" "2017" "19:38:03" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170123193803.4abc7401@pc1>" "29" "[oss-security] wavpack: multiple out of bounds memory reads" nil nil nil "1" "2017012318:38:03" "[oss-security] wavpack: multiple out of bounds memory reads" (number mark "U       hanno@hboeck Jan 23   29/842   " thread-indent "\"[oss-security] wavpack: multiple out of bounds memory reads\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15590 invoked by uid 550); 23 Jan 2017 18:38:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15564 invoked from network); 23 Jan 2017 18:38:16 -0000
Date: Mon, 23 Jan 2017 19:38:03 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <20170123193803.4abc7401@pc1>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] wavpack: multiple out of bounds memory reads

Hi,

Fuzzing wavpack led to the discoverey of several invalid memory reads.

global buffer overread in read_code / read_words.c
https://sourceforge.net/p/wavpack/mailman/message/35557889/

heap out of bounds read in WriteCaffHeader / caff.c
https://sourceforge.net/p/wavpack/mailman/message/35561921/

heap out of bounds read in unreorder_channels / wvunpack.c
https://sourceforge.net/p/wavpack/mailman/message/35561939/

heap oob read in read_new_config_info / open_utils.c
https://sourceforge.net/p/wavpack/mailman/message/35561939/


All of them have been fixed with a single commit:
https://github.com/dbry/WavPack/commit/4bc05fc490b66ef2d45b1de26abf1455b486=
b0dc

Wavpack 5.1.0 has been released and fixes all issues.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
