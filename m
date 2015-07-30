X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1469" "Thursday" "30" "July" "2015" "10:15:08" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150730101508.3530416a@redhat.com>" "51" "Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" nil nil nil "7" "2015073008:15:08" "[oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" (number mark "U       scorneli@red Jul 30   51/1469  " thread-indent "\"Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability\"\n") "<20150510110648.GA28525@eldamar.local>" ("<CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>" "<20150416140557.72e3e4d3@redhat.com>" "<20150510110648.GA28525@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13644 invoked by uid 550); 30 Jul 2015 08:15:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13624 invoked from network); 30 Jul 2015 08:15:26 -0000
Date: Thu, 30 Jul 2015 10:15:08 +0200
From: Stefan Cornelius <scorneli@redhat.com>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: oss-security@lists.openwall.com,
        CVE Assignments MITRE
 <cve-assign@mitre.org>
Message-ID: <20150730101508.3530416a@redhat.com>
In-Reply-To: <20150510110648.GA28525@eldamar.local>
References: <CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>
	<20150416140557.72e3e4d3@redhat.com>
	<20150510110648.GA28525@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely
 initializaition vulnerability

On Sun, 10 May 2015 13:06:48 +0200
Salvatore Bonaccorso <carnil@debian.org> wrote:

> Hi,
>=20
> On Thu, Apr 16, 2015 at 02:05:57PM +0200, Stefan Cornelius wrote:
> > On Mon, 13 Apr 2015 13:44:04 +0800
> > =E7=BD=97=E5=A4=A7=E9=BE=99 <luodalongde@gmail.com> wrote:
> >=20
> > > HI there,
> > >=20
> > >=20
> > >=20
> > > Greeting! This is Qinghao Tang from QIHU 360  company, China. I
> > > am a security researcher there.
> > >=20
> > > I'm writing to apply for a CVE ID, for a 0day vulnerability in
> > > net-snmp. Please refer to below report.
> > >=20
> >=20
> > The upstream patch is here:
> > https://sourceforge.net/p/net-snmp/code/ci/f23bcd3ac6ddee5d0a48f9703007=
ccc738914791/
> >=20
> > As linked from the commit, the (currently restricted) upstream bug
> > is: https://sourceforge.net/p/net-snmp/bugs/2615/
> >=20
> > Although this leads to crashes at different locations, all of them
> > can be attributed to snmp_pdu_parse() leaving stale
> > netsnmp_variable_list items in the list, so I think one CVE should
> > be enough.
> >=20
> >=20
> > In case anyone is interested, the Red Hat bug is:
> > https://bugzilla.redhat.com/show_bug.cgi?id=3D1212408
>=20
> Explicitly adding MITREs CVE assignment team to the CC list.
>=20
> Any news on this? Unfortunately the upstream bug report ist still
> restricted.
>=20
> Thanks and regards,
> Salvatore

Hi,

As far as I can tell, this still needs a CVE.

Thanks,
--=20
Stefan Cornelius / Red Hat Product Security
