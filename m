Received: (qmail 24328 invoked by uid 550); 5 Jun 2025 18:17:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24009 invoked from network); 5 Jun 2025 12:00:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1749124842;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=NSqF+w02mFV2uvGV2BbDUIVKS3JMRDoigWqTFHWzhnA=;
	b=X9DhncSQMY/OP3WWDcxrfRf5JhtKeB0Frs+qOElJ0Qyx+a6jQ+UP/NICUynOZAsy4Nr/UO
	81t2P7cRWPxv7MOJWsjKFCOCJlseDZTRSOubhzU8lEmN5YztU5bUH6q4cNgeBAzy5k7tSR
	raf6wIWRrlleY0dqbqdCLN2sMIA3k2MQbhNmKIkeIgDELe+yedwS8mrv6B71xSSfsSTUxP
	jiJh+ptCZkFZgUHRHhOahCCl4kgYQNxMPyCgXojfhsen+iatLmoamhwOGt5gGg2+3fcYm3
	EG9uOcedavNIRvo0D+95yfLE7rXHudpyykW9l/RDNfn95iZKt4GSsqR0SlDCYQ==
MIME-Version: 1.0
Date: Thu, 05 Jun 2025 09:00:42 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: oss-security@lists.openwall.com
Message-ID: <af08b59edaa5fd29007603e146a3a43e@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: multipart/mixed;
 boundary="=_098a4ed6955856d6ec51b3c3f4a1d913"
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdefiedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepggffhffvuffkgigtsehmtdhjredttddvnecuhfhrohhmpefvihhmohhthhihucfnvghgghgvuceothhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgqeenucggtffrrghtthgvrhhnpeekhfejtdfhvdelffelgfefudffhfeugffgvedvgfejiedugfekhfetleekueelkeenucffohhmrghinhepmhgvthgrtghprghnrdhorhhgpdhgihhthhhusgdrtghomhdprhhulhgvrdhpmhdptghprghnrdhorhhgnecukfhppedutddrvddttddrvddtuddrvddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddtrddvtddtrddvtddurddvuddphhgvlhhopeifvggsmhgrihhlrdhgrghnughirdhnvghtpdhmrghilhhfrhhomhepthhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-GND-Sasl: timlegge@cpansec.org
Subject: [oss-security] CVE-2011-10007: File::Find::Rule through 0.34 for Perl is vulnerable
 to Arbitrary Code Execution when `grep()` encounters a crafted file name

--=_098a4ed6955856d6ec51b3c3f4a1d913
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

========================================================================
CVE-2011-10007                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2011-10007
   Distribution:  File-Find-Rule
       Versions:  through 0.34

       MetaCPAN:  https://metacpan.org/dist/File-Find-Rule
       VCS Repo:  https://github.com/richardc/perl-file-find-rule


File::Find::Rule through 0.34 for Perl is vulnerable to Arbitrary Code
Execution when `grep()` encounters a crafted file name

Description
-----------
File::Find::Rule through 0.34 for Perl is vulnerable to Arbitrary Code
Execution when `grep()` encounters a crafted filename.

A file handle is opened with the 2 argument form of `open()` allowing
an attacker controlled filename to provide the MODE parameter to
`open()`, turning the filename into a command to be executed.

Example:

$ mkdir /tmp/poc; echo > "/tmp/poc/|id"
$ perl -MFile::Find::Rule \
     -E 'File::Find::Rule->grep("foo")->in("/tmp/poc")'
uid=1000(user) gid=1000(user) groups=1000(user),100(users)

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
   Command ('OS Command Injection')

Solutions
---------
Users should update to a fixed version when available, or apply the
patch provided in the references section, or use a patched version
provided by their OS distribution


References
----------
https://metacpan.org/release/RCLAMP/File-Find-Rule-0.34/source/lib/File/Find/Rule.pm#L423
https://rt.cpan.org/Public/Bug/Display.html?id=64504
https://github.com/richardc/perl-file-find-rule/pull/4
https://github.com/richardc/perl-file-find-rule/commit/df58128bcee4c1da78c34d7f3fe1357e575ad56f.patch

Timeline
--------
- 2011-01-04: A bug was reported by Kevin Ryde to the upstream RT
   bugtracker described as "grep() can truncate files".
- 2025-06-04: CPANSec became aware of the bug and started triage. Code
   execution impact was confirmed, a patch was made, and the author, the
   distros list and additional downstream vendors were notified.

--=_098a4ed6955856d6ec51b3c3f4a1d913
Content-Transfer-Encoding: base64
Content-Type: text/x-diff; charset=us-ascii;
 name=0001-Fix-CVE-2011-10007-for-File-Find-Rule.patch
Content-Disposition: attachment;
 filename=0001-Fix-CVE-2011-10007-for-File-Find-Rule.patch;
 size=680

RnJvbSBlMzg5MjMxNzliODg5ZTdiMDNlNTQ5MTMwYTM4ZWM0ZTRhMjhiN2Q4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTdGlnIFBhbG1xdWlzdCA8c3RpZ0BzdGlnLmlvPgpEYXRlOiBU
aHUsIDUgSnVuIDIwMjUgMDM6NDU6NTAgKzAyMDAKU3ViamVjdDogW1BBVENIXSBGaXggQ1ZFLTIw
MTEtMTAwMDcgZm9yIEZpbGU6OkZpbmQ6OlJ1bGUKCi0tLQogbGliL0ZpbGUvRmluZC9SdWxlLnBt
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvbGliL0ZpbGUvRmluZC9SdWxlLnBtIGIvbGliL0ZpbGUvRmluZC9SdWxlLnBt
CmluZGV4IGZlY2NjNzYuLmQ0ZGM0NzUgMTAwNjQ0Ci0tLSBhL2xpYi9GaWxlL0ZpbmQvUnVsZS5w
bQorKysgYi9saWIvRmlsZS9GaW5kL1J1bGUucG0KQEAgLTQyMCw3ICs0MjAsNyBAQCBzdWIgZ3Jl
cCB7CiAKICAgICAkc2VsZi0+ZXhlYyggc3ViIHsKICAgICAgICAgbG9jYWwgKkZJTEU7Ci0gICAg
ICAgIG9wZW4gRklMRSwgJF8gb3IgcmV0dXJuOworICAgICAgICBvcGVuIEZJTEUsICc8JywgJF8g
b3IgcmV0dXJuOwogICAgICAgICBsb2NhbCAoJF8sICQuKTsKICAgICAgICAgd2hpbGUgKDxGSUxF
PikgewogICAgICAgICAgICAgZm9yIG15ICRwIChAcGF0dGVybikgewotLSAKMi40OS4wCgo=

--=_098a4ed6955856d6ec51b3c3f4a1d913--
