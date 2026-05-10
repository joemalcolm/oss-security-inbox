Received: (qmail 3869 invoked by uid 550); 10 May 2026 23:21:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26262 invoked from network); 10 May 2026 20:24:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1778444631;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Hm2mQnB50ygj48MR/UkYWyF/ZMA/iuH8ADwNnPA0Z8M=;
	b=BionuxIsPASAXkoXWdEBi0QnOBxG86RQeyhbzKQnl28HTB8pmlFAp9P8kr2A9JqDx7Y+lW
	frxJF0mAInb7EdyzvMzyMsj+hxTfEwpjkyn+eKgrSyVeROT7iyGUBH4tIdwsQ8mGdmiWmy
	PmBbR+ldUtunuUbsJQ+KIwjDYBMjsxh2J1R0BcjDSsgMzMADFk1+vJrHU6GpwzWQQMoFo/
	nIMBUVKgCbRh1oXVcFpspuoSWP5T7DyfkUdlPqp32nwAvccaYODbNH4zLTzJSZ0j94kUke
	OUxaMp4pBqB4m40767SAseCPU1Y9S/cBnfxWiIDNbcl1c/8uODjW5m4y3y7QmA==
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <D80998EF-B823-448B-B82E-C14B82E25578@stig.io>
Date: Sun, 10 May 2026 22:23:39 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-45190: Net::CIDR::Lite versions before 0.24 for Perl does
 not properly validate IP address and CIDR mask inputs, which may allow IP ACL
 bypass

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-45190                                       CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-45190
  Distribution:  Net-CIDR-Lite
      Versions:  before 0.24

      MetaCPAN:  https://metacpan.org/dist/Net-CIDR-Lite
      VCS Repo:  https://github.com/stigtsp/Net-CIDR-Lite


Net::CIDR::Lite versions before 0.24 for Perl does not properly
validate IP address and CIDR mask inputs, which may allow IP ACL bypass

Description
-----------
Net::CIDR::Lite versions before 0.24 for Perl does not properly
validate IP address and CIDR mask inputs, which may allow IP ACL
bypass.

Inputs containing a trailing newline or non-ASCII digit characters pass
the validators but are then re-encoded by the parser to a different
address than the input string spelled. find() and bin_find() can match
or miss addresses as a result.

Example:

  my $cidr =3D Net::CIDR::Lite->new();
  $cidr->add("::1\n/128");
  $cidr->find("::1a");  # incorrectly returns true

See also CVE-2026-45191.

Problem types
-------------
- CWE-1289 Improper Validation of Unsafe Equivalence in Input

Solutions
---------
Upgrade to version 0.24 or newer, or apply the patch provided.


References
----------
https://github.com/stigtsp/Net-CIDR-Lite/commit/ca9542adec87110556601d7ce48=
381ea8d13e692.patch
https://metacpan.org/release/STIGTSP/Net-CIDR-Lite-0.24/changes
https://www.cve.org/CVERecord?id=3DCVE-2026-45191

Timeline
--------
- 2026-05-10: Vulnerability found
- 2026-05-10: Net-CIDR-Lite version 0.24 released

