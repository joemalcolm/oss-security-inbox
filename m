X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1622" "Tuesday" "19" "February" "2019" "16:48:58" "+0000" "Simon McVittie" "smcv@debian.org" "<20190219164858.GC19026@espresso.pseudorandom.co.uk>" "32" "Re: [oss-security] CVE-2019-6454: systemd (PID1) crash with specially crafted D-Bus message" "^Date:" nil nil "2" "2019021916:48:58" "[oss-security] CVE-2019-6454: systemd (PID1) crash with specially crafted D-Bus message" (number mark "        smcv@debian. Feb 19   32/1622  " thread-indent "\"Re: [oss-security] CVE-2019-6454: systemd (PID1) crash with specially crafted D-Bus message\"\n") "<a172617e-fd76-8f64-9af6-fca53c10a4f4@canonical.com>" ("<a172617e-fd76-8f64-9af6-fca53c10a4f4@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5712 invoked by uid 550); 19 Feb 2019 16:49:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5694 invoked from network); 19 Feb 2019 16:49:14 -0000
Message-ID: <20190219164858.GC19026@espresso.pseudorandom.co.uk>
References: <a172617e-fd76-8f64-9af6-fca53c10a4f4@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a172617e-fd76-8f64-9af6-fca53c10a4f4@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Tue, 19 Feb 2019 16:48:58 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-6454: systemd (PID1) crash with
 specially crafted D-Bus message
To: oss-security@lists.openwall.com

On Mon, 18 Feb 2019 at 17:41:56 +0100, Chris Coulson wrote:
> According to the dbus specification, the path "may be of any
> length" (with the length being represented on the wire by a uint32),
> but systemd seems to limit the size of incoming messages to 128MB
> (BUS_MESSAGE_SIZE_MAX).

D-Bus is a protocol and dbus is the reference implementation of the
D-Bus protocol, so it's really the D-Bus specification.

The 128M limit also comes from the D-Bus Specification, which isn't
always as good as it might be about taking a rule from one part of the
spec and noting its consequences in another part (patches welcome). The
intention is that wherever rules rule1 and rule2 overlap, messages must
obey (rule1 && rule2) - so for instance when a string or path can be
any 32-bit length, a string or path is part of a message, and a message
is up to 128M, the practical result is that the longest possible string
or path is a bit less than 128M.

> From testing on Ubuntu 18.10, it seems that the
> real limit is actually much less than this - dbus-daemon drops the
> connection when I try to send a message with an object path greater than
> about 32MB.

This lower limit is `dbus-daemon --system` policy/configuration to
mitigate/limit denial-of-service attacks by resource exhaustion (and
accidentally also mitigation for attacks like this one, although I don't
think that was ever intentional) - part of dbus, the reference
implementation of D-Bus, rather than part of the D-Bus spec. It can differ
in other implementations like dbus-broker and gdbus-daemon, and it can
also be changed by distros or sysadmins.

    smcv
