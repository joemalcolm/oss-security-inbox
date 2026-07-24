X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/28
Message-ID: <amO/aDygwMU90HB9@256bit.org>
Date: Fri, 24 Jul 2026 21:39:20 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Use-after-free in JSON Decoding in Vim >= 9.2.0511 && Vim < 9.2.0844
Content-Type: text/plain; charset=utf-8

Use-after-free in JSON Decoding in Vim >= 9.2.0511 && Vim < 9.2.0844
====================================================================

Date: 23.07.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Use After Free (CWE-416),
     Out-of-bounds Read (CWE-125)

## Summary

When Vim decodes a JSON message received on a channel, the decoder may need
more bytes than the current read buffer holds.  It then obtains the next
buffer, joins the two into a newly allocated one and frees the previous
buffer.  The function decoding the surrounding item keeps its own pointer
into the old buffer and does not refresh it after such a refill.  When the
decoding of a string fails after a refill has taken place, for example
because of an invalid escape sequence, the shared error path passes that
stale pointer to the routine that formats the error message, which reads the
freed memory.

## Description

Channel JSON decoding uses a reader that can request more input while an
item is being parsed.  `channel_fill()` in `src/channel.c` obtains the next
queued read buffer, allocates a combined buffer holding the unparsed
remainder followed by the new data, frees the previous buffer and stores the
new one in the reader.

`json_decode_string()` in `src/json.c` handles this correctly: before asking
for more input it converts its position into an index, and it recomputes its
pointer from the reader afterwards.  `json_decode_item()`, which parses the
enclosing value, keeps a separate pointer into the buffer.  That pointer is
refreshed at several points in its loop, but not after the call that decodes
a string.  If that call first triggers a refill and then fails, the buffer
the pointer refers to has been freed, and the error path at the end of the
function reports the position using it.  The error text is composed from the
memory at that address, so the freed buffer is read.

Any channel using one of the JSON based modes is affected, since the reader
is always given the ability to refill.  A peer that writes a message in
parts controls where the input is split, and therefore whether the refill
happens in the middle of a string.

The socket server backend of the client-server feature is reachable without
any authentication: it decodes whatever bytes a client has sent, before any
field of the message is examined, so a client can trigger the condition with
two writes and without a valid message.

## Impact

A read of freed heap memory.  The bytes read are used to compose an error
message, which is suppressed while a channel message is decoded and is only
recorded when channel logging has been enabled, so the contents are normally
not shown anywhere.  Depending on the state of the heap the read can also
fault and end the Vim process, which for a server means the loss of unsaved
changes.

Exploitation requires:

- Vim decoding JSON from a channel, either a channel opened by the user in
  one of the JSON based modes, or the socket server backend of the
  client-server feature, which is used when Vim is started with
  `--servername` and that backend,
- a peer that can send a message split into parts, which for the socket
  server means any process able to connect to it: one running under the same
  user account for the default unix domain socket, or any process on the
  local machine for a `channel:` address, since those are bound to the
  loopback interface.

The severity is rated Medium because the impact is limited to reading freed
memory and, where that memory is no longer mapped, to ending the process;
the contents that are read are not returned to the peer and are normally not
displayed.

## Acknowledgements

The Vim project would like to thank @tdjackey for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0844](https://github.com/vim/vim/releases/tag/v9.2.0844).

- [Commit](https://github.com/vim/vim/commit/f8126294a526aa80c5123eb3079e325daee9ec75)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-69ch-22ch-r887)


Best,
Chris
-- 
Die nützlichsten Bücher sind die, die den Leser anregen, sie zu
ergänzen.
		-- François Marie Voltaire
