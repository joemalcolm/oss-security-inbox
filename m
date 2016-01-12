X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["670" "Tuesday" "12" "January" "2016" "23:24:36" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601122319510.1476@wniryva>" "24" "Re: [oss-security] Re: CVE request Qemu: nvram: OOB r/w access in processing firmware configurations" nil nil nil "1" "2016011217:54:36" "[oss-security] Re: CVE request Qemu: nvram: OOB r/w access in processing firmware configurations" (number mark "U       ppandit@redh Jan 12   24/670   " thread-indent "\"Re: [oss-security] Re: CVE request Qemu: nvram: OOB r/w access in processing firmware configurations\"\n") "<20160112173542.66C5A34E014@smtpvbsrv1.mitre.org>" ("<20160112173542.66C5A34E014@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6125 invoked by uid 550); 12 Jan 2016 17:54:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6107 invoked from network); 12 Jan 2016 17:54:53 -0000
Date: Tue, 12 Jan 2016 23:24:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss-security@lists.openwall.com
cc: cve-assign@mitre.org, donghai.zdh@alibaba-inc.com
In-Reply-To: <20160112173542.66C5A34E014@smtpvbsrv1.mitre.org>
Message-ID: <alpine.LFD.2.20.1601122319510.1476@wniryva>
References: <20160112173542.66C5A34E014@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: Re: [oss-security] Re: CVE request Qemu: nvram: OOB r/w access in
 processing firmware configurations

+-- On Tue, 12 Jan 2016, cve-assign@mitre.org wrote --+
| Use CVE-2016-1714.

  Thank you.
 
| Note that http://git.qemu.org/?p=qemu.git;a=blob;f=hw/nvram/fw_cfg.c
| has:
| 
|   static void fw_cfg_write(FWCfgState *s, uint8_t value)
|   {
|       /* nothing, write support removed in QEMU v2.4+ */
|   }
| 
| and has no fw_cfg_read function.

  That's right. This issue affects Qemu versions prior to 2.4. Above change 
was made immediately after the release of v2.3.

 -> http://git.qemu.org/?p=qemu.git;a=commit;h=023e3148567ac898c7258138f8e86c3c2bb40d07

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
