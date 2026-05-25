Received: (qmail 24264 invoked by uid 550); 26 May 2026 00:17:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25637 invoked from network); 25 May 2026 23:55:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779753309;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QyHHVb0lRizJJU4xJFFpYqQ4d+GDsT3BGd6peF9HRP8=;
	b=P2DanI2rV5CJSjuiCo3rqoP6gR0ASQiMbp2nOhZMNRiON2W50iShvFai81N+vHeBEU/xr7
	hXjumTlaq+Lna/oceisMU7WC5CmqGGmbekTl7MYlB51SEI2eyxMF+6zGUZoJTLlyDevW1O
	F0EOgKAW8+UFRF667TIoGN48BTK+Gkvnk9Eo5NNPpQzZiK3hbbz1rlQ8Pc6/d0d00o1SZw
	3qfqRhlsEvHQVawe9LHNTUOooaQRd71hjYDbwmk4+kDdmYbQL5BQtIwZjQFoZ7VWsM8r2i
	pdZdoSYi33oeVjeRkE9MgkBpMRBhuFhsBk8gxEl2GyfA1KmFL6D72EeyYNS0aQ==
MIME-Version: 1.0
Date: Mon, 25 May 2026 20:55:09 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <ba11f0276bd2dd692251a779a35d2e84@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-Score: -100
X-GND-Cause: dmFkZTE8wVTLLkukar1xy0ps2nnLzmVK1G4p7G/LFd85CydIm6KtAHUUXKGpJFcPXft6NxhIA2MEnfk68R13MZj7qAehDf7qv24xO7mvgudfmiKEK8HHZqehLODGTUcWx7OcQjMKtWpf5wcdEzjbOWFk9JwXQCHx06lH7di2DbJEaSCQYQP3wfTKlxes/FpiK+Grq1vCiOevapdnbjvP4Hpa5DucWPuxS43bqgs/e9p+/7x1ExCGeJCWp3KNJIxw1t+sMiwn/fTPxeqjWalEjvJdkB479BI86denPqFd3AhROnO7tv7rdQ7GkUYBOnBt4LIr7wZQLEHnkmrFQpNgwoHAwZCAJKsFwfH/Sp3mcqJ7v1HvYeI7/ymJ3eCo3AR4ZTdGnnRSr+9D6yqXAwk8jaKZc2HUr0cG9qFojBwyymFoxpVs9Mq+G+4XcH6AddGaeTZdS5G0YbKFdnfprienaPElg4aMeLZxUUbYsoOd7SFCb/v7imItZNfrUBPCMH8HE5QEW4+RPFFnCjwlOtZnGnzbFHz3atKCQnO4+qIEA0kz7o/tcF6z8MQp71c4uzUFxYkmNTPARFahdT9VvLmtZkicsG8EUl+3Y2jyZphGc2pY39GITu532zl79aYdKerZpdvPsS5HLvzsu44izKjunMBIYIzzgDQ9TYBMCe6SfY5km9XGww
X-GND-State: clean
Subject: [oss-security] CVE-2026-8376: Perl versions through 5.43.10 have a heap buffer
 overflow when compiling regular expressions with a repeated fixed string on
 32-bit builds

========================================================================
CVE-2026-8376                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8376
   Distribution:  perl
       Versions:  through 5.43.10

       MetaCPAN:  https://metacpan.org/dist/perl
       VCS Repo:  https://github.com/Perl/perl5


Perl versions through 5.43.10 have a heap buffer overflow when
compiling regular expressions with a repeated fixed string on 32-bit
builds

Description
-----------
Perl versions through 5.43.10 have a heap buffer overflow when
compiling regular expressions with a repeated fixed string on 32-bit
builds.

Perl_study_chunk in regcomp_study.c checked the size of the joined
substring buffer in characters rather than bytes. For a quantified
fixed substring with a large minimum count, the byte length mincount *
l could overflow SSize_t, producing an undersized SvGROW allocation;
the subsequent copy writes past the end of the buffer.

A caller that compiles an attacker-controlled regular expression on a
32-bit perl build triggers a heap buffer overflow at compile time.

Problem types
-------------
- CWE-680 Integer Overflow to Buffer Overflow

Workarounds
-----------
On 32-bit perl builds, avoid compiling regular expressions from
untrusted input until a fixed release is installed.


Solutions
---------
Upgrade to a future perl release, or apply the upstream patch.


References
----------
https://github.com/Perl/perl5/commit/5e7f119eb2bb1181be908701f22bf7068e722f1c.patch

Timeline
--------
- 2026-04-24: Issue reported.
- 2026-05-20: Fix merged to blead.
