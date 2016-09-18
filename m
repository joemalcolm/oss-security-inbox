X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2339" "Sunday" "18" "September" "2016" "20:06:57" "+0100" "John Haxby" "john.haxby@oracle.com" "<E82F2B4A-DBD5-4B21-A526-0DCC26093A38@oracle.com>" "59" "Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" "^Cc:" nil nil "9" "2016091819:06:57" "[oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "        john.haxby@o Sep 18   59/2339  " thread-indent "\"Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "<20160916173838.GL8683@netmeister.org>" "<7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32707 invoked by uid 550); 18 Sep 2016 19:18:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25850 invoked from network); 18 Sep 2016 19:07:17 -0000
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
In-Reply-To: <7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu>
Content-Transfer-Encoding: quoted-printable
Message-Id: <E82F2B4A-DBD5-4B21-A526-0DCC26093A38@oracle.com>
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com> <20160916173838.GL8683@netmeister.org> <7c365a7a-c510-b6e6-2609-da62b69fd62b@case.edu>
X-Mailer: Apple Mail (2.3124)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Cc: Jan Schaumann <jschauma@netmeister.org>,
        "chet.ramey" <chet.ramey@case.edu>
Date: Sun, 18 Sep 2016 20:06:57 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME
To: oss-security@lists.openwall.com


> On 16 Sep 2016, at 19:49, Chet Ramey <chet.ramey@case.edu> wrote:
>=20
> On 9/16/16 1:38 PM, Jan Schaumann wrote:
>> John Haxby <john.haxby@oracle.com> wrote:
>=20
> (I didn't get this message.)

Sorry about that, I thought I=E2=80=99d cc=E2=80=99d you with the right add=
ress.


>=20
>>> A little while ago, one of our users discovered that by setting the
>>> hostname to $(something unpleasant), bash would run "something
>>> unpleasant" when it expanded \h in the prompt string.
>=20
> This issue has been public since October, 2015 in Ubuntu's bug tracking
> system.
>=20

Yes, the message was more to let people know that CVE-2016-0634  had been a=
ssigned for this issue.   Do you have a link to the Ubuntu issue and a diff=
erent CVE number?

>=20
>> To clarify: this is only triggered if the hostname has been set, not the
>> $HOSTNAME variable, right?
>=20
> Bash doesn't use $HOSTNAME; it sets it if it's not already set.  The
> shell's idea of the current hostname is set using gethostname().  If
> gethostname() fails, the hostname gets set to "??host??".  The \h
> prompt expansion uses the shell's idea of the current hostname.
>=20
> If your privileged application (either a user with privilege or a hostnam=
e-
> setting agent) allows the hostname to be set to any arbitrary string of
> characters, you're going to have problems regardless.


Yes, that=E2=80=99s correct.   A while ago there was a problem that dhcp wo=
uld let a malicious dhcp server use a hostname of the attackers choosing.  =
 That was bad not least because would expand whatever was given.   The linu=
x sethostname(2) system call doesn=E2=80=99t make any restrictions on what =
you can use for a system call so any agent (not just that old dhcp version)=
 that sets the hostname could potentially trigger this.   The bar is obviou=
sly set quite high for this: you need to find an agent that you can persuad=
e to set the hostname for you =E2=80=94 any agent that just blindly sets th=
e hostname to $(do something bad) is broken, but bash shouldn=E2=80=99t mak=
e the situation worse by giving you complete control over the machine.

>=20
> Chet
> --=20
> ``The lyf so short, the craft so long to lerne.'' - Chaucer
> 		 ``Ars longa, vita brevis'' - Hippocrates
> Chet Ramey, UTech, CWRU    chet@case.edu    http://cnswww.cns.cwru.edu/~c=
het/

