X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1796" "Monday" "16" "October" "2017" "05:09:05" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<690621455.20591654.1508144945361.JavaMail.zimbra@redhat.com>" "67" "[oss-security] CVE-2017-15299: Linux kernel: incorrect update of uninstantiated keys can crash a kernel" nil nil nil "10" "2017101609:09:05" "[oss-security] CVE-2017-15299: Linux kernel: incorrect update of uninstantiated keys can crash a kernel" (number mark "U       vdronov@redh Oct 16   67/1796  " thread-indent "\"[oss-security] CVE-2017-15299: Linux kernel: incorrect update of uninstantiated keys can crash a kernel\"\n") "<0dcf18f160fa4ff39ff2b4b873e9a720@imshyb02.MITRE.ORG>" ("<0dcf18f160fa4ff39ff2b4b873e9a720@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30603 invoked by uid 550); 16 Oct 2017 09:09:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30578 invoked from network); 16 Oct 2017 09:09:17 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 737644E33D
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Mon, 16 Oct 2017 05:09:05 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <690621455.20591654.1508144945361.JavaMail.zimbra@redhat.com>
In-Reply-To: <0dcf18f160fa4ff39ff2b4b873e9a720@imshyb02.MITRE.ORG>
References: <0dcf18f160fa4ff39ff2b4b873e9a720@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.227, 10.4.195.3]
Thread-Topic: CVE-2017-15299: Linux kernel: incorrect update of uninstantiated keys can crash a kernel
Thread-Index: l9+IWsqRIl8el7cWJHQ1lG4D5ex5Qw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Mon, 16 Oct 2017 09:09:05 +0000 (UTC)
Subject: [oss-security] CVE-2017-15299: Linux kernel: incorrect update of uninstantiated
 keys can crash a kernel

Heololo,

> [Suggested description]
> The KEYS subsystem in the Linux kernel through 4.13.7 mishandles use of
> the add_key() for a key that already exists but is uninstantiated, which
> allows local users to cause a denial of service (NULL pointer dereference
> and a system crash) or possibly have unspecified other impact via a crafted
> system call.
> 
> ------------------------------------------
> 
> [VulnerabilityType Other]
> CWE-476 NULL Pointer Dereference
> 
> ------------------------------------------
> 
> [Vendor of Product]
> kernel.org: Linux kernel
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> Linux kernel - upto v4.14
> 
> ------------------------------------------
> 
> [Affected Component]
> 'security/keys/keyring.c', 'security/keys/key.c' files, find_key_to_update(),
> key_create_or_update() functions
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> to exploit a vulnerability an attacker should run a certain binary as unprivileged user
> 
> ------------------------------------------
> 
> [Reference]
> https://bugzilla.redhat.com/show_bug.cgi?id=1498016
> https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1499828.html
> https://marc.info/?t=150654188100001&r=1&w=2
> https://marc.info/?t=150783958600011&r=1&w=2
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
> 
> ------------------------------------------
> 
> [Discoverer]
> Eric Biggers <ebiggers@google.com>
>
> Use CVE-2017-15299.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
