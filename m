X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["564" "Wednesday" "7" "September" "2016" "13:39:41" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1609071339140.25457@wniryva>" "13" "Re: [oss-security] Re: CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages" nil nil nil "9" "2016090708:09:41" "[oss-security] Re: CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages" (number mark "U       ppandit@redh Sep  7   13/564   " thread-indent "\"Re: [oss-security] Re: CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages\"\n") "<20160907005628.1FE726C547C@smtpvmsrv1.mitre.org>" ("<20160907005628.1FE726C547C@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20077 invoked by uid 550); 7 Sep 2016 08:10:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20059 invoked from network); 7 Sep 2016 08:10:00 -0000
Date: Wed, 7 Sep 2016 13:39:41 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: cve-assign@mitre.org, vv474172261@gmail.com
In-Reply-To: <20160907005628.1FE726C547C@smtpvmsrv1.mitre.org>
Message-ID: <alpine.LFD.2.20.1609071339140.25457@wniryva>
References: <20160907005628.1FE726C547C@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Wed, 07 Sep 2016 08:09:48 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE Request Qemu: scsi: mptsas: invalid memory
 access while building configuration pages

+-- On Tue, 6 Sep 2016, cve-assign@mitre.org wrote --+
| -----BEGIN PGP SIGNED MESSAGE-----
| >> When LSI SAS1068 Host Bus emulator builds configuration page
| >> headers, mptsas_config_pack() asserts to check returned size
| >> value is within limit of 256 bytes. Fix that assert expression.
| 
| Our interpretation is that this assert issue is not an independently
| relevant security problem, and does not need its own unique CVE ID.

That's right. Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
