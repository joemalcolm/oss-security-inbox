X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7373" "Monday" "24" "June" "2019" "18:08:55" "+0100" "John Haxby" "john.haxby@oracle.com" "<159D0B1B-83D0-4C1F-A91E-DA544F7F4C7E@oracle.com>" "215" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062417:08:55" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        john.haxby@o Jun 24  215/7373  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17732 invoked by uid 550); 24 Jun 2019 17:09:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17713 invoked from network); 24 Jun 2019 17:09:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : date : references : to : in-reply-to :
 message-id; s=corp-2018-07-02;
 bh=Z8eu8t5sygKkWsHriNoJZYxGQR4W5I/P9zkDLx4Fc6Y=;
 b=mBmVhMxtyrLbrxf7v4Bp0fdZfzyRSBv6FfgC0F6fSOSDDKx+TluTxcbBcDdh8jGXJz3U
 8Zf4thtCtJjp3mk9dDjRtzRpiVjXmnq4Q20MYCErV9feHZFbP6Xl3tyfgP94DgKpTxUC
 Yf86CTZ+PNzx5JHsi5YM78TkRPdERIDreb1QTYSn8GK6Kr5p9TLaytMz7D97kea9+Ca3
 wLR4h7bG/tJS9PZzJySUEAsqnltVR4AxF6vIaPw7VbpFCu1z9+EH1Waer7cuJog8Ho65
 s+PUxe5BAdMf97YcIqW2HNOctoa8LWTM/LEOHmh127hos3Ln2enrus3isGx/iOQUcTTo Xg== 
Content-Type: multipart/signed;
	boundary="Apple-Mail=_32EDA842-470C-477B-8C5E-62C71B4EF7BF";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de>
 <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
In-Reply-To: <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
Message-Id: <159D0B1B-83D0-4C1F-A91E-DA544F7F4C7E@oracle.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906240135
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906240136
Date: Mon, 24 Jun 2019 18:08:55 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

--Apple-Mail=_32EDA842-470C-477B-8C5E-62C71B4EF7BF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 24 Jun 2019, at 14:01, Dmitry Vyukov <dvyukov@google.com> wrote:
>=20
> On Mon, Jun 17, 2019 at 1:32 PM Marcus Meissner <meissner@suse.de> wrote:
>>=20
>> Hi,
>>=20
>>=20
>> On Sat, Jun 15, 2019 at 11:49:03AM -0400, Alex Gaynor wrote:
>>> Hi everyone,
>>>=20
>>> OSS-Fuzz is Google's project to provide continious large-scale fuzzing.
>>> Since it launched in 2016, it's found just shy of 3000 things it counts=
 as
>>> security bugs [0][1]. I'm not a developer of OSS-Fuzz (at Google), but =
I've
>>> helped several projects integrate with it.
>>>=20
>>> You can see that it's had some amazing success across a variety of proj=
ects
>>> -- I've written previously to this list about the things I thought made=
 it
>>> particularly effective working with ImageMagick and GraphicsMagick [2].
>>>=20
>>> Today I'd like to highlight what I see as a tremendous issue: very few =
of
>>> these security bugs ever has a CVE issued for it. This is probably due =
to a
>>> few factors, a) the relative difficulty of obtaining a CVE, b) the lack=
 of
>>> a human reporter who is interested in obtaining one for "credit" purpos=
es,
>>> c) the sheer number of bugs that we're talking about.
>>>=20
>>> CVEs are not important for their own sake. The true value is in all of =
the
>>> downstream processing that uses them as input: the Linux distributions =
that
>>> use them to figure out what fixes to backport, the docker security scan=
ners
>>> that look for vulnerable code on the system, the corporate
>>> threat-intelligence feeds, etc.
>>>=20
>>> A test of a random ImageMagick vulnerability against Ubuntu Xenial shows
>>> that it, indeed, continues to reproduce.
>>>=20
>>> This is in addition to the >100 security bugs OSS-Fuzz found and public=
ly
>>> disclosed due to hitting their disclosure deadline, and which still have
>>> not been fixed [3].
>>>=20
>>> I haven't analyzed any of these vulnerabilities for exploitability, and=
 I
