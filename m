Received: (qmail 20405 invoked by uid 550); 30 May 2026 17:01:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8087 invoked from network); 30 May 2026 15:36:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780155386;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=x2SdaueIhoz07dwTprfQmPwyhtrpY7Qi1L151pg8wmg=;
	b=oFZUw/YEPWy6yZR/bWK8ZkO6XaRSoByFHpu8LYFDCxcWmYpJUcK3yUFLNMp5qX04hn/g1G
	+G2TDz3TX3jzu3Id+ov4DgYk1SgPOc7xM+MXu5n6wYwM3VdM+RuJTAWexeqM03sPii2ML3
	+TfwQASHe8dAHokNZrKRyGbXF5M4f5gADnLSO+MQJxD/T2TUvjeatPsPRTV1yePrHI00hx
	I4jqW+UsmwMQTVgo3WH6zOMxtsj1jUcOsZIwESUYr9wkbHhb8X2SX6nraJw4uNfwuHNePB
	9bfHCegrUlRJhDoJZp8w4BIHopv6fmCWpEU5J8wOXpfXNairQBtKdNqTRY2MSw==
Message-ID: <f2d5af94-77ff-4a00-b1cb-471ca7cb3b12@cpansec.org>
Date: Sat, 30 May 2026 16:36:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTFdxQajDD9r2ryMTLJQiEnmbNTpwgFPguU1XaQ9nZRr3JZ6arncSd3IYBzefcdG7XSSXgS1FGLuiXmNeRAk18WmEPmAPy8m4Y48DrBRYOHQIEosZY4CC3x9DXxST6+dUd/xtlUj1dHSawJUeDke0SS+UX35u6OVMZlCuhaS9xojNltFimyj21QMCQHM4kcKQhA0Wd/TCMgh2PDDoVR38n1DrwyfBB7IHZnE5XpAKUdmeapNukBBEWyc/cj4By+rVh4NJZlupa0m9vYB988blsFtQRvpQz3ieme8uwSBe97/sQNaTWL1TF2JYTxlviTtSAmpqkOwAlrH3gnLyn7AG57hl2xiUaMXvPqMuVNynP/jcM/9uwQV0qn91JgZOMyOPqU3ZB3gzNVQfkILfuy7OO2nfI18N4+Qzp9u59xQfGMT0o9wrDOGL0Vj+A/pAf7H7xNpqxwMwawGShNDnIo8+wzKgD1za7tZM31O/T6UGbXXyEzGrBXO0V6zwlDbzLudh/BWsd9nItHLKDB3JAziBDK4xNVgfD3Yzrw2PeAXZ71RsFxGiBZA1h0pT2+yRBIhwCZQSKq3TD1W6+nxhXDy1YVqAEFhnT25UhYDRu2myGJW6kqOMEz07tMum9WB6Pio6eCFMVmKS01QwsQ372TQ0sCYdzHd5fm5JDzEVwvKpTxw2A
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-8594: Text::LineFold versions through 2019.001 for Perl
 duplicate the output based on the number of special break characters

========================================================================
CVE-2026-8594                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8594
   Distribution:  Unicode-LineBreak
       Versions:  through 2019.001

       MetaCPAN:  https://metacpan.org/dist/Unicode-LineBreak
       VCS Repo: https://github.com/hatukanezumi/Unicode-LineBreak/


Text::LineFold versions through 2019.001 for Perl duplicate the output
based on the number of special break characters

Description
-----------
Text::LineFold versions through 2019.001 for Perl duplicate the output
based on the number of special break characters.

Text::LineFold splits the input string by specific line break
characters (such as VT, FF and others) into segments, but applies the
break function to the entire string, not just the segment.

A side effect of this is that the full input can be duplicated for each
segment.  Besides being incorrect, this can lead to unexpected resource
consumption and possible denial of service.

Note that Text::LineFold is part of the Unicode-LineBreak distribution,
which may have a higher version number than the module.

Problem types
-------------
- CWE-405 Asymmetric Resource Consumption (Amplification)
- CWE-407 Inefficient Algorithmic Complexity

Workarounds
-----------
Apply the patch.


References
----------
https://metacpan.org/release/NEZUMI/Unicode-LineBreak-2019.001/source/lib/Text/LineFold.pm#L407-415
https://security.metacpan.org/patches/U/Unicode-LineBreak/2019.001/CVE-2026-8594-r1.patch



