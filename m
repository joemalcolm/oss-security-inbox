X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1050" "Thursday" "3" "November" "2016" "17:26:27" "+0100" "Florian Weimer" "fw@deneb.enyo.de" "<87ins4bkcs.fsf@mid.deneb.enyo.de>" "22" "Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^Date:" nil nil "11" "2016110316:26:27" "[oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        fw@deneb.eny Nov  3   22/1050  " thread-indent "\"Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>" ("<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3964 invoked by uid 550); 3 Nov 2016 16:26:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3945 invoked from network); 3 Nov 2016 16:26:39 -0000
References: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>
In-Reply-To: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr> (Daniel
	Stenberg's message of "Wed, 2 Nov 2016 08:13:26 +0100 (CET)")
Message-ID: <87ins4bkcs.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Date: Thu, 03 Nov 2016 17:26:27 +0100
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host
To: oss-security@lists.openwall.com

* Daniel Stenberg:

> When curl is built with libidn to handle International Domain Names
> (IDNA), it translates them to puny code for DNS resolving using the
> IDNA 2003 standard, while IDNA 2008 is the modern and up-to-date
> IDNA standard.

I think everyone in the software space assumes that all DNS registries
block registrations which would allocate names colliding under the
IDNA 2003 and 2008 standards to different owners.  There were even
attempts at the registry level to automatically alias different
encodings (something which is difficult because it interferes with the
goal to make the whole thing application-centric).

> For example, `stra=DFe.de` is translated into `strasse.de` using IDNA
> 2003 but is translated into `xn--strae-oqa.de` using IDNA
> 2008. Needless to say, those host names could very well resolve to
> different addresses and be two completely independent servers. IDNA
> 2008 is mandatory for .de domains.

What does DENIC say about this matter?  It looks like their
implementation of IDNA is just very broken.
