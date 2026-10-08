X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/08/10
Message-ID: <14f345ce-cbc4-448e-9669-79b5cd9c1eae@oracle.com>
Date: Thu, 8 Oct 2026 12:26:08 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: Vulnerabilities in golang.org/x/net
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[security] Vulnerabilities in golang.org/x/net
Date: 	Thu, 8 Oct 2026 18:09:23 +0000
From: 	announce@...ang.org
To: 	golang-nuts@...glegroups.com

Hello gophers,

We have tagged version v0.60.0 of golang.org/x/net in order to address the 
following security issues:

   * net/http: HTTP/2 server memory exhaustion due to Trailer headers

     When "Trailer" headers are sent by a client, the HTTP server internally
     uses the header values to populate the Request.Trailer map passed to the
     server handler. Because Request.Trailer is a map, each entry incurs
     memory overhead. For HTTP/2 servers, a malicious client can exploit this
     by sending a "Trailer" header that declares a large number of fields,
     causing the server to allocate a disproportionate amount of memory while
     bypassing Server.MaxHeaderValueCount and Server.MaxHeaderBytes limits.
     This exploit is not applicable for HTTP/1 servers, which do not support
     multiplexing a large number of requests over one TCP connection, and
     whose Server.MaxHeaderBytes are calculated differently.

     Server.MaxHeaderValueCount and Server.MaxHeaderBytes limits are now
     applied towards the trailer fields declared in "Trailer" headers.

     Thanks to RyotaK (https://ryotak.net <https://ryotak.net>) of GMO Flatt
     Security Inc. for reporting this issue.

     This is CVE-2026-78659 and Go issue https://go.dev/issue/81857
     <https://go.dev/issue/81857>.

   * net/http: excessive CPU consumption from repeated initial window changes

     A malicious HTTP/2 peer could cause excessive CPU consumption in the
     client or server by opening a large number of streams and then sending
     many small SETTINGS frames containing SETTINGS_INITIAL_WINDOW_SIZE values.

     The HTTP/2 client and server now efficiently handle changes to the
     initial window size (O(1) rather than O(number of streams)).

     Thanks to Jakub Ciolek (https://ciolek.dev <https://ciolek.dev>) for
     reporting this issue.

     This is CVE-2026-78669 and Go issue https://go.dev/issue/81742
     <https://go.dev/issue/81742>.

   * net/http: double flow control refund on HTTP/2 server streams

     The HTTP/2 server could refund connection-level flow control twice for the
     same data:
     Once when a client resets a stream (refunding data for any sent-but-unread
     portion
     of the stream), and again when a request handler reads the buffered data.
     A malicious client could exploit this to bypass the configured connection-level
     flow control limit (MaxReceiveBufferPerConnection). Total buffered data is 
still
     limited by the concurrent stream limit and stream-level flow control.

     The HTTP/2 server now waits to refund connection-level flow control for reset
     streams until after the request handler is complete.

     Thanks to Ali Sherif (https://www.linkedin.com/in/ali-sherif-13812b276/
     <https://www.linkedin.com/in/ali-sherif-13812b276/>) for reporting this issue.

     This is CVE-2026-78663 and Go issue https://go.dev/issue/81743
     <https://go.dev/issue/81743>.

   * net/http: HTTP/2 server crash due to HPACK encoder race

     HTTP/2 servers could end up crashing due to inadvertently
     modifying its HPACK encoder concurrently. This happens because the
     server modifies the HPACK encoder from two goroutines without
     synchronization: one uses the encoder to encode a HEADERS frame as part
     of a response sent to a client and the other modifies the encoder's
     table size when handling a SETTINGS frame containing
     SETTINGS_HEADER_TABLE_SIZE that a client sends. A malicious client can
     repeatedly send a request while changing the header table size to crash
     the server.

     Fix this issue by not applying SETTINGS_HEADER_TABLE_SIZE immediately.
     Instead, buffer any SETTINGS_HEADER_TABLE_SIZE received, and only apply
     the new value prior to the next time the server writes a frame.

     Thanks to RyotaK (https://ryotak.net <https://ryotak.net>) of GMO Flatt
     Security Inc. for reporting this issue.

     This is CVE-2026-97032 and Go issue https://go.dev/issue/81867
     <https://go.dev/issue/81867>.

Cheers,
Go Security team

-- 
You received this message because you are subscribed to the Google Groups 
"golang-announce" group.
To view this discussion visit 
https://groups.google.com/d/msgid/golang-announce/a0d2f0c3.BAAACYJSI2kAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBqx9xT%40mailjet.com
