X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["19529" "Tuesday" "25" "January" "2022" "10:24:56" "+0100" "Matthias Gerstner" "mgerstner@suse.de" nil "524" "[oss-security] Multiple vulnerabilities in connman's dnsproxy component" nil nil nil "1" nil nil (number mark "U       mgerstner@su Jan 25  524/19529 " thread-indent "\"[oss-security] Multiple vulnerabilities in connman's dnsproxy component\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in connman's dnsproxy component" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28285 invoked by uid 550); 25 Jan 2022 09:25:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28243 invoked from network); 25 Jan 2022 09:25:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1643102697; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=IIdRIG0TKAYnz6POXKsfROhe183D9AWToQOZy93qQq8=;
	b=gWIlt25ui4odRPaSJ7WCOuOH7mggNuW0e8+ylcAd42VZQoaAyM2H8N0BQH4j0ETwTjEFWQ
	Z3NQzmDcDH2w2ka1Ve8ygjTc8luDGYYcVUwiLHLBq/qHEqxW1gRVzEGKWb1Qo89AeQ+LWl
	oFWPoXeNG49S4wCN9I7wuxzZ+Uh0viU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1643102697;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=IIdRIG0TKAYnz6POXKsfROhe183D9AWToQOZy93qQq8=;
	b=wilBqmnXa0AXo/GEimlBGN98l/0ASOs79Kz8Pobaqq5Y7msst9ZqNzPwqGizJZIg10fIx9
	n+7KSHULy+HucjDA==
Date: Tue, 25 Jan 2022 10:24:56 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Ye/B6IXAWkPoQOOC@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qH3hlEd2sngKVp6L"
Content-Disposition: inline
Subject: [oss-security] Multiple vulnerabilities in connman's dnsproxy component

--qH3hlEd2sngKVp6L
Content-Type: multipart/mixed; boundary="nvY/yirvcqLe3afT"
Content-Disposition: inline


--nvY/yirvcqLe3afT
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

while researching CVE-2021-33833 [1] in Connman's [2] dnsproxy component
I found further (less severe) security issues in the dnsproxy codebase.
Our SUSE colleague and upstream Connman maintainer Daniel Wagner
published fixes for the issues just now [3].

[1]: https://www.openwall.com/lists/oss-security/2021/06/09/1
[2]: https://git.kernel.org/pub/scm/network/connman/connman.git
[3]: https://lore.kernel.org/connman/20220125090026.5108-3-wagi@monom.org/T=
/#m81ef1e357b6b2d3efd53f86d1cdcbfe9a37d8b3f

For the review I have been looking into the upstream version tag 1.40. I
found a couple of invalid memory read accesses that could possibly lead
to remote DoS, remote information leaks or otherwise undefined
behaviour. Furthermore I found a way to trigger a 100 % CPU loop. The
following sections explain the findings in detail. All of these affect
the processing of DNS server replies, i.e. they can be triggered by
malicious remote DNS servers, similar to CVE-2021-33833.

1) Possibly invalid memory reference in `strnlen()` call in `forward_dns_re=
ply()` (CVE-2022-23097)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In `forward_dns_reply()` in `dnsproxy.c:2004` the following `strnlen`
invocation occurs:

```
host_len =3D *ptr;
if (host_len > 0)
	domain_len =3D strnlen(ptr + 1 + host_len,
			reply_len - header_len);
```

This function does not actually check whether there are enough `reply_len`
bytes at all to even retrieve a valid `host_len` from where `ptr` is pointi=
ng
to.

The maximum size calculation `reply_len - header_len` is not correct. If
`reply_len` is smaller than `header_len`, which can be the case for the
TCP case (see issue 2), then `reply_len - header_len` can even become
negative i.e. an underflow wrap occurs.

`host_len` can be up to 255 and is attacker controlled. This means even for
the UDP case, where the calling function does make sure that at least
`header_len` bytes are available, the `ptr + 1 + host_len` expression can
point to up to 257 bytes outside of valid packet data.

For the UDP case this means that data present in the stack based buffer
in function `udp_server_event()` in `dnsproxy.c:2243` will be accessed
that could contain data from previous DNS replies or stack management
data.

For the TCP case, where a heap based buffer of the exact receive size is
used (see `dnsproxy.c:2417`) this means that a heap out of bounds read
access is performed that could even crash Connman. In my exploit tests I
did not manage to cause a crash but this depends strongly on the heap
allocator and optimization levels etc.

