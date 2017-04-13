X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4931" "Thursday" "13" "April" "2017" "08:32:38" "+0200" "Andrej Nemec" "anemec@redhat.com" "<646c39e1-31e9-0178-3fd2-54fae31b6559@redhat.com>" "145" "Re: [oss-security] CVE Request - XStream: DoS when unmarshalling void" "^Date:" nil nil "4" "2017041306:32:38" "[oss-security] CVE Request - XStream: DoS when unmarshalling void" (number mark "        anemec@redha Apr 13  145/4931  " thread-indent "\"Re: [oss-security] CVE Request - XStream: DoS when unmarshalling void\"\n") "<obtd6v$pv3$1@blaine.gmane.org>" ("<obtd6v$pv3$1@blaine.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1728 invoked by uid 550); 13 Apr 2017 06:32:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1710 invoked from network); 13 Apr 2017 06:32:52 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 817E3787F4
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 817E3787F4
References: <obtd6v$pv3$1@blaine.gmane.org>
Message-ID: <646c39e1-31e9-0178-3fd2-54fae31b6559@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <obtd6v$pv3$1@blaine.gmane.org>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="309Jpfs7qFitvjhJKoQ9STusqJIHf04Ec"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Thu, 13 Apr 2017 06:32:40 +0000 (UTC)
Date: Thu, 13 Apr 2017 08:32:38 +0200
From: Andrej Nemec <anemec@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - XStream: DoS when unmarshalling void
To: oss-security@lists.openwall.com

--309Jpfs7qFitvjhJKoQ9STusqJIHf04Ec
Content-Type: multipart/mixed; boundary="o4Qa7AglVesbuGIf1iEK2VnUIfipft3DP";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <646c39e1-31e9-0178-3fd2-54fae31b6559@redhat.com>
Subject: Re: [oss-security] CVE Request - XStream: DoS when unmarshalling void
References: <obtd6v$pv3$1@blaine.gmane.org>
In-Reply-To: <obtd6v$pv3$1@blaine.gmane.org>

--o4Qa7AglVesbuGIf1iEK2VnUIfipft3DP
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello J=C3=B6rg,

Unfortunately, CVE assignments are not done through this list anymore.
You need to visit [1] and request a CVE by filing out the form. Could
you please look at it and let the list know about the assigned CVE?

Thanks!

Best Regards,

[1] https://cveform.mitre.org/

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA

On 04/03/2017 01:55 PM, J=C3=B6rg Schaible wrote:
> Hello,
>
> XStream is a Java library basically to marshal Java objects into XML and=
=20
> back.
>
> Huawei engineers reported a reproducible crash of the Java VM (DoS) feedi=
ng=20
> XStream with a specially crafted XML (note, that Stream also supports JSO=
N,=20
> that one can be used equally).
>
> Issue Description
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The processed stream at unmarshalling type contains type information to=20
> recreate the formerly written objects. XStream creates therefore new=20
> instances based on these type information. The crash occurrs if this=20
> information advices XStream to create an instance of the primitive type=20
> 'void'. This situation can only happen if an attacker was able to manipul=
ate=20
> the incoming data, since such an instance does not exist.
>
> Steps to Reproduce:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The simplest way to demonstrate the problem is with this snippet:
>
> XStream xstream =3D new XStream();
> xstream.fromXML("<void/>");
>
> If XStream is configured to read JSON, the equivalent line is:
>
> xstream.fromXML("{'void':null}");
>
> However, the problematic type information can be injected at any position=
 in=20
> the provided stream, in XML just by adding a class attribute:
>
> xstream.fromXML("<string class=3D'void'>Hello, world!</string>");
>
> Impact:
> =3D=3D=3D=3D=3D=3D=3D
> The vulnerability may allow a remote attacker to cause a crash on the tar=
get=20
> system resulting in a denial of service only by manipulating the processe=
d=20
> input stream.
>
> Affected Versions:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Currently all versions until and including version 1.4.9 are affected, bu=
t=20
> workarounds exist.
>
> Workarounds:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> XStream contains since version 1.4.7 a security framework to prevent an=20
> attack described in CVE-2013-7285. This framework can also be used to=20
> suppress the current vulnerability by setting:
>
> xstream.denyTypes(void.class, Void.class);
>
> Users of older XStream releases can register an own converter for the 'vo=
id'=20
> type, that also protects against this attack:
>
> xstream.registerConverter(new Converter() {
>   public boolean canConvert(Class type) {
>     return Void.class =3D=3D type || void.class =3D=3D type;
>   }
>   public Object unmarshal(HierarchicalStreamReader reader,=20
> UnmarshallingContext context) {
>     throw new ConversionException("Type void cannot have an instance");
>   }
>   public void marshal(Object source, HierarchicalStreamWriter writer,=20
> MarshallingContext context) {
>     throw new ConversionException("Type void cannot have an instance");
>   }
> }, XStream.PRIORITY_VERY_HIGH);
>
> Regards,
> J=C3=B6rg Schaible
>
> Maintainer of XStream.
>


--o4Qa7AglVesbuGIf1iEK2VnUIfipft3DP--

--309Jpfs7qFitvjhJKoQ9STusqJIHf04Ec
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJY7xuGAAoJEIkERKHVe23aJwsP/1orVeQG5ZeD9b2YtlhgSoRT
ohwXMeBV2EYuLy7N9yi7DcT0nzYMyMWtx50GR17oP3ESe6owFF2NLwg0e6dXsSn+
inZiWBSQTbjPqOOxlRXGRsRi7NX0CROzmLoehxPJYV5e5kVk9GQ94K0iO0TAW5OI
i9yOEbjgQQgKXT1zeHd3PhXqOLrqXajawKltYwia7Mfj2wHezDL406DlqpbYC66O
yUYRiGlpv+4VsKeYnhZfGjDS5yc7f6M/teg3a8WlGnroXp662KVJcPncPIfICD+5
nqTVYoGg9pioZawgE/ScYizsHXI26fct2oXy8ciGdN701U5EeIwB62TZWB2QGhom
nxr5YJ51q2qcJOLzoxr4ddfQ0+eRGbKtRV8KXtcMy64BdEE0dsyyKqvG75h3nkNJ
Wh+mVepzTAIJHMgWXDPqtbL3x8Oxh+qFTaAj7gqQV4mViCCKIv1IzP8vB1Esecn4
Zlfex2HF6YVeB4XwR1j89WF8R65ubW2lBq5cY/j24qzkpJJ/kWkckIMYmkBsswRl
0JqP/mNIETwgazkZEA4apmhaPj96OiUfSUx3X6OkQ7iCb7QAL+uwfPcbXzVZ4Vlj
X7MpYGvFUuJlklQ7K33ulCx/c9r1LBsA0MnMLCIKlp/ph8l/mc6fT8ufelRvIgkZ
aY6dqMWbP/vNuNNzeynK
=1QIp
-----END PGP SIGNATURE-----

--309Jpfs7qFitvjhJKoQ9STusqJIHf04Ec--
