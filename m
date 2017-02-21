X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["637" "Tuesday" "21" "February" "2017" "19:06:00" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1702211905270.17805@wniryva>" "16" "Re: [oss-security] CVE-2017-2620 Qemu: display: cirrus: out-of-bounds access issue while in cirrus_bitblt_cputovideo" nil nil nil "2" "2017022113:36:00" "[oss-security] CVE-2017-2620 Qemu: display: cirrus: out-of-bounds access issue while in cirrus_bitblt_cputovideo" (number mark "U       ppandit@redh Feb 21   16/637   " thread-indent "\"Re: [oss-security] CVE-2017-2620 Qemu: display: cirrus: out-of-bounds access issue while in cirrus_bitblt_cputovideo\"\n") "<alpine.LFD.2.20.1702211647360.13950@wniryva>" ("<alpine.LFD.2.20.1702211647360.13950@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1399 invoked by uid 550); 21 Feb 2017 13:36:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1380 invoked from network); 21 Feb 2017 13:36:18 -0000
Date: Tue, 21 Feb 2017 19:06:00 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Stefano Stabellini <sstabellini@kernel.org>, 
    Gerd Hoffmann <ghoffman@redhat.com>
In-Reply-To: <alpine.LFD.2.20.1702211647360.13950@wniryva>
Message-ID: <alpine.LFD.2.20.1702211905270.17805@wniryva>
References: <alpine.LFD.2.20.1702211647360.13950@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.74 on 10.5.11.28
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 21 Feb 2017 13:36:07 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-2620 Qemu: display: cirrus: out-of-bounds
 access issue while in cirrus_bitblt_cputovideo

+-- On Tue, 21 Feb 2017, P J P wrote --+
| Quick emulator(Qemu) built with the Cirrus CLGD 54xx VGA Emulator support is
| vulnerable to an out-of-bounds access issue. It could occur while copying VGA
| data in cirrus_bitblt_cputovideo.
| 
| A privileged user inside guest could use this flaw to crash the Qemu process
| resulting in DoS OR potentially execute arbitrary code on the host with
| privileges of Qemu process on the host.

Upstream patch:
  -> https://lists.gnu.org/archive/html/qemu-devel/2017-02/msg04700.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