So the possible effects of this vulnerability are:

- undefined behaviour of the domain name uncompress / recompress handling
  based on undefined data.
- remote denial of service especially in the TCP case
- an information leak, especially in the UDP case where a stack based
  buffer is used. If an attacker controls both the DNS server and the
  DNS client (or the DNS client and can spoof DNS replies on the
  network), then that attacker could receive stack management data on
  the client side. This is because the `forward_dns_reply()` function
  has large degrees of freedom in the dns name uncompress / recompress
  handling and will forward even undefined data to the DNS client.

The attached Patch 0001 adds and fixes some checks for sufficient input
data to avoid this issue.

2) TCP Receive Path does not Check for Presence of Sufficient Header Data (=
CVE-2022-23096)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In the UDP server reply code path a literal size check is performed to
make sure that at least a complete DNS header has been received
(`dnsproxy.c:2257`). This check is missing in the TCP server reply code
path as can be seen in:

- dnsproxy.c:2417: here a heap buffer of the exact claimed packet size
  is allocated.
- dnsproxy.c:2444: here the now completely received packet is passed on
  to `forward_dns_reply()` without any further minimum package size
  checks.

This means that a malicious DNS server can send a minimum reply message
consisting of four bytes (claiming a TCP message of two bytes size, and
then supplying the correct request ID in the next two bytes).
`forward_dns_reply()` will then be called with the `reply_len` parameter
being set to 4. There are no further input size checks in
`forward_dns_reply()`:

```
int dns_id, sk, err, offset =3D protocol_offset(protocol);

if (offset < 0)
	return offset;

hdr =3D (void *)(reply + offset);
```

`offset` will be 2 for the TCP case. Thus `hdr` will point to the two
valid DNS ID bytes at the end of the heap allocated buffer. All further
protocol processing code in this function will operate on undefined out
of bounds heap data.

=46rom here on the characteristics of this vulnerability are similar to
issue 1). There can be undefined behaviour and a possiblity for a remote
DoS, a heap based information leak maybe.

A sample run of connmand in `valgrind` acting against a malicious DNS
server showed output like this:

    Invalid read of size 2
       at 0x487311: forward_dns_reply.isra.0 (dnsproxy.c:2153)
       by 0x487EBD: tcp_server_event (dnsproxy.c:2447)
       by 0x48C0D9E: g_main_context_dispatch (in /usr/lib64/libglib-2.0.so.=
0.7000.2)
       by 0x48C1127: ??? (in /usr/lib64/libglib-2.0.so.0.7000.2)
       by 0x48C1412: g_main_loop_run (in /usr/lib64/libglib-2.0.so.0.7000.2)
       by 0x41217B: main (main.c:932)
     Address 0x587c88c is 2 bytes after a block of size 10 alloc'd
       at 0x48437B5: malloc (in /usr/libexec/valgrind/vgpreload_memcheck-am=
d64-linux.so)
       by 0x48C719F: g_try_malloc (in /usr/lib64/libglib-2.0.so.0.7000.2)
       by 0x4881A9: tcp_server_event (dnsproxy.c:2420)
       by 0x48C0D9E: g_main_context_dispatch (in /usr/lib64/libglib-2.0.so.=
0.7000.2)
       by 0x48C1127: ??? (in /usr/lib64/libglib-2.0.so.0.7000.2)
       by 0x48C1412: g_main_loop_run (in /usr/lib64/libglib-2.0.so.0.7000.2)
       by 0x41217B: main (main.c:932)

The attached patch 0001 also checks for presence of sufficient header
data and thus fixes this issue.

3) TCP Receive Path Triggers 100 % CPU loop if DNS server does not Send Bac=
k Data (CVE-2022-23098)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In the TCP server reply case, if the server simply does not send back
any data at all, but keeps the socket connection open, Connman enters a
100 % CPU loop. This is related to the event watch configuration in
`dnsproxy.c:2523`, where `G_IO_OUT` is set. This is done to react to the
asynchronous (non-blocking) TCP connect result. After the connection is
established the event watch is not adjusted, however, meaning that the
event loop will wake up when data can be written to the TCP connection,
which is true all the time.

Allthough there is a 30 second timeout configured in `tcp_idle_timeout()`,
the 100 % CPU loop does not stop after that time. The reason is that,
after the TCP connection succeeded, the timeout is removed again in
`dnsproxy.c:2342`.

