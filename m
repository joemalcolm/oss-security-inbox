X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4755" "Wednesday" "8" "June" "2016" "17:38:57" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160608153856.GH3711@suse.de>" "125" "Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Date:" nil nil "6" "2016060815:38:57" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        meissner@sus Jun  8  125/4755  " thread-indent "\"Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") "<CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>" ("<20160608085431.GA4278@openwall.com>" "<CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>" "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>" "<CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1668 invoked by uid 550); 8 Jun 2016 15:39:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1645 invoked from network); 8 Jun 2016 15:39:08 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160608153856.GH3711@suse.de>
References: <20160608085431.GA4278@openwall.com>
 <CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>
 <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>
 <CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 8 Jun 2016 17:38:57 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant
 time codepath for certain operations
To: oss-security@lists.openwall.com

Hi,

the openssl team usually announces those LOW issues together with the other
issues during their semi regular advisories.

(And usually as soon as these LOW CVE issues are getting added to git, a
new advisory is not far away.)

Ciao, Marcus
On Wed, Jun 08, 2016 at 05:33:35PM +0200, Gsunde Orangen wrote:
> ... which would be a different rating to the "moderate" that the RedHat
> team ended up with: https://access.redhat.com/security/cve/CVE-2016-2178
> I agree that both ratings are reasonable; so still awaiting for the OpenSSL
> announcement at least in the vulnerability section (
> https://www.openssl.org/news/vulnerabilities.html#y2016).
> (Could be that I am just too impatient ;-)
> 
> 2016-06-08 17:18 GMT+02:00 Alex Gaynor <alex.gaynor@gmail.com>:
> 
> > I assume the OpenSSL team considers this vulnerability to be LOW severity:
> > https://www.openssl.org/policies/secpolicy.html
> >
> > Alex
> >
> > On Wed, Jun 8, 2016 at 11:15 AM, Gsunde Orangen <gsunde.orangen@gmail.com>
> > wrote:
> >
> > > Whilst there is a commit in openssl and a CVE ID, I wonder why this
> > hasn't
> > > been announced yet by OpenSSL.org and why there are no official fix
> > > releases (yet).
> > > What made this issue different to the usual coordinated disclosures being
> > > practiced with the OpenSSL team?
> > >
> > > 2016-06-08 10:54 GMT+02:00 Solar Designer <solar@openwall.com>:
> > >
> > > > Hi,
> > > >
> > > > Just off Twitter:
> > > >
> > > > <mjos_crypto> Out today: This is the OpenSSL side-channel
> > vulnerability I
> > > > mentioned last week; now on ePrint. Also CVE-2016-2178.
> > > > http://eprint.iacr.org/2016/594
> > > > <@mjos_crypto> @mjos_crypto Currently unfixed in essentially all
> > distros.
> > > > <mjos_crypto> Note that CVE-2016-2178 /
> > > > http://eprint.iacr.org/2016/594.pdf most severely actually impacts
> > > > OpenSSH, which uses the OpenSSL library.
> > > > <mjos_crypto> Cesar's CVE-2016-2178 patch for the OpenSSL library from
> > > > Monday.
> > > >
> > >
> > https://git.openssl.org/?p=openssl.git;a=commit;h=399944622df7bd81af62e67ea967c470534090e2
> > > >
> > > > http://eprint.iacr.org/2016/594
> > > >
> > > > | "Make Sure DSA Signing Exponentiations Really are Constant-Time''
> > > > |
> > > > | Cesar Pereida Garca and Billy Bob Brumley and Yuval Yarom
> > > > |
> > > > | Abstract: TLS and SSH are two of the most commonly used protocols for
> > > > securing Internet traffic. Many of the implementations of these
> > protocols
> > > > rely on the cryptographic primitives provided in the OpenSSL library.
> > In
> > > > this work we disclose a vulnerability in OpenSSL, affecting all
> > versions
> > > > and forks (e.g. LibreSSL and BoringSSL) since roughly October 2005,
> > which
> > > > renders the implementation of the DSA signature scheme vulnerable to
> > > > cache-based side-channel attacks. Exploiting the software defect, we
> > > > demonstrate the first published cache-based key-recovery attack on
> > these
> > > > protocols: 260 SSH-2 handshakes to extract a 1024/160-bit DSA host key
> > > from
> > > > an OpenSSH server, and 580 TLS 1.2 handshakes to extract a 2048/256-bit
> > > DSA
> > > > key from an stunnel server.
> > > > |
> > > > | Category / Keywords: applied cryptography; digital signatures;
> > > > side-channel analysis; timing attacks; cache-timing attacks; DSA;
> > > OpenSSL;
> > > > CVE-2016-2178
> > > > |
> > > > | Date: received 6 Jun 2016, last revised 7 Jun 2016
> > > >
> > > >
> > > >
> > >
> > https://git.openssl.org/?p=openssl.git;a=commit;h=399944622df7bd81af62e67ea967c470534090e2
> > > >
> > > > | author        Cesar Pereida
> > > > |       Mon, 23 May 2016 12:45:25 +0300 (12:45 +0300)
> > > > | committer     Matt Caswell
> > > > |       Mon, 6 Jun 2016 13:08:15 +0300 (11:08 +0100)
> > > >
> > > > | Fix DSA, preserve BN_FLG_CONSTTIME
> > > > |
> > > > | Operations in the DSA signing algorithm should run in constant time
> > in
> > > > | order to avoid side channel attacks. A flaw in the OpenSSL DSA
> > > > | implementation means that a non-constant time codepath is followed
> > for
> > > > | certain operations. This has been demonstrated through a cache-timing
> > > > | attack to be sufficient for an attacker to recover the private DSA
> > key.
> > > > |
> > > > | CVE-2016-2178
> > > >
> > > > Alexander
> > > >
> > >
> >
> >
> >
> > --
> > "I disapprove of what you say, but I will defend to the death your right to
> > say it." -- Evelyn Beatrice Hall (summarizing Voltaire)
> > "The people's good is the highest law." -- Cicero
> > GPG Key fingerprint: D1B3 ADC0 E023 8CA6
> >

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
