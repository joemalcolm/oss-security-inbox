X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["454" "Thursday" "12" "January" "2017" "13:27:09" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170112132709.78a33f81@pc1>" "17" "Re: [oss-security] invalid free in GNU ed before 1.14.1" "^Date:" nil nil "1" "2017011212:27:09" "[oss-security] invalid free in GNU ed before 1.14.1" (number mark "        hanno@hboeck Jan 12   17/454   " thread-indent "\"Re: [oss-security] invalid free in GNU ed before 1.14.1\"\n") "<234c46c2-a4a9-4f65-d65e-e3bd5152fd0e@redhat.com>" ("<20170112121405.563ee9ee@pc1>" "<234c46c2-a4a9-4f65-d65e-e3bd5152fd0e@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11496 invoked by uid 550); 12 Jan 2017 12:27:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11475 invoked from network); 12 Jan 2017 12:27:22 -0000
Message-ID: <20170112132709.78a33f81@pc1>
In-Reply-To: <234c46c2-a4a9-4f65-d65e-e3bd5152fd0e@redhat.com>
References: <20170112121405.563ee9ee@pc1>
	<234c46c2-a4a9-4f65-d65e-e3bd5152fd0e@redhat.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Jan 2017 13:27:09 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] invalid free in GNU ed before 1.14.1
To: oss-security@lists.openwall.com

On Thu, 12 Jan 2017 13:10:41 +0100
Florian Weimer <fweimer@redhat.com> wrote:

> There is red/ed -r.  I wouldn't rely on it for security isolation,
> but the functionality does exist.

Oh, that's interesting.

I can confirm that it crashes also in restricted / red (-r) mode.
Therefore it should probably be considered a vulnerability.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