>>> doubt anyone else has either.
>>>=20
>>> I do not have a solution to this problem. I wanted to raise awareness of
>>> it, in the hope that it would start a discussion which might come to a
>>> solution.
>>=20
>> So as this was not yet discussed, lets have it closer look at the gaps
>> in the workflow.
>>=20
>> (I am not going into the orthogonal approaches, like surface reduction,
>> mitigations, replacement etc.)
>>=20
>> "topic" vs "automation state"
>>=20
>>=20
>> Bugfinding:
>>=20
>> - Is manual to fully automated these days, and improving.
>>=20
>>  The fully automated bugfinding is a significant contributor to amount o=
f bugs.
>>=20
>> Bugfixing:
>>=20
>> - Largely manual. Some research in automation by DARPA et.al.
>>=20
>>=20
>>  This is a significant gap of the scale issues, automated bugfinding
>>  can easily overload opensource projects.
>>=20
>>=20
>> Security IR Tracking:
>>=20
>> CVE Allocation:
>>=20
>> - Mostly manual, some tool help at most.
>>=20
>>  Significant gap here (as you wrote).
>>=20
>>  This seems to be low hanging fruit... There is nothing stopping to
>>=20
>>  - allocate big CVE blocks to "automation sub-CNA"s
>>  - have a OSS-Fuzz / Syzkaller / whatever CNA doing automated CVE assign=
ments out of this block
>=20
> Hi,
>=20
> I see syzkaller come up already. Yes, syzbot (automated continuous
> kernel fuzzing) has the same problem: thousands of crashes, most don't
> have any security assessment (too expensive):
> https://syzkaller.appspot.com/upstream
> Besides the update problem, there is also bug fixing problem: loud
> CVEs attract lots of attention and gets fixed quickly, but require up
> to months of manual labor (per bug). "Just a use-after-free" may not
> get any attention, while being more harmful in the end. Even a WARNING
> (Linux kernel term for a non-fatal assertion) may be a VM info leak in
> the end.
>=20
> So what are community thoughts on automatic CVE assignment?
> That would definitely get some attention to these bugs by vendors
> (because that's open CVEs in their products then). And this should be
> implementable because both OSS-Fuzz and syzbot are automated enough
> already. However I afraid that these CVEs may be as automatically
> sorted into a trashcan then :)


Unfortunately there are people who runs scans to see what CVEs are fixed an=
d if all the known CVEs aren't fixed then they scream and shout.   It doesn=
't matter whether the CVE represents a viable exploit, it has to be fixed.

Yes, off-by-one errors, overflows and the like are all *potential* security=
 flaws, but by allocating a CVE for all those potential issues you're tryin=
g to turn CVEs into a bug database.

I'm looking at one here that says "allows local users to cause a denial of =
service (NULL pointer dereference) or possibly have unspecified other impac=
t".   That gets a CVSS score up in the stratosphere when, in this case, it'=
s a bug that a user would have to inflict on themselves provided they have =
the right hardware.   I know I'm over-simplifying this one, but it remains =
that the "unspecified other impact" is highly speculative, not to mention d=
ubious, and the DoS is not the total loss of service that the stratospheric=
 score indicates.

On the face of it, even a partial DoS is a security problem, but in this ca=
se the pre-requisites for exercising this particular bug would pretty much =
also categorise "rm -rf /*" as a security issue.

Automatically creating CVEs from fuzzer results is going to just mean that =
the real problems get passed by: a little thought needs to go into it first.

jch


>=20
>=20
>> Rating:
>>=20
>> - largely manual / partially automated, done by NVD and distributions se=
perately.
>>=20
>>  Could be automated by "type" by the fuzzer, similar to above.
>>=20
>>=20
>> Structured Vulnerability information storing:
>>=20
>> - Not really existing right now.
>>=20
>> - On top of CVE:
>>  - referencing reproducers
>>  - affected versions
>>  - ratings
>>  - referencing patches
>>=20
>>  These could be supplied / attached by automatisms in a automation CNA.
>>=20
>>=20
>> Distribution tracking / update preparation / packaging / QA :
>>=20
>> - done by distributions, largely manual to semi automatic.
>>=20
>>  With better structured upstream vulnerability information storage its a=
utomation
>>  could be improved.
>>=20
>>  Some thoughts are going betweenm distributions on sharing information /=
 load, but as this
>>  is a competition issue this might be hard.
>>=20
>> So main gaps I personally see:
>>=20
>> - bugfixing automation or help at least
>>=20
>> - (better) structured storage in a global database, either CVE or someth=
ing entirely new.
>>=20
>> Ciao, Marcus


--Apple-Mail=_32EDA842-470C-477B-8C5E-62C71B4EF7BF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXREDpwAKCRBFC7t+lC+j
yD07AP4pb521/otUrTAJFh3bvvt5mq2p53xzYdTcXkNQFM2LpAD/bxnbjkeC9V/C
u5X90C4PBMlpa8jt2Cr2v5UWR2KyCRo=
=P55B
-----END PGP SIGNATURE-----

--Apple-Mail=_32EDA842-470C-477B-8C5E-62C71B4EF7BF--
