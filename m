Received: (qmail 13405 invoked by uid 550); 29 Dec 2022 17:56:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13376 invoked from network); 29 Dec 2022 17:56:53 -0000
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
From: "David A. Wheeler" <dwheeler@dwheeler.com>
In-Reply-To: <b31213da-5ea2-d1f8-dcb2-2917b787ce89@oracle.com>
Date: Thu, 29 Dec 2022 12:56:22 -0500
Cc: Demi Marie Obenour <demi@invisiblethingslab.com>,
 Alejandro Colomar <alx.manpages@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <90735C03-0C34-49ED-A79A-EC0165C274CC@dwheeler.com>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email>
 <b31213da-5ea2-d1f8-dcb2-2917b787ce89@oracle.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.120.23.2.7)
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

> On Dec 29, 2022, at 11:43 AM, Alan Coopersmith <alan.coopersmith@oracle.c=
om> wrote:


Another solution is to escape bytes that might cause trouble in this field,=
 e.g., using %xx hexadecimal.
So space would be %20, ")" would be %41, control characters 1-31 would be %=
01 to %1f,
and (of course) "%" would be encoded as %25.
Basically, URL-encode / Percent-encode them. See: https://en.wikipedia.org/=
wiki/Percent-encoding

Technically this would be a userspace change, but only in cases where the s=
ystem
would probably have done the wrong thing previously. It's okay if we break =
*attacker* workflows
as long as we don't break others'. An advantage of URL encoding is that,
like JSON, it's a well-known format. I might do something different if this=
 was a new system,
but that seems like the least-impact approach while eliminating the problem.

--- David A .Wheeler

