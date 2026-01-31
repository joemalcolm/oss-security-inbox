Received: (qmail 11839 invoked by uid 550); 31 Jan 2026 13:45:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11812 invoked from network); 31 Jan 2026 13:45:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1769867140;
	bh=x3J8mhdIaoq363MTWvi+FEmGNwj6Fll37MdOghxArng=;
	h=Date:From:Subject:To;
	b=1Rg/yrdcwy2l53FKoHka8B4rfEdvOnHqkg1GbuSbru1Dtsj7wFD0rQPzUdJ1in34x
	 abVH4xxeYYzHNIIsR4O9Pb4+NRnG1r9GrmKP4MEFCk1pNcWM8WwI/M/wPwczTbuWIw
	 /aKjxJrbDeJ+y6K+ebB7dyi893mlGUngEMaEzSIl5Sy0buTFfc2CpzR90PKf0JeerM
	 mobIoZAHs4n/LLR/b+01Jzxp/Jvp7CUrM41hIAsnZekkQM9ItE9ZqdRUuMlFX+wBJY
	 oTNU9JPBxnYW5SeJQqVP5F96IcR7rswVNMt2l7tVZTl/jlP8atbV7WCGTNueBNN2lf
	 k3N616GFNDpwA==
Message-ID: <347725ee-629f-4b1b-b040-e8998e249044@pipping.org>
Date: Sat, 31 Jan 2026 14:45:44 +0100
MIME-Version: 1.0
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] libexpat 2.7.4 fixes CVE-2026-24515 and CVE-2026-25210

Hello oss-security,


just a quick note that libexpat 2.7.4 (or "Expat 2.7.4") released
today is fixing CVE-2026-24515 (NULL pointer de-reference, CWE-476)
and CVE-2026-25210 (integer overflow, CWE-190).

Some key links are:

- The change log of release 2.7.4
   https://github.com/libexpat/libexpat/blob/R_2_7_4/expat/Changes

- The fixing pull requests
   - https://github.com/libexpat/libexpat/pull/1131
   - https://github.com/libexpat/libexpat/pull/1075

- The official CVE metadata
   - https://nvd.nist.gov/vuln/detail/CVE-2026-24515
   - https://nvd.nist.gov/vuln/detail/CVE-2026-25210

Best



Sebastian

