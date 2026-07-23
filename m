X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/20
Message-ID: <amKIW//JMtsfSww7@256bit.org>
Date: Thu, 23 Jul 2026 23:32:11 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Stack Buffer Overflow in the Vim Socket Server in Vim < 9.2.0842
Content-Type: text/plain; charset=utf-8

Stack Buffer Overflow in the Vim Socket Server in Vim < 9.2.0842
=================================================================

Date: 23.07.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Stack-based Buffer Overflow (CWE-121),
     Out-of-bounds Write (CWE-787)

## Summary

The socket server backend of Vim's client-server feature accepted an
unbounded number of client connections.  Every accepted connection becomes a
channel with its own file descriptor, and each wait cycle of the main loop
adds all channel descriptors to fixed-size structures: an `fd_set` when Vim
uses `select()`, or a stack array of `struct pollfd` sized for a small fixed
number of channels when Vim uses `poll()`.  Neither the number of accepted
clients nor the value of a descriptor was checked against those limits, so a
process able to connect to the server socket can make Vim write past the end
of a stack object.

## Description

A Vim server started with `--servername` and the socket backend listens on a
unix domain socket, or on a loopback address when a `channel:` address is
used.  Each accepted connection is turned into a channel by
`socketserver_accept()` in `src/socketserver.c` and linked into both the
client list and the global channel list, without any limit on the number of
clients.

On builds that use `select()`, `channel_select_setup()` in `src/channel.c`
adds every channel descriptor to an `fd_set` with `FD_SET()`.  An `fd_set`
holds a fixed number of descriptors, given by `FD_SETSIZE`, which is 1024 on
common systems.  A descriptor greater than or equal to that value writes
past the end of the set, and the following `select()` call causes the kernel
to read and write back beyond it as well.  The same unchecked pattern was
present in `channel_fill_wfds()`, `channel_select_check()` and in the client
loop of `socketserver_wait()`.

On builds that use `poll()` instead, `socketserver_wait()` and
`RealWaitForChar()` in `src/os_unix.c` collect the descriptors in a stack
array of `struct pollfd` dimensioned by `MAX_OPEN_CHANNELS`, which is ten.
Here no unusual descriptor numbers are required: the array is exceeded once
more than about ten clients are connected.

Reaching a descriptor number of 1024 or more on the `select()` path requires
the process limit on open files to be higher than that value, which is the
case for services and desktop sessions on current systems, but not where the
limit is left at 1024.  On the `poll()` path no such condition applies.

The issue has been addressed by limiting the number of simultaneously
accepted client connections, by checking descriptors against `FD_SETSIZE`
before adding them to an `fd_set`, and by sizing the `struct pollfd` arrays
for the new limit.

## Impact

An out-of-bounds write to a stack object.  On the builds shipped by most
distributions, which enable `_FORTIFY_SOURCE`, the affected library routine
detects the condition and terminates the process, so the practical result is
that the Vim server is killed and unsaved changes are lost.  On builds
without that hardening the write is a single bit at an offset determined by
the descriptor number, together with the kernel writing back past the set.

Exploitation requires:

- Vim built with the socket server backend of the client-server feature and
  running as a server, that is started with `--servername`,
- a process able to connect to that server: for the default unix domain
  socket, one running under the same user account, since the socket
  directory is only accessible to its owner; for a `channel:` address, any
  process on the local machine, since such addresses are bound to the
  loopback interface,
- on builds using `select()`, a limit on open files above 1024 and enough
  connections to exceed it; on builds using `poll()`, about ten
  connections.

No action by the user of the Vim server is required, since an idle server
reaches the affected code continuously.

The severity is rated Medium because the impact is limited to availability,
the attacker must already be able to reach the server socket, and on the
`select()` path a raised limit on open files is required as well.

## Acknowledgements

The Vim project would like to thank @tdjackey for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0842](https://github.com/vim/vim/releases/tag/v9.2.0842).

- [Commit](https://github.com/vim/vim/commit/2e967091c3c78cab4524609aa67fbca49e10a32d)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-49m8-wwxj-mr69)


Thanks,
Chris
-- 
Leider sind meines Erachtens nicht zu vernachlässigende Teile der
Bevölkerung potentiell bis akut ausreichend 'vertrottelt'.
		-- Helmut Springer
