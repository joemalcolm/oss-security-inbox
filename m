X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4376" "Thursday" "22" "August" "2019" "11:59:15" "+0100" "John Haxby" "john.haxby@oracle.com" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "114" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082210:59:15" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        john.haxby@o Aug 22  114/4376  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<20190822093122.GQ6086@suse.de>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5518 invoked by uid 550); 22 Aug 2019 10:59:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5500 invoked from network); 22 Aug 2019 10:59:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : date : references : to : in-reply-to :
 message-id; s=corp-2019-08-05;
 bh=XvXWTdQ4mQoeDveh3T+xYJsz7W/UYaeSuf+AKvrCEuk=;
 b=bAhZdYAZmYy+7ds38rnZnhWFcpdbdhjUYvNzxHB+2ZYJIVP3m+rPRnjHswFQ4BEYqH8s
 AhQk/8yMZCb/bok0g+M0R3qXpDSBt3AuLF97mys641z6ipqVqetX8VM3RhpKTMylbzBK
 pp9PFbH6aLecRggCtpmubQFDUGXO+oxsXnOPaHLR25m4FqkeKiQ1KYyHrZ4VlBhNCzzf
 p7QJzjZ2vq1n98wAmFxfcIJ0l5Etyi9/c30pnDBMGxRjrBqjpiK4pxpmP7CNNKu8JF5e
 kxnMG9hjVuXmUe/eOpqr8EtoA+csFKsovPg5sn3n5NdwhBb3Jefvwt8r670/ACoFPgCd 9A== 
Content-Type: multipart/signed;
	boundary="Apple-Mail=_58B919A0-A418-471E-8ED1-BBDE0AFF3118";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
In-Reply-To: <20190822093122.GQ6086@suse.de>
Message-Id: <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908220119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908220119
Date: Thu, 22 Aug 2019 11:59:15 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

--Apple-Mail=_58B919A0-A418-471E-8ED1-BBDE0AFF3118
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 22 Aug 2019, at 10:31, Marcus Meissner <meissner@suse.de> wrote:
>=20
> On Thu, Aug 22, 2019 at 10:04:42AM +0100, John Haxby wrote:
>>=20
>>=20
>>> On 20 Aug 2019, at 19:20, Andrey Konovalov <andreyknvl@gmail.com> wrote:
>>>=20
>>> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15216
>>>=20
>>> An issue was discovered in the Linux kernel before 5.0.14. There is a
>>> NULL pointer dereference caused by a malicious USB device in the
>>> drivers/usb/misc/yurex.c driver.
>>>=20
>>> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15217
>>>=20
>>> An issue was discovered in the Linux kernel before 5.2.3. There is a
>>> NULL pointer dereference caused by a malicious USB device in the
>>> drivers/media/usb/zr364xx/zr364xx.c driver.
>>>=20
>>> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15218
>>>=20
>>> An issue was discovered in the Linux kernel before 5.1.8. There is a
>>> NULL pointer dereference caused by a malicious USB device in the
>>> drivers/media/usb/siano/smsusb.c driver.
>>>=20
>>> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15219
>>>=20
>>> An issue was discovered in the Linux kernel before 5.1.8. There is a
>>> NULL pointer dereference caused by a malicious USB device in the
>>> drivers/usb/misc/sisusbvga/sisusb.c driver.
>>=20
>>=20
>> Are these even realistic?   If I'm going to leave malicious USB devices =
in the parking lot for mischief am I going to rely on the unknown victim ru=
nning a Linux distro with the requisite kernel modules or am I going to jus=
t drop a cheap and near-universal USB killer?
>>=20
>> If I'm going to be connecting the USB device to unguarded laptops myself=
 to crash them, as opposed to destroy them, why not just casually lean on t=
he power button for a few seconds?[1]
>>=20
>> Actually, this is the CVSS3 score for a laptop's power button: 4.6 (CVSS=
:3.0/AV:P/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H (Medium).   There isn't a vector f=
or a USB killer because there's no "A:P" (permanent loss).
>>=20
>> I'm not saying that these aren't bugs that should be fixed, far from it.=
  That's not the issue.  The issue is that, for example, PCI DSS requires f=
ixes for anything with a score >=3D 4.0 so we have endless end-users demand=
ing fixes for their servers which don't have even physical access or, indee=
d, physical presence.  It's not even demanding the fixes as they may alread=
y be fixed or simply not applicable because the affected driver isn't prese=
nt; it's the hours or days wasted verifying that the fix available or not p=
resent.[2]
>>=20
>>=20
>>=20
>> Frustrated of Lancashire, jch
>>=20
>>=20
>> [1] Some may remember the VAX 11/750 reset button.  In order to be able =
to use the serial console (usually a DECwriter) you had to have the key in =
which also enabled the reset button.   Before I put the VAX "Do Not Copy th=
is Key" key (yes, it fits all 750s) I pressed accidentally pressed the rese=
t button a couple of times just by propping myself up on the machine.  Spec=
tacularly bad design by today's standards.
>>=20
>>=20
>> [2] Full disclosure.  It's ultimately about me because it's me that even=
tually gets the "customer requires fix for CVE-2019-15216" :)
>=20
> In the past we have considered Denial Of Service only USB vulnerabilites =
as non-issues, as physical access
> can cause the same.

<nod>

>=20
> USB Vulnerabilities where you can achieve code execution by a malicious U=
SB device are something else though and in my opinion warrant a CVE.
>=20

I carefully didn't quote any of the UAF bugs -- those definitely do warrant=
 a CVE.   Null pointer dereference is a DoS.

jch

> Ciao, Marcus


--Apple-Mail=_58B919A0-A418-471E-8ED1-BBDE0AFF3118
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXV51gwAKCRBFC7t+lC+j
yIIFAPwKLsTjKWpqt51/cTfEvKSb4UDzGFWCSe+myWMZca62rgD/ep27HBBC2zTC
mSMa2IBnBFd8V9JOGuLgcVAfgz4b0sE=
=l/rU
-----END PGP SIGNATURE-----

--Apple-Mail=_58B919A0-A418-471E-8ED1-BBDE0AFF3118--