The attached patch 0003 adjusts the IO watch after the connection
succeeded to prevent the 100 % CPU loop. Furthermore the attached patch
0004 causes the timeout not to be removed even after the connection is
established. This way hthe timeout covers not only the connection
establishment but also the server reply.

4) TCP DNS Operation is Broken due to Bad TCP Length Header
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

This is only a functional issue. It seems the TCP based DNS operation
never really worked, because in `forward_dns_reply()` the message
content is possibly modified due to the domain name uncompress logic.
However, the TCP length header is never adjusted to reflect this. The
original DNS header received from the server is plainly copied in
`dnsproxy.c:2125` and never adjusted after this.

This means that either, if the modified DNS message is shorter than the
one supplied by the server, that the DNS header length will be larger
than what is actually forwarded to the DNS client. The DNS client will
wait for more data that will never be supplied. Or, should the modified
DNS message become larger, then the DNS client will receive only a
truncated message that will be incomplete / corrupted. I tested this
simply using `host -T` as a simple TCP based DNS client.

The attached patch 0002 adjusts the TCP message length before forwarding
the message to the client to fix this.

Generally Worrying Code Quality / Suggestion to Refactor dnsproxy
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Generally the code quality of the dnsproxy component in Connman is
lacking. There are inconsistencies in data types, redundant code
portions and overly complex functions that could benefit from a
refactoring. The upstream maintainer agrees and we will attempt to find
a way to contribute improvements in this area in the future.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2021-12-30: I contacted the current Connman maintainer Daniel Wagner, a
 SUSE colleague, and shared the findings with him, offering coordinated
 disclosure.
2022-01-10: After getting confirmation from Daniel I requested CVEs for
 the three security issues from Mitre.
2022-01-19 until today: I helped Daniel reviewing, writing and testing
 the patches.

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev

--nvY/yirvcqLe3afT
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-dnsproxy-Validate-input-data-before-using-them.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 56cd5ad14da42f896013269a3226c2f95bf9edc9 Mon Sep 17 00:00:00 2001
From: Daniel Wagner <wagi@monom.org>
Date: Sun, 16 Jan 2022 14:59:14 +0100
Subject: [PATCH 1/4] dnsproxy: Validate input data before using them

dnsproxy is not validating various input data. Add a bunch of checks.

Fixes: CVE-2022-23097
Fixes: CVE-2022-23096
---
 src/dnsproxy.c | 31 ++++++++++++++++++++++++++-----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/src/dnsproxy.c b/src/dnsproxy.c
