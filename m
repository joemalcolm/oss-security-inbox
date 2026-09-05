X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/05/5
Message-ID: <87ld9fe8v5.fsf@gentoo.org>
Date: Sat, 05 Sep 2026 21:33:34 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Fwd: Security vulnerabilities fixed in WeeChat 4.10.1
Content-Type: text/plain; charset=utf-8


-------------------- Start of forwarded message --------------------
Date: Sat, 5 Sep 2026 19:31:16 +0200
From: Sébastien Helleu <flashcode@...shtux.org>
To: weechat-security@...gnu.org
Subject: Security vulnerabilities fixed in WeeChat 4.10.1

Hi all,

Six security vulnerabilities have been fixed in WeeChat 4.10.1, which was
released on September 5th, 2026:

- WSA-2026-15: [Xfer] Write of DCC file received outside of configured download
  path.
- WSA-2026-16: [Xfer] Missing size limit for the unterminated Xfer chat
  message.
- WSA-2026-17: [Xfer] Bypass of user authorization for start of DCC file
  transfer.
- WSA-2026-18: [Relay] Missing size limit for the unterminated Relay text
  message received from a client.
- WSA-2026-19: [Relay] Missing rejection of invalid websocket frames.
- WSA-2026-20: [Relay] Missing size limit of data queued for sending to
  clients.

For more information, see the security page:
https://weechat.org/doc/weechat/security/

-- 
Sébastien Helleu

web: weechat.org / flashtux.org
irc: FlashCode @ irc.libera.chat

-------------------- End of forwarded message --------------------

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
