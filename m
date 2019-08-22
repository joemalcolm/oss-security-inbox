X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1422" "Thursday" "22" "August" "2019" "19:17:34" "+0100" "John Haxby" "john.haxby@oracle.com" "<63686C1A-E1C5-4351-948B-EFAE6FBA616A@oracle.com>" "35" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082218:17:34" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        john.haxby@o Aug 22   35/1422  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<20190822135753.10d124a4@jabberwock.cb.piermont.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822135753.10d124a4@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3629 invoked by uid 550); 22 Aug 2019 18:18:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3605 invoked from network); 22 Aug 2019 18:18:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 content-transfer-encoding : mime-version : subject : date : references :
 to : in-reply-to : message-id; s=corp-2019-08-05;
 bh=KwhX1pR8PF9GcdHft8fX/LC7l0+cqoJ92bVy3Dte/v8=;
 b=AnT9U/7NB1BsZLy9kdBcpHsHs2uEENC7yVVrqTpASO34JdzAxl7VGNDHgMRXoAS5qNN7
 RsPj5UYkEwCpWuAuhLtXFKm1G3ju4mbjnfnJI+uOqmQm9MpWyvy4xUhkz42gN/OI7p/W
 eu57GWoJLJQXz1ABEQGXvNphFtxdn7JMVv3E5SlzwNeLEMBsfoqF1HLxddgjAK/dNtJI
 Ag5fYywSFV/fCbtOfcy06X8z9h/YgdJKigS2Gn+VnLUD/DIwD0KXz/yrFK5/vZ4kbi0u
 J10HP3e9ScCf/OMl+MJkGwbRDcvgE73EEvZ+9eoPd/CJuVK2wYqgM9zi/dppAS3TIA3o oQ== 
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
 <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
 <20190822135753.10d124a4@jabberwock.cb.piermont.com>
In-Reply-To: <20190822135753.10d124a4@jabberwock.cb.piermont.com>
Message-Id: <63686C1A-E1C5-4351-948B-EFAE6FBA616A@oracle.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9357 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=890
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908220160
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9357 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=953 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908220160
Date: Thu, 22 Aug 2019 19:17:34 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com



> On 22 Aug 2019, at 18:57, Perry E. Metzger <perry@piermont.com> wrote:
>=20
>> Are these [null pointer deref] even realistic?   If I'm going to leave m=
alicious
>> USB devices in the parking lot for mischief am I going to rely
>> on the unknown victim running a Linux distro with the
>> requisite kernel modules or am I going to just drop a cheap
>> and near-universal USB killer?
>=20
> Android phones run Linux. People routinely plug those phones in to USB
> charging stations in airports, on airplanes, at booths in public
> places, etc.
>=20

If I'm going to attack random devices I'm not going to do it with some rand=
om driver that may or may not be present on a phone.  And as this is a null=
 pointer reference we're talking about you plug the phone and and it reboot=
s so you won't do that more than once.   That's it, that's the limit of the=
 vulnerability.

If I'm going to go to the trouble of emulating a device so I can sneak it i=
nto a public charging point I'm not going to do it just to make a phone reb=
oot.  I'm going to pick a UAF vulnerability with an exploit that actually d=
oes something useful, something beyond just making the phone reboot.

Either that or I'm going to sneak in a USB killer and destroy the phones.

No matter what, emulating a device just to cause a null dereference is not =
CVE worthy.   If it is, then we need a CVE for power buttons on laptops and=
 phones.

jch

