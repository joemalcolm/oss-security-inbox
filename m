X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1544" "Thursday" "30" "September" "2021" "23:01:37" "+0200" "Philipp Takacs" "philipp+enjoy-digital@bureaucracy.de" nil "44" "[oss-security] security issues in Litex IP stack" nil nil nil "9" nil nil (number mark "U       philipp+enjo Sep 30   44/1544  " thread-indent "\"[oss-security] security issues in Litex IP stack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] security issues in Litex IP stack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11405 invoked by uid 550); 30 Sep 2021 21:09:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7546 invoked from network); 30 Sep 2021 21:01:50 -0000
From: Philipp Takacs <philipp+enjoy-digital@bureaucracy.de>
To: oss-security@lists.openwall.com
Cc: florent@enjoy-digital.fr
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <25725.1633035697.1@localhost>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Sep 2021 23:01:37 +0200
Message-ID: <4e14406504524640@localhost>
Subject: [oss-security] security issues in Litex IP stack

Hi

I have found some security issues by a code review of litex[0]. The
issues where reported to Enjoy-Digital on 21.02.2021 but not fixed yet.
I haven't tested, if these issues are exploitable.

1. oob read over IP/UDP length

The IP/UDP implementation only checks if the receive data and declared
sizes are big enough to contain a full UDP header. An attacker can set
this to 0xffff, which leads to an out of bound read. (see rx_callback()
in tftp.c and process_ip() in udp.c)

2. out of bounds write

In boot.c tftp_get() is called with "char json_buffer[1024]" as buffer.
Because of missing bound checks in tftp_get() an attacker can overflow
this buffer (see rx_callback() in tftp.c and netboot_from_json() in bios.c).

3. sender check
=20=20
The tftp client don't check if the packages are from the sender he
requested data. If an attacker sends faster then the requested tftpd, he
can completely control the data.

4. tftp total_length overflow

May only be a theoretical bug, because the result is checked against <=3D 0.
But if an attacker uses the missing IP/UDP length check he can overflow
the total_length in rx_callback() (see tftp.c).

5. override already received data

The tftp client don't check if he receives data multiple times. An attacker
can send a block the client has already received and override it.

6. arp cache poisoning

It looks like it's possible to just send an arp reply to override the
mac address of the tftp server (see process_arp() in udp.c).

Philipp Takacs

[0] https://github.com/enjoy-digital/litex