index fbbee0413f8f..cd570d68c8b3 100644
--- a/src/dnsproxy.c
+++ b/src/dnsproxy.c
@@ -1951,6 +1951,12 @@ static int forward_dns_reply(unsigned char *reply, i=
nt reply_len, int protocol,
=20
 	if (offset < 0)
 		return offset;
+	if (reply_len < 0)
+		return -EINVAL;
+	if (reply_len < offset + 1)
+		return -EINVAL;
+	if ((size_t)reply_len < sizeof(struct domain_hdr))
+		return -EINVAL;
=20
 	hdr =3D (void *)(reply + offset);
 	dns_id =3D reply[offset] | reply[offset + 1] << 8;
@@ -1986,23 +1992,31 @@ static int forward_dns_reply(unsigned char *reply, =
int reply_len, int protocol,
 		 */
 		if (req->append_domain && ntohs(hdr->qdcount) =3D=3D 1) {
 			uint16_t domain_len =3D 0;
-			uint16_t header_len;
+			uint16_t header_len, payload_len;
 			uint16_t dns_type, dns_class;
 			uint8_t host_len, dns_type_pos;
 			char uncompressed[NS_MAXDNAME], *uptr;
 			char *ptr, *eom =3D (char *)reply + reply_len;
+			char *domain;
=20
 			/*
 			 * ptr points to the first char of the hostname.
 			 * ->hostname.domain.net
 			 */
 			header_len =3D offset + sizeof(struct domain_hdr);
+			if (reply_len < header_len)
+				return -EINVAL;
+			payload_len =3D reply_len - header_len;
+
 			ptr =3D (char *)reply + header_len;
=20
 			host_len =3D *ptr;
+			domain =3D ptr + 1 + host_len;
+			if (domain > eom)
+				return -EINVAL;
+
 			if (host_len > 0)
-				domain_len =3D strnlen(ptr + 1 + host_len,
-						reply_len - header_len);
+				domain_len =3D strnlen(domain, eom - domain);
=20
 			/*
 			 * If the query type is anything other than A or AAAA,
@@ -2011,6 +2025,8 @@ static int forward_dns_reply(unsigned char *reply, in=
t reply_len, int protocol,
 			 */
 			dns_type_pos =3D host_len + 1 + domain_len + 1;
=20
+			if (ptr + (dns_type_pos + 3) > eom)
+				return -EINVAL;
 			dns_type =3D ptr[dns_type_pos] << 8 |
 							ptr[dns_type_pos + 1];
 			dns_class =3D ptr[dns_type_pos + 2] << 8 |
@@ -2040,6 +2056,8 @@ static int forward_dns_reply(unsigned char *reply, in=
t reply_len, int protocol,
 				int new_len, fixed_len;
 				char *answers;
=20
+				if (len > payload_len)
+					return -EINVAL;
 				/*
 				 * First copy host (without domain name) into
 				 * tmp buffer.
@@ -2054,6 +2072,8 @@ static int forward_dns_reply(unsigned char *reply, in=
t reply_len, int protocol,
 				 * Copy type and class fields of the question.
 				 */
 				ptr +=3D len + domain_len + 1;
+				if (ptr + NS_QFIXEDSZ > eom)
+					return -EINVAL;
 				memcpy(uptr, ptr, NS_QFIXEDSZ);
=20
 				/*
@@ -2063,6 +2083,8 @@ static int forward_dns_reply(unsigned char *reply, in=
t reply_len, int protocol,
 				uptr +=3D NS_QFIXEDSZ;
 				answers =3D uptr;
 				fixed_len =3D answers - uncompressed;
+				if (ptr + offset > eom)
+					return -EINVAL;
=20
 				/*
 				 * We then uncompress the result to buffer
@@ -2254,8 +2276,7 @@ static gboolean udp_server_event(GIOChannel *channel,=
 GIOCondition condition,
=20
 	len =3D recv(sk, buf, sizeof(buf), 0);
=20
-	if (len >=3D 12)
-		forward_dns_reply(buf, len, IPPROTO_UDP, data);
+	forward_dns_reply(buf, len, IPPROTO_UDP, data);
=20
 	return TRUE;
 }
--=20
2.34.1


--nvY/yirvcqLe3afT
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0002-dnsproxy-Update-TCP-length-header.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 75d0db5f74bb50c1e8d3b51256a9a56be0d3278d Mon Sep 17 00:00:00 2001
From: Daniel Wagner <wagi@monom.org>
Date: Sun, 16 Jan 2022 15:04:23 +0100
Subject: [PATCH 2/4] dnsproxy: Update TCP length header

Patch provided by Matthias Gerstner.
---
 src/dnsproxy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/src/dnsproxy.c b/src/dnsproxy.c
index cd570d68c8b3..c027bcb972c4 100644
--- a/src/dnsproxy.c
+++ b/src/dnsproxy.c
@@ -2188,6 +2188,9 @@ static int forward_dns_reply(unsigned char *reply, in=
t reply_len, int protocol,
 			err =3D sendto(sk, req->resp, req->resplen, 0,
 				&req->sa, req->sa_len);
 	} else {
+		uint16_t tcp_len =3D htons(req->resplen - 2);
+		/* correct TCP message length */
+		memcpy(req->resp, &tcp_len, sizeof(tcp_len));
 		sk =3D req->client_sk;
 		err =3D send(sk, req->resp, req->resplen, MSG_NOSIGNAL);
 	}
--=20
2.34.1


--nvY/yirvcqLe3afT
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0003-dnsproxy-Avoid-100-busy-loop-in-TCP-server-case.patch"
Content-Transfer-Encoding: quoted-printable

=46rom bd2f06fe3199321e9412f53a23fc3e18fd9a5da4 Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <mgerstner@suse.de>
Date: Wed, 19 Jan 2022 15:31:54 +0100
Subject: [PATCH 3/4] dnsproxy: Avoid 100 % busy loop in TCP server case

Once the TCP socket is connected and until the remote server is
responding (if ever) connmand executes a 100 % CPU loop, since
the connected socket will always be writable (G_IO_OUT).

To fix this, modify the watch after the connection is established to
remove the G_IO_OUT from the callback conditions.

Fixes: CVE-2022-23098
---
 src/dnsproxy.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/src/dnsproxy.c b/src/dnsproxy.c
index c027bcb972c4..1ccf36a95a35 100644
--- a/src/dnsproxy.c
+++ b/src/dnsproxy.c
@@ -2360,6 +2360,18 @@ static gboolean tcp_server_event(GIOChannel *channel=
, GIOCondition condition,
 			}
 		}
=20
+		/*
+		 * Remove the G_IO_OUT flag from the watch, otherwise we end
+		 * up in a busy loop, because the socket is constantly writable.
+		 *
+		 * There seems to be no better way in g_io to do that than
+		 * re-adding the watch.
+		 */
+		g_source_remove(server->watch);
+		server->watch =3D g_io_add_watch(server->channel,
+			G_IO_IN | G_IO_HUP | G_IO_NVAL | G_IO_ERR,
+			tcp_server_event, server);
+
 		server->connected =3D true;
 		server_list =3D g_slist_append(server_list, server);
=20
--=20
2.34.1


--nvY/yirvcqLe3afT
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0004-dnsproxy-Keep-timeout-in-TCP-case-even-after-connect.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 02a5300dd3a2d6354f51f4724adeda4b97e007d9 Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <mgerstner@suse.de>
Date: Wed, 19 Jan 2022 15:36:51 +0100
Subject: [PATCH 4/4] dnsproxy: Keep timeout in TCP case even after connecti=
on
 is established

If an outgoing TCP connection succeeds but the remote server never sends
back any data then currently the TCP connection will never be
terminated by connmand.

To prevent this keep the connection timeout of 30 seconds active even
after the connection has been established.
---
 src/dnsproxy.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/src/dnsproxy.c b/src/dnsproxy.c
index 1ccf36a95a35..cf1d36c74496 100644
--- a/src/dnsproxy.c
+++ b/src/dnsproxy.c
@@ -2375,11 +2375,6 @@ static gboolean tcp_server_event(GIOChannel *channel=
, GIOCondition condition,
 		server->connected =3D true;
 		server_list =3D g_slist_append(server_list, server);
=20
-		if (server->timeout > 0) {
-			g_source_remove(server->timeout);
-			server->timeout =3D 0;
-		}
-
 		for (list =3D request_list; list; ) {
 			struct request_data *req =3D list->data;
 			int status;
--=20
2.34.1


--nvY/yirvcqLe3afT--

--qH3hlEd2sngKVp6L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmHvwecACgkQFMQFyXGS
NVMRNw/4w6xWBfSzlpshX4RPH5J6xeIPx2NDoF18nJjUoj/kK5tc5GDpgqPaJLSQ
R5CPwDtFiMF4zCHWXMRUGUh2sPRwQb1xQs4phLqtT1hI/USponuTSqbXDdpzPcfj
hGNHR1PDO5xYRB1TsviLLaLph1jaRY15NUwjOaRpcQiDk2zZQy5w1p3XXWXDpQUj
/4uTdFKkzBRDC3Bc5FkLzjg+3Xc7NGodvSbRW8lF+PstCrL5CUPM3voPQ1XmD0bG
lbxrAxXDHsA789dWd2ieLDULgK4JbUIyiaPAirFCtnRy/SS5SyJCF6ZxUj6bgzhh
C9qYTf5t88ARcyeJb6yFRlGnNehIsmAvYxFEo9oWKVPxc/AzI4P9ieu3QMUmpsKG
EcGyGaEAKl6LySx2ORO0xyqplbpOpvMchgJjR2s8vIjddvs2Emzi4ZAwBpj6YtD1
jyn+Ok1T6AJgDZOjvu87rXzmOlTZkT+OtBgIuYPY0ZXH+Vx1giltYXWueRoEj8aa
dAdGuluhxTUo/ITygOc++/n/Cxd4Eql0Oc4pSjLccO0D/qNRf5ahMI2Ozjj5vrB/
M3xmdoRCTME7T7su02ghMJo0mEzpQHTqgcZsJkoiKw0i7EKfpXBmoatO4Vi4chEl
E/xspMLObdBQIjKTnwbQ+kGy8aXfE7M2aPoi4duADQ1gs4fVAw==
=JlvK
-----END PGP SIGNATURE-----

--qH3hlEd2sngKVp6L--
