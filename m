Received: (qmail 19926 invoked by uid 550); 15 May 2026 19:31:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1812 invoked from network); 15 May 2026 11:00:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778842826;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CcsljG1KAvDxfYrX1H8JG0H7yzy6Je8QKw0X8c2YF18=;
	b=ZDwYYITRQ6c9MVGjN8d0QBBHZ3ukfHLNe09Y3dL8fNbEGO1xMDjKAjrAIbR/nlhb3t3+gN
	S/wO7YrHsDpwJl98jbsrNCNWOcAesc8+WvCrMIRAqjaIwfb33nSuo1PIBRV3FO47WXt1eK
	0tUU2B1yo7WEyg7wV8psYkVjOeC7+qg/3ASCIDGz99xjISWFNNRIYD+K9wOa5gBwFObjRt
	+k8CThaxRcTNHjA7og0Oe2MW0v2WvvboQsbT8KX8Fh2Qn5xCigf+zm6ItJodbHwCW+HiXs
	TBARZCLYavxs/FJFZiak8tu2FYMfRYbfvvotf6pGPdT0Q0dytRPzyORgLbHkYw==
MIME-Version: 1.0
Date: Fri, 15 May 2026 08:00:26 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <b2d26d1ff711eeed1b43c8cd2a4ae838@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: dmFkZTGwd/oDXk6uPy0m3tX+NJUq7EgBEE7TkX2Siq3Y2WC7uE3nFa0ckTeQw7TwGk5DpSw5spUKmwhHxgNI334V8eLLa8K6j06Tl9mlcQqbSy/IYJcG5xlwT2arZXv3drlR+lofJ7AfYlnxKT2elLGJwxQ9iIfUEtQE7CwB7y09a40pXihcuoyyu10HaHk4L6KlHoG0Dyw0vzk34BWR+MEKnK104EY2bGcmPNmm0K1EN8UEIBU0kT4IWKON4kBXEAWTpii9zF4q2/JDBexPWG6RVQBKOLgMjhOAEgxS1B1PR5TxfTIAMSOhlHErmkQV9oJsG5y/E/PY2s8H3morxiRyaJ29oBlkbUVlxFqE7bsFmXKy9isF/WBryIJhKRfpsB9Kvt/qZC1D/bkYtNF2ze+ywMrwfu4126exwooCSaLO2B1Ej8NQhJOBdmr0TP5okj6m1H0OkbTD5vcd/5Kud3aEkWE/83mDGv2d2xwp+LdrkOlHMfgjdQt3WGMLWAFf6Jvz562HqbmCWUusD3ibzNwiArHXwJavWRCobRxI9uk2ioio1BGO9+47uW2uwE+7BuoWcYCQHO7lEam9CydlVSB37g1QoQPicQsk/XIxQzWHUwH+82uEqopQlEZYYrWkGiGiQB97EvJxdmPmEkc9wX/XTOxzUSp20so5B6RJFkV4FDSuAg
Subject: [oss-security] CVE-2026-8454: Imager::File::GIF versions through 1.002 for Perl
 allow a heap out of bounds (OOB) write on crafted multi-frame GIF files

========================================================================
CVE-2026-8454                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8454
   Distribution:  Imager-File-GIF
       Versions:  through 1.002

       MetaCPAN:  https://metacpan.org/dist/Imager-File-GIF
       VCS Repo:  https://github.com/tonycoz/imager


Imager::File::GIF versions through 1.002 for Perl allow a heap out of
bounds (OOB) write on crafted multi-frame GIF files

Description
-----------
Imager::File::GIF versions through 1.002 for Perl allow a heap out of
bounds (OOB) write on crafted multi-frame GIF files.

Imager::File::GIF's i_readgif_multi_low allocates a single per-row
buffer GifRow sized for the GIF's global screen width 'SWidth' and
reuses it across every image in the file.

The page-match branch validates Image.Width + Image.Left > SWidth
before each DGifGetLine write, but the parallel skip-image branch at
imgif.c:790-805 calls DGifGetLine(GifFile, GifRow, Width) with no such
check.

Problem types
-------------
- CWE-787 Out-of-bounds Write

Solutions
---------
Upgrade to Imager::File::GIF 1.003.


References
----------
https://metacpan.org/release/TONYC/Imager-File-GIF-1.003/source/Changes
https://github.com/tonycoz/imager/commit/782e9c06cc75a0f7eed383f39522f51f44598b04.patch

Timeline
--------
- 2026-05-12: Issue identified
- 2026-05-13: Issue reported to maintainer
- 2026-05-14: Maintainer acknowledged the report
- 2026-05-15: Fixed version released
