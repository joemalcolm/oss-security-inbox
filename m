X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["843" "Monday" "10" "August" "2020" "12:18:07" "+0300" "Michael Tokarev" "mjt@tls.msk.ru" "<c177c453-0c5f-2bae-473b-881013cf8731@msgid.tls.msk.ru>" "22" "Re: [oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c" nil nil nil "8" "2020081009:18:07" "[oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c" (number mark "U       mjt@tls.msk. Aug 10   22/843   " thread-indent "\"Re: [oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c\"\n") "<CAA8xKjW4-RaRBBR6FC+CzNrAaafKMPGAC9Hkufg=6ODoAkCcCQ@mail.gmail.com>" ("<CAA8xKjW4-RaRBBR6FC+CzNrAaafKMPGAC9Hkufg=6ODoAkCcCQ@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32577 invoked by uid 550); 10 Aug 2020 12:27:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25711 invoked from network); 10 Aug 2020 09:18:18 -0000
To: oss-security@lists.openwall.com,
 Mauro Matteo Cascella <mcascell@redhat.com>
Cc: Alexander Bulekov <alxndr@bu.edu>, ziming zhang <ezrakiez@gmail.com>
References: <CAA8xKjW4-RaRBBR6FC+CzNrAaafKMPGAC9Hkufg=6ODoAkCcCQ@mail.gmail.com>
From: Michael Tokarev <mjt@tls.msk.ru>
Message-ID: <c177c453-0c5f-2bae-473b-881013cf8731@msgid.tls.msk.ru>
Date: Mon, 10 Aug 2020 12:18:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAA8xKjW4-RaRBBR6FC+CzNrAaafKMPGAC9Hkufg=6ODoAkCcCQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2020-16092 QEMU: reachable assertion failure
 in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c

10.08.2020 11:25, Mauro Matteo Cascella wrote:
> Hello,
> 
> An assertion failure issue was found in QEMU in the network packet
> processing component. This issue affects the "e1000e" and "vmxnet3"
> network devices. This flaw allows a malicious guest user or process to
> abort the QEMU process on the host, resulting in a denial of service
> condition.
> 
> Upstream patch:
>   -> https://git.qemu.org/?p=qemu.git;a=commit;h=035e69b063835a5fd23cacabd63690a3d84532a8

Hmm. Is it really worth the effort to treat these things as security
issues? There are so many ways to crash a machine (be it virtual or
hardware), there are definitely countless ways to crash things from
within privileged code.. what's the security impact of a hardware
issue when, say, a driver code in the OS does a stupid thing and
the hardware locks up?

Thanks,

/mjt
