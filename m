Received: (qmail 1845 invoked by uid 550); 23 Mar 2023 18:46:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28662 invoked from network); 23 Mar 2023 18:36:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=dino.im; s=20200526;
	t=1679596564; bh=pw05CNPgslFPxwBNH2IhoVjEDNpb9l+wzmG3+IkOOnI=;
	h=Subject:From:To:Date:From;
	b=edghOdk9/gxARtNT/R65WDHXkhC9pL4r32hYPpORUXpOXRr2ltUcF+gqz2XIAuDtM
	 ri0L4dVngZJDR2fdqL2/9PqgpAbDsccy/bgXVzDb7yf9EuCu9ls0NBK5AukSb8y/Sl
	 hX6TUkWrtva6kf9rYpaLDoGfHdHhuOKWKaMWfWsGuLm09k2c1csy5hQV6dH6EDnGDq
	 uASnKJBgHeWz7kNw1M729zhjfFyeV6caK9qbHeh0U62HAVmngnYjQHvyg+q3vIi2fH
	 Y2/LTTveCjLWnUNYpPxR/Qio1MPPDAy0WgjIJDp2i7fsovWvGtWipbkS1byYmctlVu
	 0bWzxfqVi3X6w==
Message-ID: <f016f44efad2279da0c832dcef82f02491c9f889.camel@dino.im>
From: Dino Team <team@dino.im>
To: oss-security@lists.openwall.com
Date: Thu, 23 Mar 2023 12:35:59 -0600
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-1 
MIME-Version: 1.0
Subject: [oss-security] [CVE-2023-28686] Insufficient message sender validation in Dino

### Affected software

Dino (Instant Messenger) - https://dino.im/

### Severity

Medium (5.3): AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N

### Affected versions
- Release version 0.4.0 and 0.4.1
- Release version 0.3.0 and 0.3.1
- Release version 0.2.2 and earlier
- Nightly version 0.4.1-13-g6690d8e4 and earlier

### Fixed versions
- Release version 0.4.2
- Release version 0.3.2
- Release version 0.2.3
- Nightly version 0.4.1-14-gef8fb0e9

### Description

It was discovered that when a Dino client receives a specifically
crafted message from an unauthorized sender, it would use information
from that message to add, update or remove entries in the user's
personal bookmark store without requiring further user interaction.

This vulnerability allows the attacker to change how group chats are
displayed or to force a user to join or leave an attacker-selected
groupchat. This can be used to trick the user to reveal sensitive
information to the attacker.

### Advice

All deployments should upgrade to a fixed version or apply the patch
from commit ef8fb0e94ce79d5fde2943e433ad0422eb7f70ec.

### Credits

Many thanks to Kim Alvefur for discovering and reporting this issue.

### Links

- https://dino.im/security/cve-2023-28686/
- https://github.com/dino/dino/commit/ef8fb0e
- https://github.com/dino/dino/releases/tag/v0.4.2
- https://github.com/dino/dino/releases/tag/v0.3.2
- https://github.com/dino/dino/releases/tag/v0.2.3
- https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2023-28686

