X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1224" "Monday" "8" "February" "2021" "14:15:05" "+0000" "netblue30" "netblue30@protonmail.com" "<NKuWiXQK3sAwyMdDQT07Bdnnl5XSSBmKbvUMqaIhhCSShwaQMmOUKOVT9TCVVDGv43RDuHjy42O3GILwnaZiA2dadJ42Mqn09BhGaGu8BhE=@protonmail.com>" "42" "[oss-security] [cve-pending] Firejail: root privilege escalation in OverlayFS code" nil nil nil "2" "2021020814:15:05" "[oss-security] [cve-pending] Firejail: root privilege escalation in OverlayFS code" (number mark "U       netblue30@pr Feb  8   42/1224  " thread-indent "\"[oss-security] [cve-pending] Firejail: root privilege escalation in OverlayFS code\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [cve-pending] Firejail: root privilege escalation in OverlayFS code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5969 invoked by uid 550); 8 Feb 2021 14:27:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1836 invoked from network); 8 Feb 2021 14:16:00 -0000
Date: Mon, 08 Feb 2021 14:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1612793718;
	bh=eZfHgPmwpnS4KxiEhSxGYuvau167UD6so3rd82CxWN0=;
	h=Date:To:From:Reply-To:Subject:From;
	b=ooDEY0j+1r6YRMmWXf0dXUSqnhJGm/4MLXcLgsHsA0UICI50B1FdNeCSBTAt5wD6d
	 urFjr1ZXB8MEZp8dpvACpP9SMG4FVnrIqpXVTfaYWHKhGiZZLH1GKFmZpO0tkh8EbV
	 HkFmvHmuGpTu5OSKkCxoACuyjnR99YjM63uNIk/E=
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: netblue30 <netblue30@protonmail.com>
Message-ID: <NKuWiXQK3sAwyMdDQT07Bdnnl5XSSBmKbvUMqaIhhCSShwaQMmOUKOVT9TCVVDGv43RDuHjy42O3GILwnaZiA2dadJ42Mqn09BhGaGu8BhE=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [cve-pending] Firejail: root privilege escalation in OverlayFS code


Security Advisory - Feb 8, 2021

Summary: A vulnerability resulting in root privilege escalation was discove=
red in Firejail's OverlayFS code,

Versions affected: Firejail software versions starting with 0.9.30.
Long Term Support (LTS) Firejail branch is not affected by this bug.

Workaround: Disable overlayfs feature at runtime. In a text editor open /et=
c/firejail/firejail.config file,
and set "overlayfs" entry to "no".

      $ grep overlayfs /etc/firejail/firejail.config
      # Enable or disable overlayfs features, default enabled.
      overlayfs no

Fix: The bug is fixed in Firejail version 0.9.64.4

GitHub commit: (file configure.ac)
https://github.com/netblue30/firejail/commit/97d8a03cad19501f017587cc4e47d8=
418273834b

Credit:  Security researcher Roman Fiedler analyzed the code and discovered=
 the vulnerability.
Functional PoC exploit code was provided to Firejail development team.
A description of the problem is here on Roman's blog:

https://unparalleled.eu/publications/2021/advisory-unpar-2021-0.txt
https://unparalleled.eu/blog/2021/20210208-rigged-race-against-firejail-for=
-local-root/


Regards,

netblue30
(https://github.com/netblue30/firejail)


Sent with ProtonMail Secure Email.


