X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2640" "Saturday" "20" "August" "2016" "14:06:42" "+0000" "Pascal Cuoq" "cuoq@trust-in-soft.com" "<E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com>" "51" "[oss-security] memory issues in libksba 1.3.4 and git" "^CC:" nil nil "8" "2016082014:06:42" "[oss-security] memory issues in libksba 1.3.4 and git" (number mark "        cuoq@trust-i Aug 20   51/2640  " thread-indent "\"[oss-security] memory issues in libksba 1.3.4 and git\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25655 invoked by uid 550); 20 Aug 2016 14:54:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9514 invoked from network); 20 Aug 2016 14:06:38 -0000
Thread-Topic: memory issues in libksba 1.3.4 and git
Thread-Index: AQHR+uwTd1mk7uL3p0ul3NaLsG2wLQ==
Message-ID: <E28562C2-12D4-407B-BD2B-E154F5FCF884@trust-in-soft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [86.246.37.11]
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <CBB68E8E92CE6846A88054D58078999D@EX1688.lan>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
CC: "wk@gnupg.org" <wk@gnupg.org>, =?Windows-1252?Q?Rapha=EBl_Rieu-Helft?=
	<raphael.rieu-helft@trust-in-soft.com>
Date: Sat, 20 Aug 2016 14:06:42 +0000
From: Pascal Cuoq <cuoq@trust-in-soft.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] memory issues in libksba 1.3.4 and git
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Hello all,

this GitHub commit illustrates a memory issue present in in libksba 1.3.4 a=
nd in the current git tree from git://git.gnupg.org/libksba.git :

https://github.com/pascal-cuoq/libksba-fork/commit/709642767fbf7f2030d89bca=
4e4b192d612400ae

In summary:

Executing =93tests/cert-basic long_time.crt=94 allocates a disproportionate=
 33MB of memory. In the current libksba git snapshot, this memory is initia=
lized to zero, which takes a couple of milliseconds (probably mostly spent =
handling pagefaults), which is more than it should take to parse a certific=
ate of a few hundred bytes on a modern computer. In version 1.3.4, the memo=
ry is left uninitialized, so no time is wasted. The commit that causes the =
memory to be initialized is https://github.com/pascal-cuoq/libksba-fork/com=
mit/2a9fc5654df497b91ab9b64e946c1e19371888e5 and this commit was applied to=
 prevent uninitialized memory from being incorporated into computations.

Executing =93tests/cert-basic 90s.crt=94 allocates 60146387817 bytes (60GB)=
. In the current libksba git snapshot, initializing this memory takes sever=
al seconds.

Executing =93tests/cert-basic 0.0.0.0.0.crt=94 allocates 3MB of memory, whi=
ch are either left uninitialized (1.3.4 version) or initialized to zero (gi=
t version). A large part of this memory is then converted to an =93Authorit=
yKeyIdentifier=94. In the git version, this produces a long sequence of 0.0=
.0.0... In version 1.3.4, since it's uninitialized memory that is used, the=
 sequence may look different, and may contain secrets. =93Secrets=94 here i=
nclude cryptographic secrets that would unhygienically have been left in a =
freed memory block, but also addresses of variables, of library functions, =
etc. that might make another vulnerability exploitable.

These inputs have been set to Werner Koch, privately as per his request, on=
 May 25, June 11 and July 11. I am publishing them now so that anyone who u=
ses or might want to use libksba to parse messages (received pre-authentifi=
cation by definition) can make an informed choice considering the risks of =
denial of service and information leak.


The inputs were found and kindly placed in the =93hangs=94 result directory=
 by afl-fuzz. The undefined behaviors caused by the inputs were investigate=
d with tis-interpreter and a dependency analysis prototype developed by Rap=
ha=EBl Rieu-Helft. The results shown in https://github.com/pascal-cuoq/libk=
sba-fork/blob/master/log were obtained by running ./autogen.sh, ./configure=
 and make to build an instrumented version of libksba on a 128GiB Linux wor=
kstation (Ubuntu 16.04).

Pascal

