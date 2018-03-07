X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2059" "Wednesday" "7" "March" "2018" "23:33:37" "+0100" "Patrick Forsberg" "fors@cert.sunet.se" "<fe452830-1090-7f3d-f740-df1ed6f2d9ee@cert.sunet.se>" "59" "Re: [oss-security] memcached UDP amplification attacks" "^Date:" nil nil "3" "2018030722:33:37" "[oss-security] memcached UDP amplification attacks" (number mark "        fors@cert.su Mar  7   59/2059  " thread-indent "\"Re: [oss-security] memcached UDP amplification attacks\"\n") "<D8D24F8C-3644-4DB1-960A-C418453F7F2C@akamai.com>" ("<20180302124428.440b9c3b@pc1>" "<CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>" "<CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>" "<20180307110950.4eb041a8@redhat.com>" "<D8D24F8C-3644-4DB1-960A-C418453F7F2C@akamai.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1660 invoked by uid 550); 8 Mar 2018 08:41:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5482 invoked from network); 7 Mar 2018 22:33:54 -0000
References: <20180302124428.440b9c3b@pc1>
 <CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>
 <CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>
 <20180307110950.4eb041a8@redhat.com>
 <D8D24F8C-3644-4DB1-960A-C418453F7F2C@akamai.com>
Message-ID: <fe452830-1090-7f3d-f740-df1ed6f2d9ee@cert.sunet.se>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <D8D24F8C-3644-4DB1-960A-C418453F7F2C@akamai.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Bayes-Prob: 0.005 (Score 0, tokens from: outbound, outbound-sunet-se:default, sunet-se:default, base:default, @@RPTN)
X-CanIt-Geo: ip=89.45.232.214; country=SE; latitude=59.3247; longitude=18.0560; http://maps.google.com/maps?q=59.3247,18.0560&z=6
X-CanItPRO-Stream: outbound-sunet-se:outbound (inherits from outbound-sunet-se:default,sunet-se:default,base:default)
X-Canit-Stats-ID: 09VjaxGUG - 66a6c6b67bd5 - 20180307
X-CanIt-Archive-Cluster: PfMRe/vJWMiXwM2YIH5BVExnUnw
Received-SPF: neutral (e-mailfilter01.sunet.se: 89.45.232.214 is neither permitted
	nor denied by domain fors@cert.sunet.se)
	receiver=e-mailfilter01.sunet.se; client-ip=89.45.232.214;
	envelope-from=<fors@cert.sunet.se>; helo=smtp1.sunet.se;
	identity=mailfrom
X-Scanned-By: CanIt (www . roaringpenguin . com)
Date: Wed, 7 Mar 2018 23:33:37 +0100
From: Patrick Forsberg <fors@cert.sunet.se>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] memcached UDP amplification attacks
To: oss-security@lists.openwall.com

On 2018-03-07 22:57, Seaman, Chad wrote:

> Tomas,
>
> You=E2=80=99re not wrong, that was a typo in the blog.
>
> Regards,
> Chad
On the other hand I think the blog is wrong. (Just reading the protocol
specs)

The default maximum size of an item is 1M, but you can easily request
more than one item using the gets command.
=C2=A0=C2=A0 gets <key>*\r\n
where <key>* is one or several keys separated by whitespace.
A key is a text string that must not include control characters or
whitespace. The maximum length of a key is 250 characters but I don't
think there's a minimum size so one byte keys should be fine.

/Patrick
>
> On 3/7/18, 5:10 AM, "Tomas Hoger" <thoger@redhat.com> wrote:
>
>     On Fri, 2 Mar 2018 21:42:30 -0700 Kurt Seifried wrote:
>=20=20=20=20=20
>     > I have assigned CVE-2018-1000115 to this issue:
>     >=20
>     > Memcached version 1.5.5 contains an Insufficient Control of Network
>     > Message Volume (Network Amplification, CWE-406) vulnerability in the
>     > UDP support of the memcached server that can result in denial of
>     > service via network flood (traffic amplification of 1:50,000 has be=
en
>     > reported by reliable sources). This attack appear to be exploitable
>     > via network connectivity to port 11211 UDP. This vulnerability
>     > appears to have been fixed in 1.5.6 due to the disabling of the UDP
>     > protocol by default.
>=20=20=20=20=20
>     Minor nitpick, the description mentions 1:50,000 ratio, apparently
>     based on the information in the following reference:
>=20=20=20=20=20
>     > https://blogs.akamai.com/2018/03/memcached-fueled-13-tbps-attacks.h=
tml
>=20=20=20=20=20
>     where it's mentioned as:
>=20=20=20=20=20
>     """
>     Worse, memcached can have an amplification factor of over 50,000,
>     meaning a 203 byte request results in a 100 megabyte response.
>     """
>=20=20=20=20=20
>     However, 200 * 50k =3D 10m, not 100m.  Wonder if I'm doing my math wr=
ong.
>=20=20=20=20=20
>     --=20
>     Tomas Hoger / Red Hat Product Security
>=20=20=20=20=20
>


