X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["783" "Tuesday" "7" "November" "2017" "17:51:27" "+0100" "Matthias Weckbecker" "matthias@weckbecker.name" "<20171107165127.GA1693@weckbecker.name>" "25" "[oss-security] Net::Ping::External command injections" "^Date:" nil nil "11" "2017110716:51:27" "[oss-security] Net::Ping::External command injections" (number mark "        matthias@wec Nov  7   25/783   " thread-indent "\"[oss-security] Net::Ping::External command injections\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3344 invoked by uid 550); 7 Nov 2017 17:08:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17625 invoked from network); 7 Nov 2017 16:51:56 -0000
Message-ID: <20171107165127.GA1693@weckbecker.name>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.8.0 (2017-02-23)
Date: Tue, 7 Nov 2017 17:51:27 +0100
From: Matthias Weckbecker <matthias@weckbecker.name>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Net::Ping::External command injections
To: oss-security@lists.openwall.com

Hi,

Net::Ping::External [0] is prone to command injection vulnerabilities.

The issues are roughly 10 (!) years old [1], but the code is still being
shipped these days (e.g. in ubuntu artful and debian stretch [2]).

I had contacted the author of the code a few days ago, but obviously did
not get any reaction.

A patch is available here:

  http://matthias.sdfeu.org/devel/net-ping-external-cmd-injection.patch

Maybe time to just patch it downstream? Or drop this pkg. altogether?

Thanks,
Matthias

--
[0] https://metacpan.org/pod/Net::Ping::External
[1] https://rt.cpan.org/Public/Dist/Display.html?Name=Net-Ping-External
    (id #33230)
[2] https://packages.debian.org/stable/perl/libnet-ping-external-perl \
    https://launchpad.net/ubuntu/+source/libnet-ping-external-perl
