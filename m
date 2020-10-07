X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2336" "Wednesday" "7" "October" "2020" "10:32:05" "+0000" "=?utf-8?B?Y2F2ZW1hbiDYsdis2YQg2KfZhNmD2YfZgQ==?=" "toraboracaveman@protonmail.com" "<1GaG2-aqK--4nCAdHTeFIx-6-pQJJNysDvCH9qNTD-4VgG4VDIx0IjXoSQZn14MTl-S7Hw3nxjfqSPwewhsZ1znP-AyHZi2vW1pkWoL0KOw=@protonmail.com>" "75" "[oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." nil nil nil "10" "2020100710:32:05" "[oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." (number mark "U       toraboracave Oct  7   75/2336  " thread-indent "\"[oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections.\"\n") "<6bfd4935c64c76dcdaa1b7be0c7f4c47ea6104ff.camel@breakpointingbad.com>" nil nil nil nil nil nil nil nil "[oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24190 invoked by uid 550); 7 Oct 2020 11:37:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23952 invoked from network); 7 Oct 2020 10:32:26 -0000
Date: Wed, 07 Oct 2020 10:32:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1602066734;
	bh=PEWFQh+2h2an54s1tJ5RHg+Om2Bam78FlU0iixuUQUg=;
	h=Date:To:From:Reply-To:Subject:From;
	b=kS6SA7e/umhCfcONZOxURnRicufx9OxNTFRsX30R5QWV1z8lZbofsMKUh4ah+BNuj
	 vVa1AItjLMPYwffqj7NhfAoORl3V3L6CO86eiKSW5xBJPFrWyEz9z+g8vhr7cQC1/6
	 qOqYCX7XSMrRmwue4YJ2S+42scft5MWmjwLc0Wkw=
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: =?utf-8?B?Y2F2ZW1hbiDYsdis2YQg2KfZhNmD2YfZgQ==?= <toraboracaveman@protonmail.com>
Message-ID: <1GaG2-aqK--4nCAdHTeFIx-6-pQJJNysDvCH9qNTD-4VgG4VDIx0IjXoSQZn14MTl-S7Hw3nxjfqSPwewhsZ1znP-AyHZi2vW1pkWoL0KOw=@protonmail.com>
In-Reply-To: <6bfd4935c64c76dcdaa1b7be0c7f4c47ea6104ff.camel@breakpointingbad.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: [CVE-2019-14899] Inferring and hijacking VPN-tunneled TCP connections.

hi.  following this:

    https://seclists.org/oss-sec/2019/q4/122

i think using rp filtering won't be a neat
solution as it is technically incorrect in my
view.  my reason is as follows:

    - rp filtering assumes that my path to reach
      others is also the path that others would
      use to reach me.

that assumption is either false, or
unsubstantiated.  hence, either way, there is no
reason to assume that it is true (occam's razor).

even if it is usually true, there is no reason why
this is always true, and there are cases where
this can be false.

in fact, cases exist where this is not true.  e.g.
a linux box in a LAN with 2 gateways can itself
choose a different default gateway than the one
the network uses to send it packets.

therefore i think using rp filtering is a dirty
hack that is going to create another problem.

in my view, the real problem is that while vpns
are offering a kind of partitioning over the wire,
such partitioning is lost when it comes to
in-kernel connection states.

therefore, i suggest the real fix is to export
vpn's partitioning into the connection states
table by using some in-kernel tags, as follows:

    - packets entering a linux box from any
      interface, will inherit such specified tags
      from the connection.

    - the connection states table will have an
      extra "tag" column that will store such
      tag.

    - connection states are invisible from each
      other if they do not have the same tag.

    - for backwards compatibility, all interfaces
      will use "default" tag.  so, by default,
      everything feels normal.

    - for wireguard, it may use the added API to
      set a different tag for its packets, such as
      "wireguard".  the user could also manually
      set other tags by `wg set states-tag newtag`
      if they want to have different states
      partitions across different wireguard
      tunnels.

this way, in the same way that the vpn paritions
packets on the wire, connection states with
different tags will remain invisible from each
other.

in a sense similar to how VLAN IDs create the
effect of separate physical switches using the
same physical switch.  not an accurate analogy,
but i thought it may help.  VLANs also communicate
their IDs over trunk links (so the analogy is not
too bad i guess).

regards,
cm

