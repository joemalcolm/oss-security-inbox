X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2059" "Tuesday" "14" "November" "2017" "18:21:56" "+0000" "Maier, Kurt H" "kurt.maier@pnnl.gov" "<1510683715.18312.1.camel@pnnl.gov>" "44" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017111418:21:56" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       kurt.maier@p Nov 14   44/2059  " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<20171114073720.GA27647@kroah.com>" ("<20171113151524.GA16983@kroah.com>" "<E1eEPJ5-0006vL-TF@rmmprod07.runbox>" "<20171114073720.GA27647@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6093 invoked by uid 550); 14 Nov 2017 18:24:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4015 invoked from network); 14 Nov 2017 18:22:10 -0000
From: "Maier, Kurt H" <kurt.maier@pnnl.gov>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref
 due to a race condition in [legousbtower] driver
Thread-Index: AQHTXJE+dRKvKNOi9UyVyiurU6Q81aMS8W4AgACeb4CAAHPrAIAAtBiA
Date: Tue, 14 Nov 2017 18:21:56 +0000
Message-ID: <1510683715.18312.1.camel@pnnl.gov>
References: <20171113151524.GA16983@kroah.com>
	 <E1eEPJ5-0006vL-TF@rmmprod07.runbox> <20171114073720.GA27647@kroah.com>
In-Reply-To: <20171114073720.GA27647@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [130.20.128.10]
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B7EAEC3DBE646D41A59B2B5A1241C5C5@pnnl.gov>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref
 due to a race condition in [legousbtower] driver

On Tue, 2017-11-14 at 08:37 +0100, Greg KH wrote:
>=20
> But really, this isn't even a "good start", it's identifying a bug
> fixed over a year ago for a kernel that only one company seems to
> care about because they are _not_ following the recommended upstream
> stable kernel patches because they "know better" :)

First you objected to a specific bug, then it turned into "do
everything or give up," now we're back to a specific bug, and each
iteration is more unrealistic "just run whatever we release immediately
across all devices" advice.

Please, this is not productive.

And without rancor, jibes like the "know better" line are basically
just trash-talking people who actually run systems for a living and the
organizations that provide support and development for those systems.=20
You're welcome to hold them in contempt but your weird persistence in
ensuring that contempt is explicitly expressed in every message you
post to the list is distracting at best, obnoxious as a baseline, and
toxic as a rule.  Consider taking it for granted that you're possessed
of wisdom unattained by the masses; we've all received this message by
now.

> That's my objection here.

Your objections are not accompanied by any advice that can be followed
by the vast majority of people responsible for linux systems.  The rest
of us are just trying to do our jobs, and the CVE process is an
important tool.  Please stop trying to make the kernel immune to CVE
reporting without any actual path forward for those of us who need this
tool.=20

I want to stress that I don't see a need for kernel maintainers to
change their approach in this regard and I have no problem with the
policies as they stand.  But I am profoundly confused as to why you
feel the need to post to oss-sec essentially telling people to pack it
in and go home.  It's not going to happen unless and until we have an
even more reliable and comprehensive method of tracking vulnerabilities
in packaged kernels, regardless of the blessed nature of the
immacualate LTS.

Thanks for your time,
khm=
