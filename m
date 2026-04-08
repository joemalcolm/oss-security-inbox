Received: (qmail 11492 invoked by uid 550); 8 Apr 2026 15:44:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11881 invoked from network); 8 Apr 2026 05:56:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1775627790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8hQNjkv5kjXB4Re9N2Vltq822zG0DKbiW4eG90odp2w=;
	b=exWtFavfTu0uVA+poOdhbPtmL6iqzygi+/znqHPGA36IOM164YdPqEiOuc6OmuaLVlAtvQ
	a7mnaqyFDlxvZFnsOTB0hk8dhgYLAHpxWO0LPLtppFnrkk2JWW+C2NzL9ftKaIELzVUasA
	ARSdjT1zGWV9fDB8yYlxIJkZVWKJQ9iZvemOuJ4pisKnqp9e5RJ4FQopTAmnElM6MWfubc
	ZUFrEIiSW8eeBi/fbQOZbuG88/3KMHWxiks77HTsmAeQIeQvoBNAALKxr1PNEo/46PEgZn
	wAiCC2RMZ/WMymmVQBgoZvnPFqYlPYxgMfILrMsm//V9brXMNzVLGgPUoPmqPA==
Message-ID: <987708f9-b499-43e3-97be-e290c722b9cd@cpansec.org>
Date: Wed, 8 Apr 2026 06:56:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTEBSqca8+QiMbnSI8h/g2Usa2daB4x2dfzQcUPkCf6+LeAy3vGUJXi5ni86XkJSRmngUF4wI8eFWA6d8a2GRiLfFrEZprrpV/CYk5J9yvFrgBHEU12W10tbAyhaxP5OCh2jMqdXhPFrL/HwtZXLYkd8cO8alMVrKH76JqxGCwJaP4ZW3St2aX9JaeN/p+koxfT6hlzW4sgOnqBD/vu1mARWyCa3W7usA6xAiWSF4kdvkk0Wxossit2AXraxINvhvbjxMc/Cf5JodhtkdUNqX3q9F+n5jPTh1vG3v3HkhY+WrXMrhaSJLvWa2O1mpgKwi1R4CLN5QTigRlPU8O790VD+S0OLpGTP/0pvkpF8Vz16oEG6p9vZrYohAwIwo0Cj8tG8DAMmQKR/zTxVr2VJwat+jxg+jnbbv/4DIhzgOJ5AaWnJqlt9u1xkIN7MsjdUutgeipf/bI7VO4igRu43LKeWIHDgRH6coRag+nuqayIWL+kCQfSGxKqfu4etYkkuRBD6r/Ik6xZysJDuiU8oFMGvAfLGAOprpaWLMzFdVL1zPxSe9La0A/FdLwNSIyVUVRnqes+bUlK/i3n+pBvFxmbTui5rh1SomRvvyByht9t4tL5me8dcfjdyENDy8vVmHGyCw/86zET1tIRnl2rFxHLslew6BF2oTbFJc4sDlqryJQ
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-5083: Ado::Sessions versions through 0.935 for Perl
 generates insecure session ids

========================================================================
CVE-2026-5083                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5083
   Distribution:  Ado
       Versions:  through 0.935

       MetaCPAN:  https://metacpan.org/dist/Ado
       VCS Repo:  https://github.com/kberov/Ado


Ado::Sessions versions through 0.935 for Perl generates insecure
session ids

Description
-----------
Ado::Sessions versions through 0.935 for Perl generates insecure
session ids.

The session id is generated from a SHA-1 hash seeded with the built-in
rand function, the epoch time, and the PID. The PID will come from a
small set of numbers, and the epoch time may be guessed, if it is not
leaked from the HTTP Date header. The built-in rand function is
unsuitable for cryptographic usage.

Predicable session ids could allow an attacker to gain access to
systems.

Note that Ado is no longer maintained, and has been removed from the
CPAN index. It is still available on BackPAN.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

References
----------
https://github.com/kberov/Ado/issues/112
https://backpan.perl.org/authors/id/B/BE/BEROV/Ado-0.935.tar.gz
https://security.metacpan.org/docs/guides/random-data-for-security.html

Timeline
--------
- 2017-09-02: Last version of Ado was released on CPAN.
- 2018-09-24: Announcement that Ado will not be updated anymore.



