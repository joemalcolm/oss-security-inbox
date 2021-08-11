X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["834" "Wednesday" "11" "August" "2021" "18:02:35" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" nil "21" "Re: [oss-security] STARTTLS vulnerabilities" "^Date:" nil nil "8" nil nil (number mark "        hanno@hboeck Aug 11   21/834   " thread-indent "\"Re: [oss-security] STARTTLS vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] STARTTLS vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21539 invoked by uid 550); 11 Aug 2021 16:02:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21521 invoked from network); 11 Aug 2021 16:02:48 -0000
Message-ID: <20210811180235.65375940@computer>
In-Reply-To: <20210811153158.gt6uk4qqaqw7lzo2@redhat.com>
References: <20210810122113.3fe65cc9@computer>
	<20210810134156.GF1599104@hal>
	<20210811081634.15143171@computer>
	<20210811153158.gt6uk4qqaqw7lzo2@redhat.com>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 11 Aug 2021 18:02:35 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS vulnerabilities
To: oss-security@lists.openwall.com

On Wed, 11 Aug 2021 10:31:58 -0500
Eric Blake <eblake@redhat.com> wrote:

> Not mentioned in that list was ndb, but as far as I can tell, that
> project has already documented the ramifications of opportunistic
> encryption as being a security risk, and all known implementations
> (both servers and clients) with TLS support have a mode of execution
> that ensures the connection is dropped if a downgrade attack is
> attempted:

I should point out that our research is not on simple downgrade attacks.
These are kinda obvious by the design of STARTTLS if you implement it
in an opportunistic way.

The buffering vulnerabilities we found are in STARTTLS implementations
that have the expectation to enforce a secure connection, but suffer
from various vulnerabilities in the implementation.

--=20
Hanno B=C3=B6ck
https://hboeck.de/
