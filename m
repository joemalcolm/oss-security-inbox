X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2704" "Thursday" "11" "July" "2019" "17:31:38" "+0100" "John Haxby" "john.haxby@oracle.com" "<4477D0BC-DB12-4BE7-9CF6-90F09236EF99@oracle.com>" "70" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019071116:31:38" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        john.haxby@o Jul 11   70/2704  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<alpine.GSO.2.20.1907111050290.8466@scrappy.simplesystems.org>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" "<alpine.GSO.2.20.1907111050290.8466@scrappy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32400 invoked by uid 550); 11 Jul 2019 16:31:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32381 invoked from network); 11 Jul 2019 16:31:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : message-id :
 content-type : mime-version : subject : date : in-reply-to : cc : to :
 references; s=corp-2018-07-02;
 bh=i86x9jQOFkLWJHuBA6NEYKGiSSj5t8X9QVhYjIcNmO8=;
 b=SuRs4/Dt8mNTAj2si6rLuS3P6nCVFbIaHpjfrLMUm8TBK0QBbJulaVfPS2su+psOnZ7q
 IY6ASojq8ZqdD8TuAfsh3zCk0Crw7sSBRvB8eS5uUiQd5JtvGYa1Wky7vasudLQhe/9e
 6xai/Bau22GSr1EpxxzRY1g1r44QAnLGyPJwlOzHw1kE7255N+Lkm0+oSPWirCFqxXGO
 3OdICblY0ygENpnpl/vefa2eb48wclu+wzYBN+F0uRxKzqEDnfJxgdpneYveMcUBizCy
 SXHyOLwp4imaXtTL5VsEI5xdrZQcLtsuW+inKRyiJ7vlZ643fDqw4dBxK+NmpijAUWUk 6A== 
Message-Id: <4477D0BC-DB12-4BE7-9CF6-90F09236EF99@oracle.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_6749565B-E0AE-47ED-A814-3BEE9E2A5058";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
In-Reply-To: <alpine.GSO.2.20.1907111050290.8466@scrappy.simplesystems.org>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
 <20190709113036.0f12d057@jabberwock.cb.piermont.com>
 <9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
 <20190711093326.328948dc@jabberwock.cb.piermont.com>
 <de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
 <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
 <alpine.GSO.2.20.1907111050290.8466@scrappy.simplesystems.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9314 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907110184
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9314 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907110184
Cc: Malte Kraus <malte.kraus@suse.com>
Date: Thu, 11 Jul 2019 17:31:38 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: oss-security@lists.openwall.com

--Apple-Mail=_6749565B-E0AE-47ED-A814-3BEE9E2A5058
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 11 Jul 2019, at 16:57, Bob Friesenhahn <bfriesen@simple.dallas.tx.us> =
wrote:
>=20
> On Thu, 11 Jul 2019, Perry E. Metzger wrote:
>>=20
>> It seems like a bad idea.
>>=20
>> If one wants to have mechanisms by which the operating system can
>> allow unprivileged programs to temporarily assume privileges (which
>> is a frequent idea in security), then they should be carefully
>> designed and part of the OS, rather than creating an ad hoc facility
>> via a subsystem that isn't intended for it. There are good ways to do
>> that, like capabilities.
>=20
> I agree.  It is rather common that more than one file needs to be modifie=
d at one time.  If a more complex mechanism like a sqlite3 database needs t=
o be updated, then the implementation of sqlite3 will expect to be able to =
access files in a normal way and it will expect to be use all the abilities=
 it normally uses.  It is rather common that atomic operations are required=
, locking is required, the ability to link/rename files is required, and th=
at synchronization of file content and directories is required.
>=20
> In addition to the security concerns, it is difficult to see how a virtua=
l filesystem intended for use by simplistic GUI file managers will satisfy =
common administrative requirements.
>=20

This bit us recently with a graphical application that needed to run as roo=
t (I forget what for).   It also struck me that I often run gparted (don't =
ask why :)) which needs to dink with disks.

Obviously one could split the process into its graphical half and its messi=
ng-around-with-disks half but it's not clear to me how the graphical half w=
ould handle authentication[*] for the process that needs to run as root.   =
There are any number of administrative tasks that will need to be redesigne=
d to cope with this change.

jch


[*] Yes, you could, for example, use $SUDO_USER/UID/etc but you can bet tha=
t that will throw up all kinds of security problems that we don't have toda=
y.


--Apple-Mail=_6749565B-E0AE-47ED-A814-3BEE9E2A5058
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXSdkagAKCRBFC7t+lC+j
yDoyAP9sqywFBXRdOoK8gGJTHopmIVI3tAgLR51LIgO5hV4InwEAqljNRvLi8qSu
ouVlePTpuryJvhx1eFisaRMjinUNJcQ=
=sA9R
-----END PGP SIGNATURE-----

--Apple-Mail=_6749565B-E0AE-47ED-A814-3BEE9E2A5058--
