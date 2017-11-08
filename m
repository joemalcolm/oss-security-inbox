X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1748" "Wednesday" "8" "November" "2017" "13:05:38" "+0100" "Solar Designer" "solar@openwall.com" "<20171108120538.GA31417@openwall.com>" "33" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem" "^Cc:" nil nil "11" "2017110812:05:38" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem" (number mark "        solar@openwa Nov  8   33/1748  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem\"\n") "<CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>" ("<CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17721 invoked by uid 550); 8 Nov 2017 12:08:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11835 invoked from network); 8 Nov 2017 12:05:50 -0000
Message-ID: <20171108120538.GA31417@openwall.com>
References: <CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: Andrey Konovalov <andreyknvl@gmail.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Kostya Serebryany <kcc@google.com>
Date: Wed, 8 Nov 2017 13:05:38 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem
To: oss-security@lists.openwall.com

On Mon, Nov 06, 2017 at 02:45:01PM +0100, Andrey Konovalov wrote:
> Below are the details for 14 vulnerabilities found with syzkaller in
> the Linux kernel USB subsystem. All of them can be triggered with a
> crafted malicious USB device in case an attacker has physical access
> to the machine.

Perhaps not only in that case, but also in case an attacker has remote
access to a USB device (perhaps most commonly via remote access to the
machine, with privileges to access the USB device) sufficient to replace
that device's firmware (thereby crafting a malicious device).

For example, many USB-connected FPGA boards, Bitcoin miners ("ASICs"),
etc. may reasonably be made available to a non-root user (such as via
udev rules), and they commonly permit microcontroller firmware update to
be performed via USB as well.  John the Ripper bleeding-jumbo currently
loads firmware into MCUs on ZTEX 1.15y boards at startup (if the
firmware in EEPROM is different), and we recommend running it as
non-root with udev rules setup to grant access to non-root users in
group "ztex" (this setup is described in doc/README-ZTEX).

Many mainstream devices (mice, etc.) probably permit firmware update via
USB as well.  Hopefully, it's uncommon to have them directly accessible
by non-root.

And no, I don't think these vulnerabilities should be a reason to run
programs as root instead of granting access to non-root.  Rather, this
is a reminder that by granting access we expose more of the kernel's
attack surface (and particularly fragile parts of it), so access should
be granted to sufficiently trusted (pseudo-)user accounts only.  Such
direct access is often also sufficient to backdoor or brick the devices,
which should be a concern anyway.

Alexander
