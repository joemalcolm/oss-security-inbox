X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["422" "Wednesday" "7" "December" "2016" "14:15:15" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161207141515.4f21682f@pc1>" "18" "Re: [oss-security] Re: CVE-2016-8655 Linux af_packet.c race condition (local root)" "^Date:" nil nil "12" "2016120713:15:15" "[oss-security] Re: CVE-2016-8655 Linux af_packet.c race condition (local root)" (number mark "        hanno@hboeck Dec  7   18/422   " thread-indent "\"Re: [oss-security] Re: CVE-2016-8655 Linux af_packet.c race condition (local root)\"\n") "<CAHQ_-nTRLMQ21e3DHESbRcJcK3H3DCZGB9yrkx-TeMRi4f5vVQ@mail.gmail.com>" ("<CAHQ_-nTXwwmno6iu2fFRsH+JJwZ4rRT93kf7_eRFtoi00kJK2g@mail.gmail.com>" "<CAHQ_-nTRLMQ21e3DHESbRcJcK3H3DCZGB9yrkx-TeMRi4f5vVQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9291 invoked by uid 550); 7 Dec 2016 13:15:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9262 invoked from network); 7 Dec 2016 13:15:29 -0000
Message-ID: <20161207141515.4f21682f@pc1>
In-Reply-To: <CAHQ_-nTRLMQ21e3DHESbRcJcK3H3DCZGB9yrkx-TeMRi4f5vVQ@mail.gmail.com>
References: <CAHQ_-nTXwwmno6iu2fFRsH+JJwZ4rRT93kf7_eRFtoi00kJK2g@mail.gmail.com>
	<CAHQ_-nTRLMQ21e3DHESbRcJcK3H3DCZGB9yrkx-TeMRi4f5vVQ@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 7 Dec 2016 14:15:15 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2016-8655 Linux af_packet.c race
 condition (local root)
To: oss-security@lists.openwall.com

Hi,

I'm running kernel 4.8.12, which has the fix you pointed out included,
however:

> You can also run it with "crash" as the first argument to force a
> panic.

running your code with the "crash" parameter reliably panics this
kernel.
This doesn't seem right. Is this an incomplete or nonworking fix?

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
