X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["804" "Tuesday" "7" "November" "2017" "20:30:05" "+0000" "Maier, Kurt H" "kurt.maier@pnnl.gov" "<1510086603.29942.2.camel@pnnl.gov>" "22" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" "^Date:" nil nil "11" "2017110720:30:05" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       kurt.maier@p Nov  7   22/804   " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<20171107202237.GA10679@kroah.com>" ("<906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>" "<1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>" "<20171107202237.GA10679@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11293 invoked by uid 550); 7 Nov 2017 21:14:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16261 invoked from network); 7 Nov 2017 20:30:17 -0000
Thread-Topic: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref
 due to a race condition in [legousbtower] driver
Thread-Index: cuUjS/h9kZMSbIbCPC09nV7keM+VYNxp+nmAgAACE4A=
Message-ID: <1510086603.29942.2.camel@pnnl.gov>
References: <906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>
	 <1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>
	 <20171107202237.GA10679@kroah.com>
In-Reply-To: <20171107202237.GA10679@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [130.20.128.10]
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D0774C4113625F4BB8D1E7A8BDF51EA7@pnnl.gov>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date: Tue, 7 Nov 2017 20:30:05 +0000
From: "Maier, Kurt H" <kurt.maier@pnnl.gov>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref
 due to a race condition in [legousbtower] driver
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

On Tue, 2017-11-07 at 21:22 +0100, Greg KH wrote:
>=20
> I hate to ask, but why are you getting CVEs for bugs fixed over a
> year
> ago, and are already in all stable kernel releases a year ago?=A0=A0Why
> does
> it matter?
>=20
> Unless you happen to have a product that doesn't ever do kernel
> updates
> from the stable trees, and well, then you know what you are doing and
> don't need CVEs assigned either, right?=A0=A0:)
>=20

Kernel maintainers' policy is clear, and nobody is asking for that to
change, but please don't sandbag the process of keeping track of
vulnerabilities.  The fraction of "products" (regardless of vendor)
that run linux and never get updates approaches unity.  Being able to
precisely catalog which linux releases suffer from which
vulnerabilities is useful to many.

khm=
