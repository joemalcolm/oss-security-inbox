X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/13
Message-ID: <7b83542a-c058-43a3-a2bb-1d597be62b3e@oracle.com>
Date: Thu, 13 Aug 2026 12:06:19 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Go 1.26.6 and Go 1.25.13 are released with 10 security fixes
Content-Type: text/plain; charset=utf-8

-------- Forwarded Message --------
Subject: 	[security] Go 1.26.6 and Go 1.25.13 are released
Date: 	Thu, 13 Aug 2026 18:54:28 +0000
From: 	announce@...ang.org
To: 	golang-nuts@...glegroups.com

Hello gophers,

We have just released Go versions 1.26.6 and 1.25.13, minor point releases.

These releases include 10 security fixes following the security policy
<https://go.dev/doc/security/policy>:

   * x/mod/sumdb/tlog: fix transparency log tile verification bypass

     A malicious GOPROXY was previously capable of forging
     up to two sumdb tiles that allow for a requested module
     to bypass the GOSUMDB check and persist attacker-controlled
     module content to a local Go module cache.

     This attack allows for a malicious GOPROXY to serve
     malicious module content that cannot be detected
     by evaluating the transparency log.

     All tiles are now correctly verified against their parents.

     In order to determine if you have been affected:

     rm -r go.sum go.work.sum vendor/ && go mod tidy

     Thanks to Filippo Valsorda (Geomys) for reporting this issue.

     This is CVE-2026-56865 and Go issue https://go.dev/issue/80744
     <https://go.dev/issue/80744>.

   * x/mod/sumdb: ignore unrelated, unauthenticated hashes in Lookup

     A malicious GOSUMDB was capable of serving arbitrary
     module content not contained within the transparency
     log.

     This attack allows for a coordinating GOPROXY and
     GOSUMDB to serve a client malicious module content
     that cannot be detected by evaluating the transparency
     log.

     In order to determine if you have been affected:

     rm -r go.sum go.work.sum vendor/ && go mod tidy

     Thanks to mundur for reporting this issue.

     This is CVE-2026-56864 and Go issue https://go.dev/issue/80745
     <https://go.dev/issue/80745>.

   * encoding/xml: add recursion depth guard during decode

     Previously, DecodeElement would reset the depth counter
     causing it to never fire; this could lead to stack
     exhaustion.

     This is CVE-2026-56859 and Go issue https://go.dev/issue/80481
     <https://go.dev/issue/80481>.

   * net/http: apply ReadHeaderTimeout when doing unencrypted HTTP/2 check

     When a server is configured to support unencrypted HTTP/2, it reads a
     few bytes from each new connection to see if they contain the HTTP/2
     client preface. Previously, this was being done with no timeout applied.
     ReadHeaderTimeout is now applied for this.

     This is CVE-2026-56853 and Go issue https://go.dev/issue/80205
     <https://go.dev/issue/80205>.

   * net/url: avoid quadratic complexity in resolvePath

     Previously, resolving relative paths containing parent directory (|..|)
     segments performed string conversions and buffer rewrites on each step,
     resulting in quadratic time complexity and high memory allocation overhead.

     Now, path resolution operates on a byte buffer using index-based
     backtracking for |..| segments, eliminating the quadratic time complexity
     and significantly reducing memory allocations.

     This is CVE-2026-56860 and Go issue https://go.dev/issue/80494
     <https://go.dev/issue/80494>.

   * golang.org/x/net/dns/dnsmessage: panic when parsing invalid SVCB record

     Parsing an invalid SVCB or HTTPS RR can panic when
     the size of a parameter value overflows the message buffer.

     Thanks to Mundur (https://github.com/M0nd0R <https://github.com/M0nd0R>) for
     reporting this issue.

     This is CVE-2026-46600 and Go issue https://go.dev/issue/79795
     <https://go.dev/issue/79795>.

   * crypto/tls: limit handshake messages we are willing to accept post-handshake

     Previously, we always counted handshake messages, such as KeyUpdate, as
     state-advancing, regardless of whether a handshake has been completed or
     not. As a result, a malicious client can keep sending KeyUpdate messages
     to force the server to keep performing key derivation operations
     indefinitely.

     Thanks to Qi Deng of Aurascape.ai for reporting this issue.

     This is CVE-2026-56862 and Go issue https://go.dev/issue/80528
     <https://go.dev/issue/80528>.

   * html/template: fix Javascript regexp context tracking

     Previously, pathological inputs could close an
     unescaped |/| early, allowing for attack-controlled
     data to inject arbitrary content, potentially
     leading to XSS.

     Thanks to Ali Sherif for reporting this issue.

     This is CVE-2026-56858 and Go issue https://go.dev/issue/80435
     <https://go.dev/issue/80435>.

   * x/net/idna: failure to reject ASCII-only Punycode-encoded labels

     The ToASCII and ToUnicode functions incorrectly accepted Punycode-encoded labels
     that decode to an ASCII-only label. For example, ToUnicode("xn--example-.com")
     incorrectly returned the name "example.com" rather than an error.

     The idna package implements the processing algorithm from UTS 46.
     Older versions of UTS 46 included a specification bug which permitted
     multiple ASCII labels to decode to the same Unicode label.
     UTS 46 revision 33 fixed the specification bug.
     The idna package now implements the updated specification.

     This behavior can lead to privilege escalation in programs using the idna
     package.
     For example, a program which performs privilege checks on the ASCII hostname
     may reject "example.com" but permit "xn--example-.com". If that program
     subsequently
     converts the ASCII hostname to Unicode, it will inadvertently permits access
     to the Unicode name "example.com".

     Thanks to KC1zs4 (https://github.com/KC1zs4 <https://github.com/KC1zs4>) for
     reporting this issue.

     This is CVE-2026-39821 and Go issue https://go.dev/issue/78760
     <https://go.dev/issue/78760>.

   * encoding/asn1: enforce maximum recursion depth

     Enforce a recursion limit in Unmarshal to prevent stack exhaustion
     when parsing deeply-nested, recursive structures.

     Thanks to Marwan Atia (marwansamir688@...il.com
     <mailto:marwansamir688@...il.com>) for reporting this issue.

     This is CVE-2026-33818 and Go issue https://go.dev/issue/80405
     <https://go.dev/issue/80405>.

View the release notes for more information:
https://go.dev/doc/devel/release#go1.26.6 <https://go.dev/doc/devel/release#go1.26.6>

You can download binary and source distributions from the Go website:
https://go.dev/dl/ <https://go.dev/dl/>

To compile from source using a Git clone, update to the release with
|git checkout go1.26.6| and build as usual.

Thanks to everyone who contributed to the releases.

Cheers,
Dmitri and Mark for the Go team

-- 
You received this message because you are subscribed to the Google Groups "golang-announce" group.
To unsubscribe from this group and stop receiving emails from it, send an email to golang-announce+unsubscribe@...glegroups.com
To view this discussion visit https://groups.google.com/d/msgid/golang-announce/4f84cf61.EAAACRzWXsgAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBqfhLk%40mailjet.com
