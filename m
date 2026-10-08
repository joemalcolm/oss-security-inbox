X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/08/9
Message-ID: <994c4153-3f65-4198-9836-10e4b17ec958@oracle.com>
Date: Thu, 8 Oct 2026 12:24:21 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: Go 1.27.2 and Go 1.26.9 are released
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[security] Go 1.27.2 and Go 1.26.9 are released
Date: 	Thu, 8 Oct 2026 18:08:50 +0000
From: 	announce@...ang.org
To: 	golang-nuts@...glegroups.com

Hello gophers,

We have just released Go versions 1.27.2 and 1.26.9, minor point releases.

These releases include 15 security fixes following the security policy 
<https://go.dev/doc/security/policy>:

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

   * crypto/tls: reject malformed ECH outer extension references

     Multiple ECH outer extension references are not
     permitted under RFC 9849; previously, a client
     could send a well-crafted packet that could
     trigger memory exhaustion in the server process
     by specifying multiple references.

     We now reject these as malformed and curb the
     memory amplification vector as a result.

     This is CVE-2026-97031 and Go issue https://go.dev/issue/81855
     <https://go.dev/issue/81855>.

   * cmd/go: checksum bypass for golang.org/fips140

     Previously, a user operating inside of a malicious
     Go project that defines a bogus golang.org/fips140
     and operates a malicious GOMODPROXY the user chooses
     to connect to can serve an arbitrary module in its
     place.

     We now unpack the trusted ziphash for the bundled
     golang.org/fips140 module and construct its entry
     in the GOMODCACHE such that it can be verified by
     the toolchain.

     This is CVE-2026-94444 and Go issue https://go.dev/issue/81833
     <https://go.dev/issue/81833>.

   * cmd/go: checksum database bypass for golang.org/toolchain

     Previously, a user operating inside of a malicious
     Go project that defines a bogus golang.org/toolchain
     go.sum entry and operates a malicious GOMODPROXY the
     user chooses to use can bypass the intended checksum.

     We now ensure that golang.org/toolchain always goes
     to the network for the canonical checksum.

     This is CVE-2026-94447 and Go issue https://go.dev/issue/81834
     <https://go.dev/issue/81834>.

   * html/template: reset context tracking on consecutive template expressions

     When a JavaScript template literal contains
     consecutive expressions, the context tracking
     state was not properly reset upon entering a
     new expression.

     We now ensure that template-literal expression
     entries correctly reset context variables so all
     subsequent regular expression literals are
     accurately recognized and escaped.

     This is CVE-2026-94448 and Go issue https://go.dev/issue/81821
     <https://go.dev/issue/81821>.

   * html/template: recognize |yield| as regexp preceder keyword

     A trusted template author may have previously
     written a valid template wherein the use of
     the |yield| keyword would not be correctly
     escaped.

     We now ensure that valid keyword uses are
     escaped and non-keyword uses are not escaped.

     This is CVE-2026-97030 and Go issue https://go.dev/issue/81823
     <https://go.dev/issue/81823>.

   * net/textproto, mime/multipart: memory limit bypass when parsing MIME headers

     Parsing a multipart form could bypass memory limits and read an
     arbitrarily long line into memory when the remaining limit at the
     start of a part was less than 400 bytes.

     Multipart form memory limits are now properly enforced in this situation.

     Thanks to Jakub Ciolek (https://ciolek.dev <https://ciolek.dev>) for
     reporting this issue.

     This is CVE-2026-94440 and Go issue https://go.dev/issue/81741
     <https://go.dev/issue/81741>.

   * net/http: HTTP/1 client connection desynchronization after CONNECT rejection

     When http.Transport sends an HTTP/1 CONNECT request with a non-empty
     Request.Body, it writes the body directly to the connection without
     framing after the request headers. If the server rejects the CONNECT
     request with a non-2xx keep-alive response, Transport returns the
     connection to the idle pool. Because CONNECT requests do not have a
     request body, the server may interpret the trailing body bytes as a
     subsequent pipelined HTTP/1.1 request on the connection, leaving the
     pooled connection desynchronized and causing the next caller that reuses
     it to read the response to the injected request. In reverse proxies
     (including httputil.ReverseProxy) that forward CONNECT requests through
     a shared Transport, this can lead to cross-user response poisoning.

     The HTTP/1 transport now closes a connection after sending a CONNECT
     request, regardless of the response status.

     In addition, ReverseProxy now rejects incoming CONNECT requests
     with a 405 Method Not Allowed response. ReverseProxy has never handled
     CONNECT requests in a useful fashion (it does not convert the
     connection into a bidirectional tunnel), so we do not expect this
     change to negatively affect any current users.

     Thanks to Xclow3n (Rajat Raghav) for reporting this issue.

     This is CVE-2026-56866 and Go issue https://go.dev/issue/81740
     <https://go.dev/issue/81740>.

   * net/http: HTTP/1 server connection desynchronization after 2xx CONNECT response

     When an HTTP server handler sent a 2xx response to an HTTP/1 CONNECT request
     and returned without hijacking the connection, the server improperly continued
     to read and serve requests from the connection. Since a 2xx response to an
     HTTP/1 CONNECT converts the connection into a tunnel, the server should not
     treat the connection as continuing to contain HTTP.

     The impact of this misbehavior is mostly limited to potential request 
smuggling,
     where an intermediate proxy considers the data on the connection to be tunneled
     and the server considers it to be HTTP.

     The HTTP/1 server now always closes a connection after responding to a CONNECT
     request, regardless of the response status.

     Thanks to Jakub Ciolek (https://ciolek.dev <https://ciolek.dev>) for
     reporting this issue.

     This is CVE-2026-94439 and Go issue https://go.dev/issue/81744
     <https://go.dev/issue/81744>.

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

   * net/http: HTTP/2 transport accepts malformed framing-related headers

     Historically, we have been rather lax about malformed framing-related
     headers in our HTTP/2 implementation, as they cannot interfere with
     HTTP/2 framing. However, this makes it possible for our HTTP/2
     implementation to forward responses containing such headers to an HTTP/1
     client when acting as a reverse proxy. If the HTTP/1 client also does
     not behave strictly enough, this can result in response smuggling.

     We now delete malformed framing-related headers when received by our
     HTTP/2 transport, so they will not be forwarded to a potentially
     vulnerable HTTP/1 client.

     Thanks to TJ Barton for reporting this issue.

     This is CVE-2026-78660 and Go issue https://go.dev/issue/81115
     <https://go.dev/issue/81115>.

   * os: Root.Mkdir(All) can follow junctions out of the root on Windows

     On Windows, when the target of Root.Mkdir or Root.MkdirAll was a junction
     pointing to an empty location, the operation would create a directory at
     the junction target even when that target was located outside the root.
     This only applies to operations where the last path component is a
     junction (path/to/junction, but not path/junction/target).

     Root.Mkdir and Root.MkdirAll now correctly avoid resolving junctions.

     Thanks to Daniele Ballarini for reporting this issue.

     This is CVE-2026-56857 and Go issue https://go.dev/issue/81739
     <https://go.dev/issue/81739>.

   * net/http: lack of limit on size of parsed Range headers

     When parsing a Range header containing a large number of small ranges,
     FileServer(FS), ServeContent, and ServeFile(FS) could consume an excessive
     amount of CPU.

     These functions now ignore Range headers containing more than 200 ranges.

     The limit is controlled by the new httpservecontentmaxranges=
     GODEBUG setting. Setting GODEBUG=httpservecontentmaxranges=0
     disables the limit.

     Thanks to Jakub Ciolek (https://ciolek.dev <https://ciolek.dev>) for
     reporting this issue.

     This is CVE-2026-78667 and Go issue https://go.dev/issue/81858
     <https://go.dev/issue/81858>.

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

View the release notes for more information:
https://go.dev/doc/devel/release#go1.27.2

You can download binary and source distributions from the Go website:
https://go.dev/dl/

To compile from source using a Git clone, update to the release with
|git checkout go1.27.2| and build as usual.

Thanks to everyone who contributed to the releases.

Cheers,
Dmitri and Michael for the Go team

-- 
You received this message because you are subscribed to the Google Groups 
"golang-announce" group.
To view this discussion visit 
https://groups.google.com/d/msgid/golang-announce/b5f3c7ce.BAAACYJRwXEAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBqx9wy%40mailjet.com 

