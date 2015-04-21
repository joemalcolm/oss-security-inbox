X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1117" "Tuesday" "21" "April" "2015" "13:35:13" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.11.1504211330230.30344@wniryva>" "32" "Re: [oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host" nil nil nil "4" "2015042108:05:13" "[oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host" (number mark "        ppandit@redh Apr 21   32/1117  " thread-indent "\"Re: [oss-security] Re: CVE request Qemu: malicious PRDT flow from guest to host\"\n") "<20150420163026.CEFA96C0043@smtpvmsrv1.mitre.org>" ("<20150420163026.CEFA96C0043@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26215 invoked by uid 550); 21 Apr 2015 08:05:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26188 invoked from network); 21 Apr 2015 08:05:32 -0000
X-X-Sender: pjp@javelin
In-Reply-To: <20150420163026.CEFA96C0043@smtpvmsrv1.mitre.org>
Message-ID: <alpine.LFD.2.11.1504211330230.30344@wniryva>
References: <20150420163026.CEFA96C0043@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
cc: cve-assign@mitre.org
Date: Tue, 21 Apr 2015 13:35:13 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request Qemu: malicious PRDT flow from
 guest to host
To: oss security list <oss-security@lists.openwall.com>

   Hello,

+-- On Mon, 20 Apr 2015, cve-assign@mitre.org wrote --+
| are, that would be helpful. First, we think you mean that there is a
| security impact (not necessarily the same security impact) in both the
| BMDMA case and the AHCI case: is that correct?

  Yes, that's correct.

| Possibility 1:
| 
|   1A: one CVE ID for the use of "return s->io_buffer_size != 0" - this
|       made it impossible for other parts of the code to distinguish
|       between the "0 bytes" case and the "0 complete sectors" case,
|       and caused both impacts: "leaked memory for short PRDTs" and
|       "infinite loops and resource usage"
| 
|   1B: one CVE ID for lack of the 2 GiB limit checking
| 
| Possibility 2:
| 
|   One CVE ID only for item 1A above. 1B has no security impact (e.g.,
|   because it only allows the guest to conduct a DoS attack against
|   itself with a large transfer attempt, or for some other reason)

  IMO, possibility #2 is apt. It covers both the issues affecting BMDMA & 
AHCI.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
