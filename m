X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3073" "Tuesday" "12" "January" "2021" "15:23:16" "+0000" "John Haxby" "john.haxby@oracle.com" "<93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>" "72" "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil "1" "2021011215:23:16" "[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" (number mark "U       john.haxby@o Jan 12   72/3073  " thread-indent "\"Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic\"\n") "<X/1YIT59FZ7clijT@kroah.com>" ("<CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>" "<X/1YIT59FZ7clijT@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31808 invoked by uid 550); 12 Jan 2021 15:23:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31790 invoked from network); 12 Jan 2021 15:23:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : date : references : to : in-reply-to :
 message-id; s=corp-2020-01-29;
 bh=J5ojGri6zoYck9YvhQlNh3J9Q6AHGkMiU6BsW9IYZMc=;
 b=cYpzzY4sDpk9X3F4BLk6TegVV24c6FuGPrHUzwn4fZKBojnZVFYVPUwF1yJAQmvv8CG4
 pjUTrJpJ32PNsgeDjjnYQ3GdKs5x6rYPrrQoAZ/8Dbby0yNjkSQTZKX9U7Sb4Z0BPYJd
 CPnl8Jn4olTgjiTRpXfpgnDGtFW8l5NhC9N1hnpp70z9r6JfCJlgJwG5J3dEUr7oPku1
 HpqfKykOORc7K97hWNOGIne9eVOioSIF3V98OzXMHm+3i2f173uxq7oX0tjxi0YaGcr5
 49DF5LxT7ITy1t2HYh4UcWcNjXcyM3hNnJLH1wM4i/VqiydXxpKIvC4zDW/XMKpHFP14 WQ== 
From: John Haxby <john.haxby@oracle.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_65682164-6DBC-4B7E-B734-4527D55B5EF8";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.40.0.2.32\))
Date: Tue, 12 Jan 2021 15:23:16 +0000
References: <CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>
 <X/1YIT59FZ7clijT@kroah.com>
To: oss-security@lists.openwall.com
In-Reply-To: <X/1YIT59FZ7clijT@kroah.com>
Message-Id: <93325B6B-DDAD-492B-9954-9CE8A372E086@oracle.com>
X-Mailer: Apple Mail (2.3654.40.0.2.32)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9861 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 mlxlogscore=999 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101120089
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9861 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 clxscore=1034 impostorscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101120089
Subject: Re: [oss-security] CVE-2021-20177 kernel: iptables string match rule
 could result in kernel panic

--Apple-Mail=_65682164-6DBC-4B7E-B734-4527D55B5EF8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 12 Jan 2021, at 08:04, Greg KH <greg@kroah.com> wrote:
>=20
> I still do not understand why you report issues that are fixed over a
> year ago (October 2019) and assign them a CVE like this.  Who does this
> help out?  And what about the thousands of other issues that are fixed
> in the kernel and not assigned a CVE like this, are they somehow not as
> important to your group?
>=20
> What determines what you want to give a CVE to and what you do not?


I think I can answer that.   There's nothing technical going on here, it's =
down to the behaviour of the end users of enterprise systems.

A lot of those people have a hard time understanding that they do actually =
want bug fixes and an even harder time understanding that they need to actu=
ally do something to install those fixes.   (I was once asked if I could fi=
x a problem without changing anything, anything at all when the fix was a o=
ne-off chmod.)   A CVE number gets attention: think of it as getting hold o=
f the customer by the lapels and going nose-to-nose to explain in words of =
one syllable they if they don't update their systems that they will crash a=
nd they will get hacked.

Ooh, no, they say, we can't possibly take the risk of updating our systems.=
  Suppose something goes wrong?   Sheesh.   Suppose, instead, someone comes=
 along and sees a known, fixed bug is unfixed and uses that to trash your s=
ystems.    Or that you've got a bug that crashes the machine once a week fo=
r which there's a fix.   But, no, apparently the mythical risk of a tested =
update vs the actual quantifiable risk of leaving the bug unfixed is so gre=
at that they'd rather take the real, quantifiable risk.   I suppose that's =
understandable, after a fashion, even though actual regressions are quite r=
are.

If you present a customer with a CVE number (with or without a score) then =
they have SLAs which will ensure that that fix gets applied.

This is a long way from ideal -- people need to wake up and smell the coffe=
e and get around to the idea that a system that has not been updated in thi=
rteen and a half years (not this one, another one) is not acceptable and th=
ey need to get on and have an update system in place that will, dammit, kee=
p them up to date.   Until they do, a CVE is the best way of getting attent=
ion.

Not that I'm bitter or anything.

jch

--Apple-Mail=_65682164-6DBC-4B7E-B734-4527D55B5EF8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCX/2+5AAKCRBFC7t+lC+j
yIgGAP9rgu9kpuQ/XO1FJpZu1idquKDvYn2ZEh/kXOQTZx9rVgEAj/P0B8I+hnJ8
vcDiahUCyRIOm+uFw04pgK55Xn4B4UI=
=jrpn
-----END PGP SIGNATURE-----

--Apple-Mail=_65682164-6DBC-4B7E-B734-4527D55B5EF8--
