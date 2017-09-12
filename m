X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["791" "Tuesday" "12" "September" "2017" "13:01:15" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1709121258160.2226@wniryva>" "24" "Re: [oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during display update" nil nil nil "9" "2017091207:31:15" "[oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during display update" (number mark "U       ppandit@redh Sep 12   24/791   " thread-indent "\"Re: [oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure during during display update\"\n") "<20170910195431.fvcvbo24su3zkl3n@eldamar.local>" ("<nycvar.YSQ.7.76.1708301533140.5404@wniryva>" "<20170910195431.fvcvbo24su3zkl3n@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18334 invoked by uid 550); 12 Sep 2017 07:31:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18313 invoked from network); 12 Sep 2017 07:31:33 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com A248D81DF5
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Tue, 12 Sep 2017 13:01:15 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: David Buchanan <d@vidbuchanan.co.uk>, Michael Tokarev <mjt@tls.msk.ru>
In-Reply-To: <20170910195431.fvcvbo24su3zkl3n@eldamar.local>
Message-ID: <nycvar.YSQ.7.76.1709121258160.2226@wniryva>
References: <nycvar.YSQ.7.76.1708301533140.5404@wniryva> <20170910195431.fvcvbo24su3zkl3n@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 12 Sep 2017 07:31:21 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-13673 Qemu: vga: reachable assert failure
 during during display update

+-- On Sun, 10 Sep 2017, Salvatore Bonaccorso wrote --+
|  As far as I can see, e.g. cpu_physical_memory_snapshot_get_dirty was only 
| introduced in v2.10.0-rc0. The upstream commit associated with the above 

  Right.

|  https://git.qemu.org/gitweb.cgi?p=qemu.git;a=commit;h=bfc56535f793c557aa754c50213fc5f882e6482d
| 
| which fixes
| 
|  https://git.qemu.org/gitweb.cgi?p=qemu.git;a=commit;h=fec5e8c92becad223df9d972770522f64aafdb72
| 
| introducing the use of dirty bitmap snapshots in vga_draw_graphic().
| 
| Do I miss something makeing it affecting as well earlier versions than
| 2.10?

There were two issues, one reproducer worked with Qemu 2.9.x, other didn't 
IIRC.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
