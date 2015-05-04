X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1963" "Monday" "4" "May" "2015" "01:43:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150504054348.90CC272E083@smtpvbsrv1.mitre.org>" "53" "[oss-security] Re: USBCreator D-Bus service" nil nil nil "5" "2015050405:43:48" "[oss-security] Re: USBCreator D-Bus service" (number mark "        cve-assign@m May  4   53/1963  " thread-indent "\"[oss-security] Re: USBCreator D-Bus service\"\n") "<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" ("<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25887 invoked by uid 550); 4 May 2015 05:44:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25770 invoked from network); 4 May 2015 05:44:00 -0000
In-Reply-To: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>
Message-Id: <20150504054348.90CC272E083@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Mon,  4 May 2015 01:43:48 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: USBCreator D-Bus service
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://openwall.com/lists/oss-security/2015/04/22/12

> On my Ubuntu VM, I have a D-Bus service listening on
> com.ubuntu.USBCreator. As far as I can tell, this is installed by
> default.

> It looks like the author intended for all the methods to call
> check_polkit, but KVMTest doesn't.

> the following appears to work
> on my machine:

> dbus-send --print-reply --system --dest=com.ubuntu.USBCreator
> /com/ubuntu/USBCreator com.ubuntu.USBCreator.KVMTest ...
> dict:string:string:DISPLAY,"foo",XAUTHORITY,"foo",LD_PRELOAD,"/tmp/test.so"

As far as we know, this affects only Ubuntu, and although people from
Ubuntu discussed the announcement here, apparently nobody from Ubuntu
sent a message here stating that they concluded it was a single
vulnerability that didn't yet have a CVE ID. We found that that's the
state by reading:

  http://bazaar.launchpad.net/~usb-creator-hackers/usb-creator/trunk/revision/470

Use CVE-2015-3643.


> http://openwall.com/lists/oss-security/2015/04/24/5

As far as we can tell, this followup post doesn't announce an
additional vulnerability. Apparently, the goal of that post was to
describe how to check for some of the exploitation preconditions, and
suggest the possibility of bypassing a precondition.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVRwacAAoJEKllVAevmvms1VoIAJnDJUPom/68ET3hv2D0+qfs
BUFj/DXxIXDM19x4ayME7eCh9kauLK79qxFwV2bfsvE/qKEd+2YKmFp3BkveJdE/
gpNIaxOpLL6/D+LkjMAeEgekVA2ScEhU3TZYsHAiYUQvivfDKbYbwfSQsYc6qKit
F6fG0Hyg7ic5Au9pH6faIHmQbBKWCFQQ2QfaiKNOOXBObCq9aCwo5YfWjoGdeH10
H0CJ8ePZ49oIBrYymQRnQ4aEaH974g/N3rii/R9kVhTTrFmHoFs8mgnGlwleB9my
6bysckwfVPXUlNw44ugnz6fu+AxuoKdAnOCtXAIf9oIy8GOhc9sVqdXU5blx2og=
=gCRz
-----END PGP SIGNATURE-----
