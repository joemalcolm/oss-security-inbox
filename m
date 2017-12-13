X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6132" "Wednesday" "13" "December" "2017" "11:21:55" "-0800" "Qualys Security Advisory" "qsa@qualys.com" "<20171213192155.GA21805@localhost.localdomain>" "144" "[oss-security] Bugs in iscsiuio" nil nil nil "12" "2017121319:21:55" "[oss-security] Bugs in iscsiuio" (number mark "U       qsa@qualys.c Dec 13  144/6132  " thread-indent "\"[oss-security] Bugs in iscsiuio\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17715 invoked by uid 550); 13 Dec 2017 18:28:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15904 invoked from network); 13 Dec 2017 18:24:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=ZsHzs0qTTN4NcTpjypxPRr+KQ2upvs+/T6GQNcQz1GA=;
        b=c+VqENhHW/c4SASqJH1CbCX1H0y93ULRMJ/gpeDZZdRCRge7ByDnScQxqruayLcZuk
         WtXWumaq4QQNog6cq7+ObnZIJsPhVcMe57DQl4yj5T20lqxXIVm6DTTCWkFrGE1BD9r3
         o50sb1yULmlxIcl+NPU1ZxcimkzgJQ9qCTVxUz+lOeUANKLHnylcKzK6aX/wylhXy+Fc
         ChRT9zc+F+lOax+SbAM5kUdyuqcBNCDP+2C6mOQ/VMpeFxogHFO4SHji/Et86EOq/amy
         NAeDgA0kN549qmoi0Qu730oVvgPPubUkUjIOkZ1IsYF9dTWuP4yQ3QdnQg+CIeLsnmNH
         pbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=ZsHzs0qTTN4NcTpjypxPRr+KQ2upvs+/T6GQNcQz1GA=;
        b=eOTfOpI1THyg3hXjIRz6gj8gB1WVgaLCuX+jG+8CucQownZ62IxZegWoEI1Cc2/zda
         OmTceNMrwegZlYBu7LZ64mdOvqqtPGdwVXObnDmCiPTorR2kv9AGMFTh19FZ1zcbg5qa
         MzMvC1r8FQpQgSq5qexpyGWQwLf9brbNXMkwwd/PYs7WgR3tRerDZzXaK60PQh9XmOuV
         dPdbgkg9+2yxEjXiR+O8piXNxjtzdQdHdW2zFE4aP6niDUImf/e9mJYLbh7TvpOIjCcn
         K72fSmailjvKJWuaCDbT6O6fJfk3i7GyCsVET1qMvbw2ZEjTrAXcW5KS0sxDPHFUgMBz
         QZEQ==
X-Gm-Message-State: AKGB3mI4fIKR0ftL5SU5wkzKAQoKqvyuGfK0hAseDxFUNWpZjlEYk3xC
	aipmFFFCKD4o5YpY5iK/x/wuFVd+
X-Google-Smtp-Source: ACJfBotJ0Ol6wsuqRFJ7zI7XTs0u2177ujj1mmK6zB9oCGumrFCUQ5uuOcDtGtQgtNYTiK96ZJsstA==
X-Received: by 10.84.137.129 with SMTP id 1mr6898090pln.169.1513189483226;
        Wed, 13 Dec 2017 10:24:43 -0800 (PST)
Date: Wed, 13 Dec 2017 11:21:55 -0800
From: Qualys Security Advisory <qsa@qualys.com>
To: oss-security@lists.openwall.com
Message-ID: <20171213192155.GA21805@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] Bugs in iscsiuio

Hi all,

We took a quick look at iscsiuio (from the iscsi-initiator-utils),
discovered several bugs, and sent a brief report of our findings to
linux-distros (on Monday, December 11). It was then decided that we
should send this report to oss-security on Wednesday, December 13:
please see below.

Notes: we did not have the time to draft a proper advisory, so this is
rather raw material, but hopefully it will be useful and detailed
enough; also, we did not fully investigate the exploitability (or
unexploitability) of these issues; and this was by no means an
exhaustive audit, so there may be more bugs to be found.

Thank you very much! With best regards,

-- the Qualys Security Advisory team

========================================================================

Source: iscsi-initiator-utils-6.2.0.874-6.git86e8892.fc27.src.rpm

------------------------------------------------------------------------

