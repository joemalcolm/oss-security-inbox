X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1838" "Tuesday" "12" "January" "2021" "19:10:07" "+0000" "John Haxby" "john.haxby@oracle.com" "<8B21CEC4-A114-4E09-AE2F-5FF64DC9989F@oracle.com>" "54" "Re: [oss-security] CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy offload" nil nil nil "1" "2021011219:10:07" "[oss-security] CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy offload" (number mark "U       john.haxby@o Jan 12   54/1838  " thread-indent "\"Re: [oss-security] CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy offload\"\n") "<20210112190134.585e5a60@suse.de>" ("<20210112190134.585e5a60@suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-28374: Linux SCSI target (LIO) unrestricted copy offload" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3643 invoked by uid 550); 12 Jan 2021 19:12:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3622 invoked from network); 12 Jan 2021 19:12:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : date : references : to : in-reply-to :
 message-id; s=corp-2020-01-29;
 bh=1CDY86p2pzWQdCfjFRgWNHXIxRoIm1httEPso/18QFk=;
 b=RKbd4v1aAuJIsyv2gzlEdRJvXPj7CPMJLszMUlEC6yH4akRis2bBJkfTpI/V8D7vfysp
 6Rck4q/x2gfC9v6dXWUL5s7oBXYlWGRD71guHc8IX39DChekTJmRSHiqGFLxsELkN7nH
 wgkNF/MZ/R9p/7Fw2FaXOZXmEVLJj4Hd5Z8tw9l2OYXxzqfH1agPedxWgQi85qQZhba+
 iq6AZUCXEORKwnk07T7nGoqxdIxXK1xvo6Do0zb5gC8qlVDWseeRB36Xsdn9peizGx2s
 iBUnFCB4S3kQl+SB94NzKWXoYoKBySIB7Ybt0QHWuG3slrFCrmqsCK8aejYZCfFwRrdU YQ== 
From: John Haxby <john.haxby@oracle.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_88B6A466-563D-4344-A99D-2CCA4625A37A";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.40.0.2.32\))
Date: Tue, 12 Jan 2021 19:10:07 +0000
References: <20210112190134.585e5a60@suse.de>
To: oss-security@lists.openwall.com
In-Reply-To: <20210112190134.585e5a60@suse.de>
Message-Id: <8B21CEC4-A114-4E09-AE2F-5FF64DC9989F@oracle.com>
X-Mailer: Apple Mail (2.3654.40.0.2.32)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9862 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 adultscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101120111
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9862 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 clxscore=1034 impostorscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101120111
Subject: Re: [oss-security] CVE-2020-28374: Linux SCSI target (LIO)
 unrestricted copy offload

--Apple-Mail=_88B6A466-563D-4344-A99D-2CCA4625A37A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 12 Jan 2021, at 18:01, David Disseldorp <ddiss@suse.de> wrote:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> =3D=3D Subject:     Linux SCSI target (LIO) unrestricted copy offload
> =3D=3D
> =3D=3D
> =3D=3D CVE ID#:     CVE-2020-28374
> =3D=3D
> =3D=3D Versions:    Linux: v3.12 and later
> =3D=3D              tcmu-runner: v1.3.0 and later
> =3D=3D
> =3D=3D Summary:     An attacker with access to a LUN and knowledge of Uni=
t Serial
> =3D=3D              Number assignments can read and write to any LIO back=
store,
> =3D=3D              regardless of SCSI transport settings.
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
>=20

David -- did you mean to attach the patches you posted to linux-distros?

jch

--Apple-Mail=_88B6A466-563D-4344-A99D-2CCA4625A37A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCX/30DwAKCRBFC7t+lC+j
yHxDAP9hrny5+XkATlK/9Y2496KbR6CB+gPrlk4/mdEhq1QXrwEAsIVFUu3uStuM
z6fnKdp27lAZKZ9hJp+ssg6h2GrfZ40=
=780T
-----END PGP SIGNATURE-----

--Apple-Mail=_88B6A466-563D-4344-A99D-2CCA4625A37A--
