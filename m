X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1044" "Thursday" "16" "April" "2015" "14:05:57" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150416140557.72e3e4d3@redhat.com>" "36" "Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" nil nil nil "4" "2015041612:05:57" "[oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" (number mark "        scorneli@red Apr 16   36/1044  " thread-indent "\"Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability\"\n") "<CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>" ("<CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23611 invoked by uid 550); 16 Apr 2015 12:06:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23588 invoked from network); 16 Apr 2015 12:06:15 -0000
Message-ID: <20150416140557.72e3e4d3@redhat.com>
In-Reply-To: <CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>
References: <CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Thu, 16 Apr 2015 14:05:57 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] net-snmp snmp_pdu_parse() function incompletely
 initializaition vulnerability
To: oss-security@lists.openwall.com

On Mon, 13 Apr 2015 13:44:04 +0800
=E7=BD=97=E5=A4=A7=E9=BE=99 <luodalongde@gmail.com> wrote:

> HI there,
>=20
>=20
>=20
> Greeting! This is Qinghao Tang from QIHU 360  company, China. I am a
> security researcher there.
>=20
> I'm writing to apply for a CVE ID, for a 0day vulnerability in
> net-snmp. Please refer to below report.
>=20

The upstream patch is here:
https://sourceforge.net/p/net-snmp/code/ci/f23bcd3ac6ddee5d0a48f9703007ccc7=
38914791/

As linked from the commit, the (currently restricted) upstream bug is:
https://sourceforge.net/p/net-snmp/bugs/2615/

Although this leads to crashes at different locations, all of them can
be attributed to snmp_pdu_parse() leaving stale netsnmp_variable_list
items in the list, so I think one CVE should be enough.


In case anyone is interested, the Red Hat bug is:
https://bugzilla.redhat.com/show_bug.cgi?id=3D1212408


Thanks,
--=20
Stefan Cornelius / Red Hat Product Security

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/
