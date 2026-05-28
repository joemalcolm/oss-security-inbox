Received: (qmail 28358 invoked by uid 550); 28 May 2026 20:56:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11965 invoked from network); 28 May 2026 11:39:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779968386;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Z22Wwzp+CB+wNJvmQT6LvTnxjLK96WXMmQ/sR5zTmSE=;
	b=LKKkPJUTIxH/xdCEfD9kYOO5ZuQDop6ofBKzDI2meS6cHUajmRY1icjdBxkaI6nV8TYMvX
	VvBaP1vg+Jkf1Ns8Y3+DxFWyq1IUVp5VO7cizxJZpP1Trp2rkdNA4LDvbC5jyd7v1XkvnC
	rvyCl/eqbPdaB1cerBqi4LjwvMsZp9BRS3uj7qvC/dzK+MJ4KD0IjPcpITQQrn1e5s+S48
	jtcaGc1RY3uvsSR7fhFf1Zhabijf6IA0Wwh0V+pVplkUCPlPiAaCirsGq7E/5tHEeyfUn1
	RpmI8guEixTOTN7yJzsSJRLokpEWmqc9jV8fYGggZ4jID1HRYkr+ar4GrqAbvA==
Message-ID: <af71576b-1914-49ba-8579-b0823e296df8@cpansec.org>
Date: Thu, 28 May 2026 12:39:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Score: 0
X-GND-Cause: dmFkZTFPts7nsQnEd5Xtg4CIMotEswFVRKZpGN15LVZx/3R50Y1bRwcfXRDMUlZINKUnmAzNttfnMfGre/89BwSkAqbGMnIjOuhOgd4pQ1tBWdY2GJNBw502jmHfeBIFp5RvhIkyoCRlqWshXgfMI2awgKcXHyEh5k6FFHm4muVfdY3Dc7Qqs6LPwt0ZMrbTwPqypWwA0u/5FYMyiLrz47XAl7kTJOeXwz7qCWTY2OzVzL76kas8of7ghXXcGVmo2HGRapcx9vCoVGElAcpWkvoZWgdrlrtodZAn48r9PC0HSOaKW9xLD8+G8OgCUje46sAJBhlZQ7fw3pS9lJoFhCRr8CdMRBcpy9fSAwcwolEnev9OHuYE3nv6UNa+h40qUZtuGQeqRvBo2F8Wju5VEyTPwCEfPFdiOGlW7q5W1r4gCnIRjgp+oth0BJG15+4CUNNze9boi/0XaSDVGb3CEN5ccZONtgktfLIze956B/HGeuZlX7wK5EkjPU6qhT4JIhGIsHEqRnNQfgaM29G841d/WxzOeEmyhCh1BUcFnlSn26OQGfnZiKg6sOkDmBoHsL6Fx5OhKILkaxSLX1eTLwe5JM1fstiF4esBohXdIJkXq0pVJ8yq3oWQF/saw4XWIu6P2uFboGfO32w9gI7ngO8c7r/3HdyRHir0GWulAT0zs75hzw
X-GND-State: clean
Subject: [oss-security] CVE-2026-9658: Plack::Middleware::Security::Common versions before
 0.13.1 for Perl did not block header injections in request paths

========================================================================
CVE-2026-9658                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-9658
   Distribution:  Plack-Middleware-Security-Simple
       Versions:  before 0.13.1

       MetaCPAN: https://metacpan.org/dist/Plack-Middleware-Security-Simple
       VCS Repo: https://github.com/robrwo/Plack-Middleware-Security-Simple


Plack::Middleware::Security::Common versions before 0.13.1 for Perl did
not block header injections in request paths

Description
-----------
Plack::Middleware::Security::Common versions before 0.13.1 for Perl did
not block header injections in request paths.

The header injection rule was ineffective at blocking header injections
in the request paths unless they were double-encoded, for example,

   GET /path\r\nHTTP/1.1\r\nHost: secret.example.com

Note that it is unclear whether request paths with CRLF followed by
additional headers would be blocked by reverse proxies, or how they
would be processed by Plack-based servers.

Problem types
-------------
- CWE-790 Improper Filtering of Special Elements
- CWE-113 Improper Neutralization of CRLF Sequences in HTTP Headers

Workarounds
-----------
Use with the the the non_printable_chars rule to block header
injections.


Solutions
---------
Upgrade to 0.13.1 or later.


References
----------
https://metacpan.org/release/RRWO/Plack-Middleware-Security-Simple-v0.13.1/changes



