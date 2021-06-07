X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1715" "Monday" "7" "June" "2021" "10:54:03" "-0600" "Dino Team" "team@dino.im" nil "52" "[oss-security] [CVE-2021-33896] Path traversal in Dino file transfers" nil nil nil "6" nil nil (number mark "U       team@dino.im Jun  7   52/1715  " thread-indent "\"[oss-security] [CVE-2021-33896] Path traversal in Dino file transfers\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-33896] Path traversal in Dino file transfers" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22256 invoked by uid 550); 7 Jun 2021 17:32:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30611 invoked from network); 7 Jun 2021 16:54:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=dino.im; s=20200526;
	t=1623084845; bh=OL/rTSuh4ctqFXccAs2P3EgdoAXt33g39oG/vV7i+QE=;
	h=To:From:Subject:Date:From;
	b=aXG4RQx+8AI4Ii+wLhhqXBkSgKFflDmfa+lwe5U1YZekz4yhABYxxeKTuQQHAyytH
	 HVCoR7Ejm5WmetN9BJEWrsZZlKf9TpWVUEwUUqY1HKLcQ/VbZwCTxMDuzc6jZWE6zA
	 zRoRmNw0F6It4iT0q0D/hXnJ6CHnhMOw+opDMdGXXBfsCNqrp5xDPe3bzBHxBiQTtb
	 y3Prz/n6yWk7hsjGzcW5DYydwSDjGiwbUSaClG5zsMBi1B+9A7YLlTybNA1PavKzkH
	 iVTJRFK57+FKvIiDmmuvyPD/+m/LStZB8k3F6pCmiJhupA4Fn29MfE7caEl0zB7YQh
	 kCaEshMGyQbWg==
To: oss-security@lists.openwall.com
From: Dino Team <team@dino.im>
Message-ID: <392f934a-f937-7b29-5f7f-5df3ee60d8a8@larma.de>
Date: Mon, 7 Jun 2021 10:54:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] [CVE-2021-33896] Path traversal in Dino file transfers

### Affected software

Dino (Instant Messenger) - https://dino.im/

### Severity

Medium (4.7): AV:N/AC:L/PR:N/UI:R/S:C/C:N/I:L/A:N

### Affected versions
- Release version 0.2.0
- Release version 0.1.1 and earlier
- Nightly version 0.2.0~git113.20210601.1ac16ecd and earlier

### Fixed versions
- Release version 0.2.1
- Release version 0.1.2
- Nightly version 0.2.0~git114.20210607.0c8d25b7

### Description

It was discovered that when a user receives and downloads a file in
Dino, URI-encoded path separators in the file name will be decoded,
allowing an attacker to traverse directories and create arbitrary files
in the context of the user.

This vulnerability does not allow to overwrite or modify existing files
and the attacker cannot control the executable flag of created files.
However, third-party software may be affected by newly created
configuration files, potentially allowing for code execution.

The file name, including path separators, is displayed to the user,
however, long file names are ellipsized in the middle of the file name,
allowing the attacker to hide the malicious path separators, as long as
the resulting file name has sufficient length.

### Advice

All deployments should upgrade to a fixed version or apply the patch
from commit 0c8d25b7a3e7a10a506f1e19b868fe9b0c761495.

### Credits

Many thanks to CTurt (Google) for discovering and reporting this issue.

### Links

- https://dino.im/security/cve-2021-33896/
- https://github.com/dino/dino/commit/0c8d25b7
- https://github.com/dino/dino/releases/tag/v0.2.1
- https://github.com/dino/dino/releases/tag/v0.1.2
- https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-33896
- https://nvd.nist.gov/vuln/detail/CVE-2021-33896
