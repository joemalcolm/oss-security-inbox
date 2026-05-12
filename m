Received: (qmail 23726 invoked by uid 550); 12 May 2026 17:10:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28340 invoked from network); 12 May 2026 16:59:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778605156;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=obUvPukXx47g650se+sgtco3IV1fT+F0nUR0aPBh2kM=;
	b=jvu/ladp89V9vQMKj/PidlndzHBibxMwjKU/nlKHqq9L2cU/ZqK2Cuezo5ia2MZrM34Wwz
	E1Srn6TZLerBbxfS0VzKMIhu1qJRDFMugbladUyC3AU6JFzL2vfHutRUYM9fniIFdHVRcY
	oG9sSSoxpHEaXGaZp3vktyze+aEuVN6TjuxpNESt3Is6FTuXtMw3p+znBN45and6NZWjnQ
	beTCuGZqbFUY/iZ4XuK5QFpuHTKPTki7AIWaDiZHGA+zyJMUa7mCoXi9cfQi0vFylUaY2z
	JGlYeeAyDWrkM7X+tYkZ+3jEZE2waU0WEStdetnug5KpmqS3nU0CfnTyFfduIw==
Message-ID: <877e1175-83f1-4a74-9980-802dce44a9ca@cpansec.org>
Date: Tue, 12 May 2026 17:59:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTG2Fyj9IZ5EAcOE12LLDDmBEO4g2p8ihjsNhn+OvHuFhrvreM14tDSiIFP9RqNO5PCl8yb4kgYD2OdYLenJi/TsHcz/nmLgxlIKTgrDxPSBfYdp2uEM0Q6pb4ysLEKhJuRw+rkTIkVqkXjbXSGIjbh/7iJQ3bcyhkI5mhXI+hNSCDPAdi+S0C3h0TMMzirq7doV26yQtdlOI5KqjeGAlEDkQzpd1FGJFEejsUaoke1zcNRiQpfNuCa/FvTLkXd05Sn4+Xo4pPRqlMfCCpDWZ1GYlslinJ/ujpuYXAZEwpjr8uAoVx3N4b0i5+r/5pqW+mUMfagG5APbPLptDIOMLnuGE/vNVUFuNeE6vsyHVuOgd/yxeG1n1v45hHbKRl4LpYalWTgVxkCeDGCGmZnDCoE9LxRvv9OGK3KGycfmj319sY6apRZLtw2l1o0T4nUqz1EHmljAwmnub2nD/PW5WJ/AIvNFATvXw4VhECGgGIJorCbw5fW3DhuQU+dvosgG8Kxngm/Gihu01ixRJOvpGQdlX2J+nzXArbtp58sDmAMxa2t6IvwrsDZmCzY5B2m+MBP6CpAhy/9KvmId+w7R7w2/6isClmc6p+4UwMv9oeNZ0CyekJYUBE0P1t9l43CaKTPZDqJ4nRsFDAo4Meh53DcnhvA/IsonycDPqRblxWWRhA
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-5089: YAML::Syck versions before 1.38 for Perl has an
 out-of-bounds read

========================================================================
CVE-2026-5089                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5089
   Distribution:  YAML-Syck
       Versions:  before 1.38

       MetaCPAN:  https://metacpan.org/dist/YAML-Syck
       VCS Repo:  https://github.com/toddr/YAML-Syck


YAML::Syck versions before 1.38 for Perl has an out-of-bounds read

Description
-----------
YAML::Syck versions before 1.38 for Perl  has an out-of-bounds read.

The base60 (sexagesimal) parsing code in perl_syck.h has a buffer
underflow bug in both int#base60 and float#base60 handlers. When
processing the leftmost segment of a colon-separated value (e.g., the 1
in 1:30:45), the inner while loop can decrement a pointer past the
start of the string buffer:

     while ( colon >= ptr && *colon != ':' )
     {
         colon--;
     }
     if ( *colon == ':' ) *colon = '\0';  // colon may be ptr-1 here

When no colon is found (final/leftmost segment), colon becomes ptr-1,
and the subsequent *colon dereference reads one byte before the
allocated buffer.

Problem types
-------------
- CWE-124 Buffer Underwrite ('Buffer Underflow')

Solutions
---------
Upgrade to YAML::Syck version 1.38 or later.


References
----------
https://metacpan.org/release/TODDR/YAML-Syck-1.38/changes
https://github.com/cpan-authors/YAML-Syck/issues/132
https://github.com/cpan-authors/YAML-Syck/pull/133
https://github.com/cpan-authors/YAML-Syck/commit/208a4d3bd1b5cdb4a791a6e3905bd6bd45e9d005.patch



