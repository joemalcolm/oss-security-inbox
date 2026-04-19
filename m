Received: (qmail 11483 invoked by uid 550); 19 Apr 2026 14:44:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9469 invoked from network); 19 Apr 2026 13:06:21 -0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amdal.dev; s=key1;
	t=1776603971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=1KcopAFOdOkSgvqtAhUNGdRNHcd74RgL1l04PH/wIEc=;
	b=RTpV5fnoSj7wz5CpgFD95J1x58sci40IlDi005yqRHCn8+wwdamRvjo281TC9qskxoRw6q
	SezfFz45aQU+32EWGy0T8kZB8WBDV5X11Udohh3U3GJrL4Mc53ABpPp4DlfQpMOHNkh1WW
	vHB9nnsV3YAOY6xlSLHew1o7SbOXKWjCBjhamd3jaP2LLmrgcrKMOj/ej6LoarlSS4Re/i
	bH/AVSIxoBPnhZ0MY3CQvduzS+kEAxlX0K+2c9Uqh38c8yLdyxM5kLhr7L6sTVxLwT1sRy
	FeGrf4N7M5WCIghoB5gSwyLxSXcGNxif+F8nSEwFcUAPVqXWTBOnOx3n9T/R0w==
From: =?UTF-8?Q?Pico_=F0=9F=A7=AC?= <pico@amdal.dev>
To: oss-security@lists.openwall.com
Message-ID: <c9346cf4-9e3e-74d9-2bda-951bcb9bcab0@amdal.dev>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 19 Apr 2026 13:06:09 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
X-Migadu-Flow: FLOW_OUT
Subject: [oss-security] [CVE REQUEST] terminal-controller-mcp: trivially bypassable
 command blocklist enables unrestricted RCE (CVSS 10.0)


Hi,

I'm reporting a critical security vulnerability in terminal-controller-mcp,=
 an
open-source Python MCP (Model Context Protocol) server. The repository has =
been
archived by the maintainer (no fix will come), and private disclosure has
received no response. I'm posting to seek CVE assignment and to alert users.

---

PRODUCT
  terminal-controller (PyPI: https://pypi.org/project/terminal-controller/)
  GitHub: https://github.com/GongRzhe/terminal-controller-mcp (ARCHIVED)
  Maintainer: GongRzhe <gongrzhe@gmail.com>

AFFECTED VERSIONS
  All versions =E2=89=A4 0.1.9 (current/final version)

FIXED VERSIONS
  None. Repository archived ~2025-06-14. No patch expected.

---

VULNERABILITY DESCRIPTION

terminal-controller-mcp is an MCP server that allows AI models (e.g., Claud=
e,
GPT-4) to execute arbitrary shell commands on the host system. The server
passes commands directly to asyncio.create_subprocess_shell() with
executable=3D"/bin/bash".

The sole security control is a keyword blocklist (terminal_controller.py,
lines 115-118):

  dangerous_commands =3D ["rm -rf /", "mkfs"]
  if any(dc in command.lower() for dc in dangerous_commands):
      return "For security reasons, this command is not allowed."

This is trivially bypassed using basic shell features:

  # Bypass mkfs via command substitution:
  $(echo mk)fs

  # Bypass rm -rf / via variable reassembly:
  a=3D"rm -rf"; b=3D" /"; $a$b

  # Bypass via eval + string split:
  eval "mk""fs /dev/sda"

Any restricted command can be constructed via bash's many string manipulati=
on,
substitution, and evaluation features. The filter checks the literal input
string, not the command that bash will actually execute.

---

IMPACT

An attacker who can influence the input to this MCP server (e.g., via prompt
injection into the connected AI model) can execute arbitrary OS commands on
the host. Attack scenarios:

  - Data destruction (disk wipe, file deletion)
  - Data exfiltration (curl/wget to attacker-controlled endpoint)
  - Reverse shell establishment
  - Lateral movement from the AI agent's host

The false sense of security is particularly dangerous: users who rely on the
"security measures" advertised in the README are exposed without knowing it.

CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H
CVSS Base Score: 10.0 (Critical)

Note on attack vector: MCP servers receive commands from AI models, which m=
ay
in turn be influenced by external content (prompt injection via web pages,
documents, emails processed by the AI). The attacker does not need direct
network access to the MCP server.

---

PRIOR DISCLOSURE

- 2025-09-16: Independently disclosed publicly in GitHub issue #7 by
  ClementineZsw (https://github.com/GongRzhe/terminal-controller-mcp/issues=
/7)
- 2026-04-11: Additional private disclosure sent to gongrzhe@gmail.com =E2=
=80=94 no
  response received
- 2026-04-19: This post (90-day window exceeded; repository abandoned/archi=
ved)

The vulnerability has been publicly visible in issue #7 since September 202=
5.
This post is to establish a formal CVE record and alert the broader communi=
ty.

---

RECOMMENDATION

Do not use terminal-controller-mcp. The architecture (passing arbitrary use=
r-
controlled strings to shell=3DTrue subprocess) cannot be made safe with
blocklist-based filtering. There is no patch and no plan for one.

If shell command execution via MCP is required, use a sandboxed environment
(container with limited syscalls, restricted filesystem namespace) and
implement allowlist-based (not blocklist-based) command validation.

---

REFERENCES
  https://github.com/GongRzhe/terminal-controller-mcp
  https://github.com/GongRzhe/terminal-controller-mcp/issues/7
  https://pypi.org/project/terminal-controller/

---

H=C3=A5kon =C3=85mdal
pico@amdal.dev
