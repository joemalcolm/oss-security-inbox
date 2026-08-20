X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/2
Message-ID: <878q61mso6.fsf@gmail.com>
Date: Wed, 19 Aug 2026 19:28:41 -0700
From: Collin Funk <collin.funk1@...il.com>
To: oss-security@...ts.openwall.com
Cc: Pádraig Brady <P@...igBrady.com>, Sylvestre Ledru <sylvestre@...ian.org>
Subject: uutils coreutils 'stdbuf' uses LD_PRELOAD on a world-writable temporary file
Content-Type: text/plain; charset=utf-8

GNU coreutils distributes a 'stdbuf' program that executes another
program with modified buffering characteristics for its standard
streams. It does this by setting environment variables and then setting
LD_PRELOAD (or the platform-specific equivalent) to a shared library
named "libstdbuf.so". This shared library uses .init and .init_array (or
the platform-specific equivalent) sections that alter the standard
stream characteristics based on the current environment before main
begins executing:

    $ readelf -S src/libstdbuf.so  | grep init
      [ 2] .init             PROGBITS         0000000000000294  00000294
      [17] .init_array       INIT_ARRAY       0000000000002dd0  00001dd0

GNU coreutils defines this library using the pkglibexec_PROGRAMS
Automake variable, such that it is always installed in $(pkglibexecdir)
with proper permissions.

On the other hand, uutils coreutils implementation does not do this by
default. By default it creates a world-accessible temporary directory,
and world writable shared library inside of that, and sets LD_PRELOAD
pointing to it. This can easily be seen since the temporary directory
and shared library are never removed. Here is an example on my NetBSD
virtual machine:

    $ (umask 0; uu-stdbuf -oL true; ls -lRa /tmp/.tmp*)
    /tmp/.tmpHObxOQ:
    total 380
    drwxrwxrwx 2 collin wheel     48 Aug 19 02:15 .
    drwxrwxrwt 3 root   wheel     48 Aug 19 02:15 ..
    -rw-rw-rw- 1 collin wheel 380128 Aug 19 02:15 libstdbuf.so

If a user has a permissive umask, another user on the system could
modify the shared library before 'stdbuf' executes the other program,
allowing them to execute arbitrary code.

The fix is to build uutils with 'feat_external_libstdbuf', e.g., by
running:

    $ cargo build --features feat_external_libstdbuf

This issue is present in the uutils-coreutils (or similarly named)
package on, at least, Fedora, Alpine Linux, FreeBSD, and NetBSD.

I had commented on this poor behavior publicly [1], before I had
realized how many distributions were affected by it. Sorry about that. I
will remember to check before speaking next time...

Collin

[1] https://github.com/uutils/coreutils/issues/13939#issuecomment-5303138075
