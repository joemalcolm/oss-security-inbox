X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["991" "Friday" "29" "January" "2016" "08:33:52" "+0100" "Asbjorn Hojmark" "lists@hojmark.org" "<4DEA83BF-D7C9-40F2-AD63-BC9C9B3910AE@hojmark.org>" "21" "[oss-security] Re: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Cc:" nil nil "1" "2016012907:33:52" "[oss-security] Re: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        lists@hojmar Jan 29   21/991   " thread-indent "\"[oss-security] Re: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<056121F3-6A4C-4962-B3EC-CE294DDF5C5F@ntppool.org>" ("<2413003.GtkKFizscD@chimera>" "<056121F3-6A4C-4962-B3EC-CE294DDF5C5F@ntppool.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7748 invoked by uid 550); 29 Jan 2016 07:37:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6054 invoked from network); 29 Jan 2016 07:34:03 -0000
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
In-Reply-To: <056121F3-6A4C-4962-B3EC-CE294DDF5C5F@ntppool.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <4DEA83BF-D7C9-40F2-AD63-BC9C9B3910AE@hojmark.org>
References: <2413003.GtkKFizscD@chimera> <056121F3-6A4C-4962-B3EC-CE294DDF5C5F@ntppool.org>
X-Mailer: Apple Mail (2.3112)
Cc: Luca BRUNO <lucab@debian.org>,
 oss-security@lists.openwall.com,
 pool@lists.ntp.org,
 team@security.debian.org,
 secalert@redhat.com
Date: Fri, 29 Jan 2016 08:33:52 +0100
From: Asbjorn Hojmark <lists@hojmark.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes
To: =?utf-8?Q?Ask_Bj=C3=B8rn_Hansen?= <ask@ntppool.org>


> I might just be too cynical, but it also feels like something we should c=
ome to expect. Anyone who's looked at traffic to an Internet facing IPv4 ad=
dress have seen much worse.

I (too) might just be too cynical, or in this business too long, but I feel=
 that if you communicate on the global Internet, you should expect to be pr=
obed. If you=E2=80=99re not ready to be probed, your machine shouldn=E2=80=
=99t be on the Net. Really.

One can probe the entire v4 Internet in minutes, so being probed should not=
 be new to any device on it. The fact that the v6 address space takes ... s=
lightly longer ;) to probe should not make one lazy and rely on security by=
 obscurity, hoping that your machine will not be seen.

That being said, I do agree that the NTP pool should try to only provide th=
e services that it =E2=80=98advertises=E2=80=99. I just hope everyone reali=
ses that with volounteers running the servers and the pool, that will be ve=
ry difficult to enforce.

-A=
