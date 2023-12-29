Received: (qmail 29725 invoked by uid 550); 29 Dec 2023 16:15:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17427 invoked from network); 29 Dec 2023 15:57:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io;
	s=protonmail2; t=1703865496; x=1704124696;
	bh=Wz3Eq55uGVMdipM4S3PCERvNGoH8ZpeHfAqKjcGgSZg=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=C7GIdvnvqWPjewuJOdcegug5xM5x3fVA4eVhX0haNiB0tQT8wDQ1MIgDFA+TZ6pUH
	 xSFDtsPqSttNhYC60p5mYi4wYtYYiJom/M20uF8QJD7UyCsdbe+ciddp/Y6jnAPaEf
	 wJHHIYwilKD1+k5cMI+nkzNOiwMrW6m5MBFHtKjr4j/SByfXHpIo21iqawsPYBmGF2
	 JrjZscSBgOi69oDnwYY+h515Lx2/K8TSAF3WurhV7ixNH7Y+oHoo3dTuadICo47XCr
	 ocRImm8SF+4fdDaoDp9pIoOrX1bE/KCt5lPBX7P580aYLv9TANL8eT5kxx7z67Ls60
	 mPktGx98Bh4ew==
Date: Fri, 29 Dec 2023 15:57:51 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Stig Palmquist <stig@stig.io>
Cc: "cpan-security@perl.org" <cpan-security@perl.org>
Message-ID: <u_37zo4-c8MMB7MsMhIWnl6UEq-x6XthS05w8OvrztTMgixZQWX1nf2zdsHsobnpojkG2ya44HMch-biNuT4sRGWS16EGd0EKWerHgtgmZA=@stig.io>
Feedback-ID: 79171626:user:proton
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="b1_sp9bljSv4ETyLge9VVz5uYwlgOz1aXABwtkxuCkwAyA"
Subject: [oss-security] CVE-2023-7101: Spreadsheet::ParseExcel for Perl is vulnerable to arbitrary code execution

--b1_sp9bljSv4ETyLge9VVz5uYwlgOz1aXABwtkxuCkwAyA
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGksCgpUaGUgQ1BBTiBTZWN1cml0eSBXRyB3YXMgcmVjZW50bHkgaW5mb3Jt
ZWQgdGhhdCB0aGUgUGVybCBtb2R1bGUgU3ByZWFkc2hlZXQ6OlBhcnNlRXhj
ZWwgMC42NSAoYW5kIGVhcmxpZXIpIGlzIHZ1bG5lcmFibGUgdG8gYXJiaXRy
YXJ5IGNvZGUgZXhlY3V0aW9uLgoKVXNlcnMgc2hvdWxkIHVwZ3JhZGUgdG8g
dmVyc2lvbiAwLjY2IGFzIHNvb24gYXMgcG9zc2libGUuCgpVcGRhdGVkIFZl
cnNpb246Cmh0dHBzOi8vbWV0YWNwYW4ub3JnL3JlbGVhc2UvSk1DTkFNQVJB
L1NwcmVhZHNoZWV0LVBhcnNlRXhjZWwtMC42NgoKUGF0Y2g6Cmh0dHBzOi8v
Z2l0aHViLmNvbS9qbWNuYW1hcmEvc3ByZWFkc2hlZXQtcGFyc2VleGNlbC9j
b21taXQvYmQzMTU5Mjc3ZTc0NTQ2OGUyYzU1MzQxN2IzNWQ1ZDdkYzc0MDVi
Yy5wYXRjaAoKUmVmZXJlbmNlczoKaHR0cHM6Ly9jdmUubWl0cmUub3JnL2Nn
aS1iaW4vY3ZlbmFtZS5jZ2k/bmFtZT1DVkUtMjAyMy03MTAxCmh0dHBzOi8v
Z2l0aHViLmNvbS9tYW5kaWFudC9WdWxuZXJhYmlsaXR5LURpc2Nsb3N1cmVz
L2Jsb2IvbWFzdGVyLzIwMjMvTU5EVC0yMDIzLTAwMTkubWQKCkJlc3QsClN0
aWc=

--b1_sp9bljSv4ETyLge9VVz5uYwlgOz1aXABwtkxuCkwAyA--

