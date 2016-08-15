X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["435" "Monday" "15" "August" "2016" "06:23:04" "+0000" "Sona Sarmadi" "sona.sarmadi@enea.com" "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>" "15" "RE: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081506:23:04" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        sona.sarmadi Aug 15   15/435   " thread-indent "\"RE: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<20160814195158.GA19228@kroah.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "<20160814195158.GA19228@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5537 invoked by uid 550); 15 Aug 2016 06:23:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5516 invoked from network); 15 Aug 2016 06:23:38 -0000
Thread-Topic: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
Thread-Index: AQHR9mMu6T2Sm46tbEqKj3Unx9zBu6BIvFQAgADPg+A=
Message-ID: <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
 <20160814195158.GA19228@kroah.com>
In-Reply-To: <20160814195158.GA19228@kroah.com>
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
Date: Mon, 15 Aug 2016 06:23:04 +0000
From: Sona Sarmadi <sona.sarmadi@enea.com>
Reply-To: oss-security@lists.openwall.com
Subject: RE: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

> > This vulnerability is currently only fixed in mainline kernels (4.7 &
> > 4.8). Does anyone know if there is any work ongoing to backport this
> > fix to the  older versions?
>=20
> I just added the fix for this issue to the stable kernel queues and it wi=
ll
> show up in the next stable releases, in about 2 days after it passes all =
of
> the needed review.
>=20
> Hope this helps,
>=20
> greg k-h

Great, thanks, this helps :)
