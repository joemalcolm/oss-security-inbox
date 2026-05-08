Received: (qmail 32029 invoked by uid 550); 8 May 2026 16:49:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32006 invoked from network); 8 May 2026 16:49:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1778258976;
	bh=j/LzxuifBrHSHMy7Q7DTSRh5TTs5HA/MnKkl5qQjOyE=;
	h=Date:From:Subject:To;
	b=n1ZHmcbGaJMMIblIHMVaI53tz1jVxe9shci5NUSKtHUpK19fhiSca4NqOF2RV1D+M
	 6I/Hv1ULwCmrYEjJyUrSKHlFZWJAqYpuVCmGyyz+D5CK6tDsBW/UmoEi9jbz23PZv1
	 1SCGjzGppssFvR7H3ceUXFM+1dG7pIhAoW658NzgZ83EPVWYTsHin/9T5MGxmgiJBs
	 ckF32O6HmZhNrpSUr5TcxmByVnafOrfYt/E+KMvVqaoWLdZhmm7OmE/hDJY6UdEGw0
	 12ssqhm7D16TdX0y4PSj4thsIAxCM3+ZuM6nGGi1MrGUM6TGo7w3/WGiRPN1NU1jWr
	 C1NUA1C++c64w==
Message-ID: <e4ab0b96-0c8b-4c45-b2ed-0f4606a5cb06@pipping.org>
Date: Fri, 8 May 2026 18:49:35 +0200
MIME-Version: 1.0
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] BioPython 1.87 fixes CVE-2025-68463 (XXE, SSRF)

Hello oss-security,


just a quick note that BioPython 1.87 released 2026-03-30 is fixing
CVE-2025-68463: XXE/SSRF in Bio.Entrez.* .

Some key links are:

- The detailed report with PoC
   https://github.com/biopython/biopython/issues/5109

- The two related pull requests
   - https://github.com/biopython/biopython/pull/5114
   - https://github.com/biopython/biopython/pull/5148

- The change log of release 1.87
   https://github.com/biopython/biopython/blob/biopython-187/NEWS.rst

- The official CVE metadata
   https://nvd.nist.gov/vuln/detail/CVE-2025-68463

Best



Sebastian

