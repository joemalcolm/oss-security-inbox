X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5145" "Wednesday" "21" "August" "2019" "15:03:20" "+0000" "Vogl, Todd" "ToddVogl@alliantenergy.com" "<5ecdbecd29a54a5c859fb5020914d178@MSNWINEXCH2.ALI.PRI>" "103" "RE: [oss-security] CVE-2018-15664: docker (all versions) is vulnerable to a symlink-race attack" nil nil nil "8" "2019082115:03:20" "[oss-security] CVE-2018-15664: docker (all versions) is vulnerable to a symlink-race attack" (number mark "U       ToddVogl@all Aug 21  103/5145  " thread-indent "\"RE: [oss-security] CVE-2018-15664: docker (all versions) is vulnerable to a symlink-race attack\"\n") "<20190528042345.epozq4a25hwiduhx@yavin>" ("<20190528042345.epozq4a25hwiduhx@yavin>") nil nil nil nil nil nil nil "RE: [oss-security] CVE-2018-15664: docker (all versions) is vulnerable to a symlink-race attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30412 invoked by uid 550); 21 Aug 2019 15:16:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22307 invoked from network); 21 Aug 2019 15:03:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliantenergy.com; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=alliantenergy_12_2014;
 bh=QriKmEa94kFQLJrHLNe12Mx3zAqPeaH7QI/hNLXEkSM=;
 b=chH+wuCkaOaEbfSIsYdERos4lJqKUmyQ7L89YzK0Vzdr+39N273hGF22oBLfvbYcOQUr
 GscA3u7TRXEG91SRVTMjyhzKEUBrvGIKJ+odAIvsHdJ1KXLhP6XJ2KFGcjSS/zCkk9ta
 dDgMj2A9IJFX+0pXrhV/jkbei1kfIiqczkH2j95EVbJcWIkJGQs/4OhrX88QbqOXcIVe
 nLJFbriAV6o0/ThGoBTDJzQb3jlOH9rcccqXLGDgznG8qavQ6ufKWa5Jrqy3x8giYbsd
 C1wXQl+vQ+ZhD+S8p88UDO0dVXtLZF0pUMhoD25whmCR3iCAm2V1P72uS2Pt6O58vSQW tA== 
From: "Vogl, Todd" <ToddVogl@alliantenergy.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE-2018-15664: docker (all versions) is
 vulnerable to a symlink-race attack
Thread-Index: AQHVFQ2v78QVp928n0WAH61+z83V/KcGOHAw
Date: Wed, 21 Aug 2019 15:03:20 +0000
Message-ID: <5ecdbecd29a54a5c859fb5020914d178@MSNWINEXCH2.ALI.PRI>
References: <20190528042345.epozq4a25hwiduhx@yavin>
In-Reply-To: <20190528042345.epozq4a25hwiduhx@yavin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.69.242]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-21_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908210160
Subject: RE: [oss-security] CVE-2018-15664: docker (all versions) is
 vulnerable to a symlink-race attack



-----Original Message-----
From: Aleksa Sarai [mailto:cyphar@cyphar.com]=20
Sent: Monday, May 27, 2019 11:25 PM
To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-15664: docker (all versions) is vulnerable=
 to a symlink-race attack

[This is an external email. Be cautious with links, attachments and respons=
es.]

**********************************************************************
There is no released Docker version with a fix for this issue at the time o=
f writing. I've submitted a patch upstream[1] which is still undergoing cod=
e review, and after discussion with them they agreed that public disclosure=
 of the issue was reasonable. Since the SUSE bug report contains exploit sc=
ripts[2], I've attached them here too.

This attack was discovered by myself (Aleksa Sarai), though T=F5nis Tiigi d=
id mention the possibility of an attack like this in the past (at the time =
we thought the race window was to small to exploit). In addition, you could=
 see this exploit as a continuation of some 'docker cp'
security bugs that I helped find and fix more than 4 years ago in 2014[3,4]=
 (these were never assigned CVEs because at the time it was thought that at=
tacks which used access to docker.sock were not valid security bugs).

[[ Overview ]]

The basic premise of this attack is that FollowSymlinkInScope suffers from =
a fairly fundamental TOCTOU attack. The purpose of FollowSymlinkInScope is =
to take a given path and safely resolve it as though the process was inside=
 the container. After the full path has been resolved, the resolved path is=
 passed around a bit and then operated on a bit later (in the case of 'dock=
er cp' it is opened when creating the archive that is streamed to the clien=
t). If an attacker can add a symlink component to the path *after* the reso=
lution but *before* it is operated on, then you could end up resolving the =
symlink path component on the host as root. In the case of 'docker cp' this=
 gives you read *and* write access to any path on the host.

As far as I'm aware there are no meaningful protections against this kind o=
f attack (other than not allowing "docker cp" on running containers -- but =
that only helps with his particular attack through FollowSymlinkInScope). U=
nless you have restricted the Docker daemon through AppArmor, then it can a=
ffect the host filesystem -- I haven't verified if the issue is as exploita=
ble under the default SELinux configuration on Fedora/CentOS/RHEL.

[[ Exploit Scripts ]]

Attacked are two reproducers of the issue. They both include a Docker image=
 which contains a simple binary that does a RENAME_EXCHANGE of a symlink to=
 "/" and an empty directory in a loop, hoping to hit the race condition. In=
 both of the scripts, the user is trying to copy a file to or from a path c=
ontaining the swapped symlink.

In the case of run_read.sh, I get a <1% chance of hitting the race conditio=
n (my attack script is quite dumb, it's possible with better timing you'd b=
e able to hit the race window much more effectively).
However <1% still means it only takes 10s of trying to get read access to t=
he host with root permissions.

  % ./run_read.sh &>/dev/null & ; sleep 10s ; pkill -9 run.sh
  % chmod 0644 ex*/out # to fix up permissions for grep
  % grep 'SUCCESS' ex*/out | wc -l # managed to get it from the host
  2
  % grep 'FAILED'  ex*/out | wc -l # got the file from the container
  334

However, the run_write.sh script can overwrite the host filesystem in very =
few iterations -- this is because internally Docker has a "chrootarchive" c=
oncept where the archive is extracted from within a chroot. However, Docker=
 doesn't chroot into the container's "/" (which would make this exploit ine=
ffective), it chroots into the parent directory of the archive target -- wh=
ich is attacker controlled. As a result, this actually results in the attac=
k being more likely to succeed (once the chroot has hit the race, the rest =
of the attack is guaranteed to succeed).

The scripts will ask for sudo permissions, but that is only to be able to c=
reate a "flag file" in /. You could modify the scripts to target /etc/shado=
w instead if you like.

[[ Future Work ]]

In an attempt to come up with a better solution for this problem, I've been=
 working on some Linux kernel patches which add the ability to safely resol=
ve paths from within a rootfs[5]. But they are still being reviewed and it =
will take a while for userspace to be able to take advantage of the new int=
erfaces. However, I am also working on redesigning my "secure join" library=
's API[6] so that we can at least better detect these attacks on older kern=
els and take advantage of [5] in newer kernels.

[1]: https://github.com/docker/docker/pull/39252
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1096726
[3]: https://github.com/docker/docker/pull/5720
[4]: https://github.com/docker/docker/pull/6000
[5]: https://marc.info/?l=3Dlinux-fsdevel&m=3D155835923516235&w=3D2
[6]: https://github.com/cyphar/filepath-securejoin

--
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>
