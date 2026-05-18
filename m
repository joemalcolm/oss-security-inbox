Received: (qmail 32151 invoked by uid 550); 18 May 2026 06:42:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28439 invoked from network); 18 May 2026 06:42:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779086513;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fQfk7ruUIRkSqBvcvGlibgugMjy1BWTN01n63jJG8/s=;
	b=dYowo6f3KYo1T68HsPEKHx3z54xfPjYVhneqP0ISjvRY06pqkHA2QWPRejA2Sa7bd438Xi
	fI2vHY8mVgyOibls0Wv2t3oK9hceP+IuVbGNXnpLmSqDAWNwk2/1JWjmExthqOom1a/9Q1
	n0CN5kcTSePUGCrWocPpxDBUA20x4f7wEqcpABXK1GS3gfzSwUY91EEv7cMCai9nypZKBB
	HSL1JXT7lBYrxJ4GzhfWa/FvZ1+ER1JIkvDyigQfCd5b3wyCQ9UkJ/oywA/hY621FqtShO
	9lDAW4rSFUaN9Yb+r2pvGEOCn/komQcXGeGb9MLCL9VKLAG7ky1d7R3PRqkfFA==
Message-ID: <f1416217-3d7d-4d46-8a7b-a87a5c694516@cpansec.org>
Date: Mon, 18 May 2026 07:41:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTFJoDnZNE2xVHP1ap5CeuEQQN7emC7gDNKqdDMMWHOc8M9uCbk7TthqT2xv9jF5XWnhx6yYQ0Q/FHlnllRrfnzIVXprEFgOXdFDxswbFGq3jbhGXfoaNKzrlkHLDlX2WtJ9lWdA17V5QU3CEjLhwtZ5UCHGfjmQ8g2m4dJF7nJZRGSjoNpX4jncaTDFXg8edyPg0x1t2n5ut/44DGWTsAqph437NfeXkanOw5SGV2gA1ddLZpG8smO9jx0lcSKR4H9U5dqohOofO/vulKULb+r4aPDRAhl7QDyLFcmf9zwvvimUTr2WBhsUzKQjOipQrzqbRVCKE2mvnJF3qQBsWdqRKAezZP94T9zTSOb7hvI96G0bQomaa/vz3AQOyOwB+Brh/S/w05VGIHynClHd9lmv4FmlpXwGfg4XyD+FLXMYB3v0UWioonNjf+pslwrd14am6FX+xi1A9If6Ico8PyogbKCR1GUNtXvchlln9ijPHmAAdcNxKP41NXQzyZ8LBYumzdO+tsEftpfkXH8gQ+CiSby6n6A0jJk0Bkjy+WtsMDoHjahGNU1DQvyNJdxvWSu28hjWnLpKYohJyVVrSAhBdKabsJ2gg01AO7lI2Pv2Z8N9SlWaf34PvaprxCLKkP1CRkItwO3bcBlKKULfrJI0KF50RLKpUsrAg7W3rOhE8Q
Subject: [oss-security] CVE-2026-8788: Net::Statsd::Lite versions through 0.10.0 for Perl
 allowed metric injections

========================================================================
CVE-2026-8788                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8788
   Distribution:  Net-Statsd-Lite
       Versions:  through 0.10.0

       MetaCPAN:  https://metacpan.org/dist/Net-Statsd-Lite
       VCS Repo:  https://github.com/robrwo/Net-Statsd-Lite


Net::Statsd::Lite versions through 0.10.0 for Perl allowed metric
injections

Description
-----------
Net::Statsd::Lite versions through 0.10.0 for Perl allowed metric
injections.

The values from the set_add method were not checked for newlines,
colons or pipes. Metrics generated from untrusted sources could inject
additional statsd metrics.

Note that version 0.9.0 fixed a similar issue CVE-2026-46719 for metric
names.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Workarounds
-----------
In version 0.10.0, use the secure_set_add method which logs an HMAC
digest of the value instead of the raw value.

Validate that all values sent to the client based on untrusted data do
not contain metric injections.


Solutions
---------
Upgrade to Net::Statsd::Lite version 0.10.1 or later.


References
----------
https://metacpan.org/release/RRWO/Net-Statsd-Lite-v0.10.1/changes
https://www.cve.org/CVERecord?id=CVE-2026-46719

Timeline
--------
- 2026-05-14: Issue reported to CPANSec
- 2026-05-15: Author notified
- 2026-05-16: Fix released for CVE-2026-46719
- 2026-05-17: CVE-2026-8788 identified by author
- 2025-05-17: Fix released for CVE-2026-8788


