X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["770" "Wednesday" "17" "August" "2016" "11:54:56" "+0000" "Sona Sarmadi" "sona.sarmadi@enea.com" "<3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>" "22" "RE: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081711:54:56" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        sona.sarmadi Aug 17   22/770   " thread-indent "\"RE: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<20160816201908.GB10132@kroah.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "<20160814195158.GA19228@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>" "<20160815075301.GD6359@kroah.com>" "<8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>" "<20160816201908.GB10132@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19901 invoked by uid 550); 17 Aug 2016 11:55:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19877 invoked from network); 17 Aug 2016 11:55:09 -0000
Thread-Topic: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
Thread-Index: AQHR9mMu6T2Sm46tbEqKj3Unx9zBu6BIvFQAgADPg+D///nygIACYd6AgAAA7gCAASN+IA==
Message-ID: <3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
 <20160814195158.GA19228@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
 <20160815075301.GD6359@kroah.com>
 <8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>
 <20160816201908.GB10132@kroah.com>
In-Reply-To: <20160816201908.GB10132@kroah.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [172.16.142.231]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Date: Wed, 17 Aug 2016 11:54:56 +0000
From: Sona Sarmadi <sona.sarmadi@enea.com>
Reply-To: oss-security@lists.openwall.com
Subject: RE: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>


> > > You can _always_ just apply the patch to your local tree, there's
> > > never a need to wait for me to get a kernel out.  That's the
> > > advantage of having the source for your systems :)
> > Yes, we can do that but sometimes the patches for newer kernels don't
> > apply cleanly on older versions.
> > There is always a risk that our home grown patches have undesired side
> > effects. We prefer your sign of approval on patches for older kernels
> > :)
>=20
> Heh, fair enough.  This fix is now in the kernels that were released today
> (4.7.1, 4.6.7, 4.4.18, and 3.14.76), hope that helps.
>=20
> greg k-h

Thanks a lot Greg, yes this helps :) I could apply  patch from linux-3.14.y=
 branch=20
to linux-3.12.y as well (the code looks similar).=20

//Sona


