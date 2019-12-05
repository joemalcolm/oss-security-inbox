X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["438" "Thursday" "5" "December" "2019" "12:04:45" "+0100" "Arrigo Triulzi" "arrigo@alchemistowl.org" "<4BEB436C-9471-446E-9795-6B3AACEDDAB4@alchemistowl.org>" "18" "Re: [oss-security] Authentication vulnerabilities in OpenBSD" "^Date:" nil nil "12" "2019120511:04:45" "[oss-security] Authentication vulnerabilities in OpenBSD" (number mark "        arrigo@alche Dec  5   18/438   " thread-indent "\"Re: [oss-security] Authentication vulnerabilities in OpenBSD\"\n") "<CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>" ("<20191204204020.GB7012@localhost.localdomain>" "<CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Authentication vulnerabilities in OpenBSD" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11539 invoked by uid 550); 5 Dec 2019 12:17:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23624 invoked from network); 5 Dec 2019 11:05:05 -0000
X-Virus-Scanned: amavisd-new at bagheera.alchemistowl.org
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <20191204204020.GB7012@localhost.localdomain>
 <CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>
In-Reply-To: <CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>
Message-Id: <4BEB436C-9471-446E-9795-6B3AACEDDAB4@alchemistowl.org>
X-Mailer: Apple Mail (2.3445.104.11)
Date: Thu, 5 Dec 2019 12:04:45 +0100
From: Arrigo Triulzi <arrigo@alchemistowl.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Authentication vulnerabilities in OpenBSD
To: oss-security@lists.openwall.com

On 5 Dec 2019, at 11:44, Georgi Guninski <gguninski@gmail.com> wrote:
>=20
> On Wed, Dec 4, 2019 at 10:51 PM Qualys Security Advisory <qsa@qualys.com>=
 wrote:
>>=20
>>=20
>> Qualys Security Advisory
>>=20
>> Authentication vulnerabilities in OpenBSD
>>=20
>=20
> openbsd doesn't count these as remote holes in default install, right?

By default OpenSMTPd listens only on localhost:25 and is not configured to =
offer SMTP AUTH

Arrigo

