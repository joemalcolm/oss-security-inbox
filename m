Received: (qmail 22396 invoked by uid 550); 26 Mar 2026 19:00:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1660 invoked from network); 26 Mar 2026 18:44:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1774550634; bh=iFCbF44d55m1fTFj2uxVGYS0O7QXSxOMHBLjaN/ThAs=;
	h=Date:From:To:Subject:From;
	b=ouUzQ977tMxPNvjtnq0WDSv7NLR2P5mAZ4/VnJoWqcPvTTY9SCxSjX6z9ekk0Bl5o
	 6LTJVGqTlpygcezF2DSmZ+xZYdlNIV1DqsOMQASReoMt5Hqq6piGynmYgrU20NYpBl
	 QtgHKuZjSW3rzaG9biT54QHDanYPfe9hYByVZ3GM=
X-Riseup-User-ID: 591954B9912EE046149AAAFA9D2883C010F622BE4A386D4715EE3B3E0D06109C
MIME-Version: 1.0
Date: Thu, 26 Mar 2026 18:43:43 +0000
From: piedcrow@riseup.net
To: oss-security@lists.openwall.com
Message-ID: <7122d4c997ade5699222f5f6c66ac8f3@riseup.net>
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-4851: remote-to-local code execution in GRID::Machine

Affects: GRID::Machine
Versions: 0.127 verified, likely all released versions affected.
URL: https://cpan.org/authors/id/C/CA/CASIANO/GRID-Machine-0.127.tar.gz

Description:
    GRID::Machine is a module for the Perl programming language that
    implements Remote Procedure Calls (RPC) over SSH.

    The module has a security flaw that allows an untrusted remote to
    execute arbitrary code on the client.

    The subroutine read_operation() in lib/GRID/Machine/Message.pm
    deserializes values from the remote side using eval():

        my $val = eval "no strict; $arg";    # line 40

    ...where $arg is raw bytes sent from the remote over the protocol
    pipe. A compromised remote host can embed arbitrary Perl code in the
    response. Exploitation can occur silently, without the local side
    failing and an error being visible to a user.

    Proof-of-concept exploit code exists.

    CPANSec has assigned CVE-2026-4851 to this issue.

Weaknesses:
    CWE-94: Improper Control of Generation of Code ('Code Injection').
    CWE-502: Deserialization of Untrusted Data.

Mitigation:
    None. GRID::Machine should not be used with untrusted remotes.

Solution:
    None, no upstream fix to be provided.

Timeline:
    2026-03-24: Vulnerability reported to module author and CPANSec.
    2026-03-25: First contact with author.
    2026-03-25: CVE-2026-4851 assigned by CPANSec.
    2026-03-26: Author indicates no fix will be provided.
    2026-03-26: CPANSec advises for disclosure.
