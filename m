X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3093" "Thursday" "16" "April" "2015" "17:18:57" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55304361.20305@redhat.com>" "73" "Re: [oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster" nil nil nil "4" "2015041623:18:57" "[oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster" (number mark "        kseifried@re Apr 16   73/3093  " thread-indent "\"Re: [oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster\"\n") "<20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>" ("<20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22349 invoked by uid 550); 16 Apr 2015 23:19:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22329 invoked from network); 16 Apr 2015 23:19:10 -0000
Message-ID: <55304361.20305@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>
In-Reply-To: <20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="VrCksnGBEiePDXMSlKwfK82SluFfC908f"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Thu, 16 Apr 2015 17:18:57 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Arbitary Code Execution in Apache
 Spark Cluster
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>

--VrCksnGBEiePDXMSlKwfK82SluFfC908f
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

You should probably CC security@apache.org if you're going to pass the
decision to them rather then relying on a third party to do it (e.g.
positive control vs. "well I hope someone told them").

On 04/16/2015 04:05 PM, cve-assign@mitre.org wrote:
>> http://codebreach.in/blog/2015/03/arbitary-code-execution-in-unsecured-a=
pache-spark-cluster/
>=20
> As far as we can tell, the essence of your report is related to:
>=20
>   http://spark.apache.org/docs/latest/configuration.html
>   Property Name: spark.authenticate
>   Default: false
>   Meaning: Whether Spark authenticates its internal connections.
>=20
> If a user downloads spark-1.3.0.tgz, they will find a README.md with:
>=20
>   Please refer to the [Configuration guide]
>   (http://spark.apache.org/docs/latest/configuration.html)
>   in the online documentation for an overview on how to configure
>   Spark.
>=20
> Also, because the product is advertised as a "general-purpose cluster
> computing system," we think that downloaders would typically have some
> experience in system or network administration, and should be able to
> recognize whether a trusted network exists for all "internal
> connections."
>=20
> It's conceivable that the documentation should be expanded to further
> discuss the risks of the default spark.authenticate value. MITRE is
> not going to assign a CVE ID for this. It is a judgment call for the
> upstream vendor. Because the upstream vendor has a process for
> assigning CVE IDs, we feel it would be simplest and best here to use
> that process, even if it is often not used in cases of publicly known
> vulnerabilities. See the security@apache.org address on the
> http://www.apache.org/security/committers.html page. It's their
> decision on how to proceed.
>=20
>=20

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--VrCksnGBEiePDXMSlKwfK82SluFfC908f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVMENhAAoJEBYNRVNeJnmTbqkP/022b+WjO+5TLaITApt8Vb/k
Xf1v6qIg5YwkAS+rXgtD0bi7VR1X/sXz1evM6vmubh9Ub9D3fLP2M9T58zAvWn9K
PkApoz8EjdsRRwADV7CEJNEKmKQbfQXarE1bUR3shhyWZYLBldyEhfQ6u685NToN
V8q8rhE67EePE5kO/NDbMYDRQStoW54Bz0HA3Q5vaKHtRtkKAbOqrLKq13segFDc
CdTi2th4W3vNVKmCVSkA80YQZXJdoPfKYa7DnBSuSywsGOLbElJP/PyKYBK3HO38
usYmqCxdS0ayl3s/H+jMRL8o5np32S9MdCmi3Kl4ewKZE0+rE7NGfKW7Ejejhqy2
hddKeS9fOCBjsH24Msxi4c8Nc/rrfMaOhDnIMneyMTeciHU/fL79gX8W9M6Wc6KW
fycxEh53Qsxa1nskdLcME4iTghyOAP02het48khTLQg5Vl8qCs1VGTkqDi3nnChn
30WzZCzK/M2u/2Bx4vEQtLS9jYEB+SBVhjmeoXv7uUJ03EgSzetxf2Alh6Lgg/C6
dirCCSRzYPz0M1PxE8Tn8GwyJfD5waqpttBs4dZX375Yc03A5Gxg4+lohp+yDlX1
L/9nwXpsX+5Bi2wXUGwBpwKtuwtaLrUGxT0Snovgi73hKDdUKoSXuxFQ4x1VbWt7
ZX/wu2XcVCw+OPtDIKgf
=k+EV
-----END PGP SIGNATURE-----

--VrCksnGBEiePDXMSlKwfK82SluFfC908f--
