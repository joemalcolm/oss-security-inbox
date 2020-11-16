X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1987" "Monday" "16" "November" "2020" "12:43:10" "-0500" "David A. Wheeler" "dwheeler@dwheeler.com" "<E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>" "47" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111617:43:10" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       dwheeler@dwh Nov 16   47/1987  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<20201114115850.GB5193@suse.de>" ("<20201113133331.48185f9f@computer>" "<20201114115850.GB5193@suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32491 invoked by uid 550); 16 Nov 2020 17:43:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32473 invoked from network); 16 Nov 2020 17:43:28 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_48434224-5A5C-4683-A46C-18EA737A8935"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Mon, 16 Nov 2020 12:43:10 -0500
References: <20201113133331.48185f9f@computer> <20201114115850.GB5193@suse.de>
To: oss-security@lists.openwall.com
In-Reply-To: <20201114115850.GB5193@suse.de>
Message-Id: <E25813A6-081D-4B42-AD7E-8D38F5320D7E@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux
 distros

--Apple-Mail=_48434224-5A5C-4683-A46C-18EA737A8935
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Fri, Nov 13, 2020 at 01:33:31PM +0100, Hanno B=C3=B6ck wrote:
>> 3 years ago I reported a heap overflow vulnerability in raptor, an RDF
>> parsing library:
>> https://www.openwall.com/lists/oss-security/2017/06/07/1 <https://www.op=
enwall.com/lists/oss-security/2017/06/07/1> ,,,
>> Maybe noteworthy is that this didn't get a CVE in 2017. It seems many
>> distros rely on CVEs to get a process of backporting fixes rolling.
>> Given the fluctuating reliability of CVE assignments not sure this is
>> wise. I have now requested a CVE (CVE-2017-18926).
...

> On Nov 14, 2020, at 6:58 AM, Marcus Meissner <meissner@suse.de> wrote:
> I think the only thing you can do additional is to request a CVE.
>=20
> All tracking by everyone is using CVEs, this is the core identifier
> of the software security world.

I think this is key. If you find a vulnerability, you typically need to ens=
ure that it gets
a CVE assigned if you want coordination & resolution to happen. It's how co=
ordination happens.
There are issues with CVEs, but I=E2=80=99ve never seen a CVE assignment
get dropped in recent years once it was requested properly.
Delayed, yes, but I know CVE assignments don=E2=80=99t take 3 years :-).
And yes, there are special issues with the Linux kernel, but this package i=
sn=E2=80=99t the Linux kernel.

If you think that CVE assignment is still of =E2=80=9Cfluctuating reliabili=
ty=E2=80=9D I=E2=80=99d like to hear that argument
and get it fixed. It=E2=80=99s normally better to fix the standard process =
for doing something than
to create yet another process that runs in parallel. I=E2=80=99ve seen no r=
ecent evidence of this reliability issue.

Sing this (to =E2=80=9CSingle Ladies=E2=80=9D):
"If you like it, then you shoulda put a CVE on it...:"

--- David A. Wheeler


--Apple-Mail=_48434224-5A5C-4683-A46C-18EA737A8935--
