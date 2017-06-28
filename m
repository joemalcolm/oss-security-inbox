X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["564" "Wednesday" "28" "June" "2017" "22:02:43" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2558042.rxMoaMk3FX@wanheda>" "22" "Re: [oss-security] lame: multiple vulnerabilities" nil nil nil "6" "2017062820:02:43" "[oss-security] lame: multiple vulnerabilities" (number mark "U       ago@gentoo.o Jun 28   22/564   " thread-indent "\"Re: [oss-security] lame: multiple vulnerabilities\"\n") "<20170628203343.0e36d391@pc1>" ("<17034856.l0NmUXmGEd@wanheda>" "<20170628154335.4f06da8b@cortex.rrz.uni-hamburg.de>" "<20170628203343.0e36d391@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21655 invoked by uid 550); 28 Jun 2017 20:03:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21630 invoked from network); 28 Jun 2017 20:02:59 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Hanno =?ISO-8859-1?Q?B=F6ck?= <hanno@hboeck.de>, "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Date: Wed, 28 Jun 2017 22:02:43 +0200
Message-ID: <2558042.rxMoaMk3FX@wanheda>
User-Agent: KMail/4.14.10 (Linux/4.9.16-gentoo; KDE/4.14.32; x86_64; ; )
In-Reply-To: <20170628203343.0e36d391@pc1>
References: <17034856.l0NmUXmGEd@wanheda> <20170628154335.4f06da8b@cortex.rrz.uni-hamburg.de> <20170628203343.0e36d391@pc1>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart5555592.KQDpBqOB5P"
Content-Transfer-Encoding: 7Bit
Subject: Re: [oss-security] lame: multiple vulnerabilities

--nextPart5555592.KQDpBqOB5P
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Wednesday 28 June 2017 20:33:43 Hanno B=C3=B6ck wrote:
> None of Agostinos samples trigger anything in an asan build of=20
mpg123
> 1.25.0 here. However I was quickly able to get afl to find another=20
bug,

Great!

I found also something else which I will report to the bt, but seems=20
there is a null pointer dereference by default without any crafted=20
input.

--=20
Agostino Sarubbo
Gentoo Linux Developer

--nextPart5555592.KQDpBqOB5P--

