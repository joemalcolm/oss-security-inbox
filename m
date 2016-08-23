X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2216" "Tuesday" "23" "August" "2016" "15:01:07" "+0000" "Radzykewycz, T (Radzy)" "radzy@windriver.com" "<33006C99F5A5194A9B7A7715DFA3E3830110040393@ALA-MBA.corp.ad.wrs.com>" "50" "[oss-security] RE: [security-vendor] Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^CC:" nil nil "8" "2016082315:01:07" "[oss-security] RE: [security-vendor] Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        radzy@windri Aug 23   50/2216  " thread-indent "\"[oss-security] RE: [security-vendor] Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<CANO=Ty0qqSYWXQ2SfZuq8BOZ2rhGvg5mGxD2pB38HVvp1vvrwg@mail.gmail.com>" ("<20160818142216.GH2701@suse.de>" "<20160818143014.GA27854@kroah.com>" "<20160818143957.GI2701@suse.de>" "<20160818145724.GA32181@kroah.com>" "<20160818151654.GK2701@suse.de>" "<1471538630.13300.95.camel@decadent.org.uk>" "<3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>" "<20160818195024.GB17944@1wt.eu>" "<20160822152448.GC3132@suse.de>" "<20160823053842.GB21570@1wt.eu>" "<CANO=Ty0qqSYWXQ2SfZuq8BOZ2rhGvg5mGxD2pB38HVvp1vvrwg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12119 invoked by uid 550); 23 Aug 2016 15:06:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3629 invoked from network); 23 Aug 2016 15:01:28 -0000
Thread-Topic: [security-vendor] Re: [oss-security] Re: CVE Request: Linux
 kernel crash of OHCI when plugging in malicious USB devices
Thread-Index: AQHR/QUS2m25n2WeREehVA/Z6sZfCqBXDpGA//+VJH4=
Message-ID: <33006C99F5A5194A9B7A7715DFA3E3830110040393@ALA-MBA.corp.ad.wrs.com>
References: <20160818142216.GH2701@suse.de>
 <20160818143014.GA27854@kroah.com> <20160818143957.GI2701@suse.de>
 <20160818145724.GA32181@kroah.com> <20160818151654.GK2701@suse.de>
 <1471538630.13300.95.camel@decadent.org.uk>
 <3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>
 <20160818195024.GB17944@1wt.eu> <20160822152448.GC3132@suse.de>
 <20160823053842.GB21570@1wt.eu>,<CANO=Ty0qqSYWXQ2SfZuq8BOZ2rhGvg5mGxD2pB38HVvp1vvrwg@mail.gmail.com>
In-Reply-To: <CANO=Ty0qqSYWXQ2SfZuq8BOZ2rhGvg5mGxD2pB38HVvp1vvrwg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [147.11.216.194]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
CC: Marcus Meissner <meissner@suse.de>, Adam Maris <amaris@redhat.com>,
        "Greg
 KH" <greg@kroah.com>, CVE ID Requests <cve-assign@mitre.org>,
        "security@kernel.org" <security@kernel.org>
Date: Tue, 23 Aug 2016 15:01:07 +0000
From: "Radzykewycz, T (Radzy)" <radzy@windriver.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] RE: [security-vendor] Re: [oss-security] Re: CVE Request: Linux
 kernel crash of OHCI when plugging in malicious USB devices
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>


________________________________________
> From: Kurt Seifried [kseifried@redhat.com]
> Sent: Tuesday, August 23, 2016 7:21 AM
> To: oss-security
> Cc: Marcus Meissner; Adam Maris; Greg KH; CVE ID Requests; security@kerne=
l.org
> Subject: [security-vendor] Re: [oss-security] Re: CVE Request: Linux kern=
el crash of OHCI when plugging in malicious USB devices
>=20
> On Mon, Aug 22, 2016 at 11:38 PM, Willy Tarreau <w@1wt.eu> wrote:
> >
> > I'd classify it differently : something where a bug allows someone
> > unauthorized to do something he couldn't do differently needs a CVE.
> > That includes memory corruption, code execution, privilege increases,
> > local DoS/panic/oops by just executing an exploit, etc. Here we're
> > speaking about someone plugging some hardware into an open port which
> > immediately takes the whole system down. Sure, the faulty code makes
> > this possible. But the hardware is purposely designed for this. I can
> > also design some hardware which takes the system down and possibly even
> > fries it without involving the code at all. So once this device is
> > built, if we assign a CVE, nobody will fix it and it will not even
> > apply to any specific OS. Oh, after just one Google request I found
> > that I was not the first one to think about it, it already exists :
> >
> >    http://arstechnica.com/security/2015/10/usb-killer-
> > flash-drive-can-fry-your-computers-innards-in-seconds/
> >
>=20
> Ah but defending against this sort of physical attack is actually quite
> easy, use a USB hub, or for higher assurance use a wireless USB hub. TBH
> I'm not sure what the difference is between say the above USB killer and a
> small taser or a small squirt bottle of saline solution.

If an attacker drops a bottle of saline solution on the floor
outside the target's office, it's unlikely to be plugged in to
the USB port.

Enjoy!

				-- radzy

> In general I should be able to plug USB devices into a computer without t=
he
> computer succumbing to software based attacks (stuxnet anyone?).
>=20
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
