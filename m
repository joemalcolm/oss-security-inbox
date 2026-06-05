Received: (qmail 5322 invoked by uid 550); 6 Jun 2026 02:57:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7669 invoked from network); 5 Jun 2026 14:46:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780670760;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uUfOgph44h0cDPc2171LlymmW2lKjxd4C5dzzk5T0bY=;
	b=f6yI0YHptdqgJhQBElHiDb/0Gp40qmketjZkZ0J/28i9n6XM3+9knPaS7Mdpc7r7Bqc/Rg
	9pl7+Zi0B7XwvWCI6gXarHeYwkgsiOlou6It4sCMAToYwYeulaRiFT6Eyd0Doq6PvdONW0
	ArtjqsCFjISup5DwVvRndYE/xLWP3Kkk9XVVHpX7e5HJAG1/w9wS9fqlI4a0y+N7Yz0mFv
	QsN6ibGNIkUTKQq2DpqydN4wyHwr62Xzbu4yXudu/M+DR1oIb44yqtynMZ24hFD4OojZ4n
	HMxR6wVz6BJ0m3NFR2DFrqWW3XYXYkQv3xpleN30QDpjhLyHKJEe9PVge1oTkQ==
Message-ID: <a2581943-ea69-4b2a-95a0-968340275f5f@cpansec.org>
Date: Fri, 5 Jun 2026 15:45:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTEovWNT3gB41WAUXsrThHocTpYNW7L3QrcrKzsxrXIyntuhLeIuuW/0UoLNEa+D8+NewUui9Uoaa91ScUp2tm8yfvprYDije2jiV5xAtLEdhUhkEePrhgJXGoEhsLZaq3Oa1mejTnCd5hyB6jnjezzEgoo0nMZPAo74QF6/6rioPZ/qsztxO4o45fC9ajGxKXLNwNLFSq17kutKxi5VixCvBh/uZgkffwFJlQE0dycT/Llq0RD7PF59b3kLcIYVBDaoepi0drhMTeDZ6zA/f3hjyz7mGU32pMdqcp+F2/fTzTb5aEYV725477Tc4BFc3GM3bCexLNo+ih8kLQBmW8R9nHR5yYzy7hZOjhFstpjc6+/s7Wx1qcrpKL1BML8WzC7UJ+QJw5vuo/DTgJQrK/onXKr4eya/+L7HYlb2SgNW+kFG1X/b2KS1sB1iRjhhSJQvmbCxbuDtoCxvLQemIF8Whq6HoGmhuHQ4CBzqUPgsPvCEyV4JzY+BEvw0GTVLLw7OaQxBNG5V6yVKaiK9rpy9LUXJXz+Uq8Xn1LYihBVwMTpgmsAlEETPAmRku6deMI5eG7v5XKxWGwH3FLhVkK+56V7PY4wq3R4Y3Bxs7POoo+qj3WWvSRkST6vBbyrAbV0gAKcRjAsy1cmwc1kme3I0bGU0Xjmq1+MfdWLzZfvH2g
Subject: [oss-security] CVE-2026-11362: DataDog::DogStatsd versions through 0.07 for Perl
 allow metric injections from event tags

========================================================================
CVE-2026-11362                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-11362
   Distribution:  DataDog-DogStatsd
       Versions:  through 0.07

       MetaCPAN:  https://metacpan.org/dist/DataDog-DogStatsd
       VCS Repo:  https://github.com/binary-com/dogstatsd-perl


DataDog::DogStatsd versions through 0.07 for Perl allow metric
injections from event tags

Description
-----------
DataDog::DogStatsd versions through 0.07 for Perl allow metric
injections from event tags.

DataDog::DogStatsd does not properly sanitise input, allowing metric
injections of data from untrusted sources.

The format_event method (used by the event method) does not validate
the content of the tags, which may contain commas (allowing tags to be
injected) or newlines, pipes and colons that allow metric injections.
(There is an ineffective s/|//g to remove pipes, but because the pipe
is not escaped, it is interpreted as a regular expression metacharacter
and has no effect.)

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences
- CWE-150 Improper Neutralization of Escape, Meta, or Control Sequences

Workarounds
-----------
Ensure that metric names, values and tags come from trusted sources or
are properly sanitised.


References
----------
https://www.cve.org/CVERecord?id=CVE-2026-46741
https://www.cve.org/CVERecord?id=CVE-2026-46719
https://www.cve.org/CVERecord?id=CVE-2026-46720