In iscsid_loop(), new connections are accepted on the abstract socket
@ISCSID_UIP_ABSTRACT_NAMESPACE, but the source of the connection is not
checked: any local user can connect and send messages, thus triggering
the bugs below; this may or may not be the intended behavior. (iscsid
for example processes only root's messages, in mgmt_ipc_handle()).

------------------------------------------------------------------------

In process_iscsid_broadcast(), payload_len is read directly from the
user's message, without checks, and then used in an fread() to a fixed-
size buffer: a straight heap overflow (arbitrary size, arbitrary bytes).
This would probably be exploitable, but every distribution we checked
compiles iscsiuio with FORTIFY, and __fread_chk() catches the heap
overflow before it happens, and aborts:

$ echo -e '\1\0\0\0\x41\x41\x41\x41' | socat - ABSTRACT-CONNECT:ISCSID_UIP_ABSTRACT_NAMESPACE

Process 32442 (iscsiuio) of user 0 dumped core.

Stack trace of thread 32445:
#0  0x00007f15redacted raise (libc.so.6)
#1  0x00007f15redacted abort (libc.so.6)
#2  0x00007f15redacted __libc_message (libc.so.6)
#3  0x00007f15redacted __fortify_fail (libc.so.6)
#4  0x00007f15redacted __chk_fail (libc.so.6)
#5  0x00007f15redacted __fread_chk (libc.so.6)
#6  0x0000555dredacted process_iscsid_broadcast (iscsiuio)
#7  0x0000555dredacted iscsid_loop (iscsiuio)
#8  0x00007f15redacted start_thread (libpthread.so.0)
#9  0x00007f15redacted __clone (libc.so.6)

Stack trace of thread 32443:
#0  0x00007f15redacted sigwait (libpthread.so.0)
#1  0x0000555dredacted signal_handle_thread (iscsiuio)
#2  0x00007f15redacted start_thread (libpthread.so.0)
#3  0x00007f15redacted __clone (libc.so.6)

Stack trace of thread 32442:
#0  0x00007f15redacted socket (libc.so.6)
#1  0x0000555dredacted nic_nl_open (iscsiuio)
#2  0x0000555dredacted main (iscsiuio)
#3  0x00007f15redacted __libc_start_main (libc.so.6)
#4  0x0000555dredacted _start (iscsiuio)

------------------------------------------------------------------------

In process_iscsid_broadcast(), rsp is not initialized, and the
ISCSID_UIP_IPC_GET_IFACE and default cases do not initialize its ping_sc
member: because rsp is then sent back to the connected user, this may
leak useful information to an attacker.

------------------------------------------------------------------------

At the end of process_iscsid_broadcast() there is an fclose(fd) where fd
is fdopen(s2); but after the return, iscsid_loop() calls close(s2): this
double-closes s2, which may not always be a problem, but here, iscsiuio
is multi-threaded and it is theoretically possible that another thread
recycles the file descriptor s2 after the fclose(fd) but before the
close(s2), which would therefore close the wrong file.

Note: at the beginning of process_iscsid_broadcast() there is a return
that does not close s2; care must be taken with the double-close patch,
or it may leak a file descriptor instead.

------------------------------------------------------------------------

At the beginning of decode_cidr(), where in_ipaddr_str is from the
message sent by the user/attacker:

        char                    ipaddress[NI_MAXHOST];

the following code has two problems:

        char ipaddr_str[NI_MAXHOST];
        ...
        if (strlen(in_ipaddr_str) > NI_MAXHOST)
                strncpy(ipaddr_str, in_ipaddr_str, NI_MAXHOST);
        else
                strcpy(ipaddr_str, in_ipaddr_str);

1/ strlen(in_ipaddr_str) > NI_MAXHOST is possible, because the user's
ipaddress is not necessarily null-terminated, but in that case strncpy()
does not null-terminate ipaddr_str;

Note: other "strings" in the message sent by the user/attacker also
suffer from this (non) null-termination problem.

2/ if strlen(in_ipaddr_str) == NI_MAXHOST, the strcpy() triggers an
off-by-one overflow.

Note: this strncpy()/strcpy() pattern of bugs is repeated many times
throughout the codebase.

------------------------------------------------------------------------

In decode_cidr(), the strcpy(ipaddr_str, tok) is invalid, because tok
points to ipaddr_str, and "strings may not overlap" (man strcpy).

------------------------------------------------------------------------

In decode_cidr(), int keepbits = atoi(tmp) may be negative (it comes
from the message sent by the user/attacker), which may bypass checks and
have other consequences in other parts of the code.

------------------------------------------------------------------------

In perform_ping(), int datalen comes from the message sent by the
user/attacker, but it is not checked at all: it looks like this could
lead to a heap overflow in fill_payload_data() (through
do_ping_from_nic_iface() -> prepare_icmpv6_req_pkt()).

(It seems that packet buffers are malloc()ated by alloc_packet(), called
only with alloc_packet(1500, 1500), and uip_slen in fill_payload_data()
is an u16_t, originally from the attacker-controlled int datalen, so it
may very well overflow this 1500-byte buffer -- but we did not double-
check this conclusion, and the lack of datalen checks may have other
consequences as well, but we did not explore them fully.)

========================================================================

