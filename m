X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/04/1
Message-ID: <01bb4946-c936-4a44-8b69-f44c9e793e10@apache.org>
Date: Sun, 4 Oct 2026 08:51:50 +0200
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Cc: private@...ift.apache.org
Subject: Apache Thrift 0.25.0: 61 CVEs fixed (combined announcement)
Content-Type: text/plain; charset=utf-8

Apache Thrift 0.25.0 was released on 30 September 2026:
https://lists.apache.org/thread/33otcgbqd27wf6qq810q56znzbomnhg1

It fixes the 61 vulnerabilities listed below. All of them affect Apache
Thrift before 0.25.0, and users are recommended to upgrade to 0.25.0.
Each was announced on 1 October 2026 on announce@...che.org and on the
Apache Thrift user or dev list; this message replaces the 61 separate
postings to this list.

Each entry gives the CVSS 4.0 score, the ASF rating, the title, the
affected language bindings and a link to the full announcement (severity
vector, weakness, description and credit). The CVE records are at
https://www.cve.org/CVERecord?id=<CVE id>.

CVE-2026-61373  8.7  important Java TSaslNonblockingServer pre-auth
                                unbounded SASL frame allocation
                                Bindings: Java
  https://lists.apache.org/thread/shy1rrm2g383wlbdb2p7w19c868ntdjp

CVE-2026-61374  7.1  important Java TSaslTransport post-auth data-frame
                                missing size limit
                                Bindings: Java
  https://lists.apache.org/thread/35831rngzrqky1gvc32t06psgq1b8441

CVE-2026-63772  8.7  important Unauthenticated single-packet crash of Go
                                Thrift servers via the THeader transform
                                count
                                Bindings: Go
  https://lists.apache.org/thread/6kpzdw29gsfxptv4b65y9s6f42tdyo8k

CVE-2026-66054  6.9  moderate  C++ THeaderTransport does not enforce
                                configured maxFrameSize
                                Bindings: C++
  https://lists.apache.org/thread/7c23sgowkb3ssmolqofqsn8wzsddvf33

CVE-2026-66055  8.2  important TJSONProtocol accepts a single JSON
                                string/number exceeding the configured size
                                limit (multi-language)
                                Bindings: C++, Java, Go, netstd, Python,
                                  Delphi
  https://lists.apache.org/thread/nxlmlhgsh7fwr4mo1fkhtkw3v266qhcx

CVE-2026-66081  8.7  important c_glib read_message_begin leaves output
                                parameters unset for non-versioned messages
                                Bindings: c_glib
  https://lists.apache.org/thread/9d51ygo6hrsdo5ndwckbwt3mnp290m57

CVE-2026-66331  6.9  moderate  Buffered transport reads are not accounted
                                against MaxMessageSize
                                Bindings: Delphi
  https://lists.apache.org/thread/971572orz86jdwlg58wqv8o50oqqb143

CVE-2026-66837  8.7  important PHP accelerator sizes a stack buffer from a
                                wire-controlled string length
                                Bindings: PHP
  https://lists.apache.org/thread/7o985t84551tpo55v6fsd3g42gs3zps1

CVE-2026-66858  8.7  important skip() does not apply the recursion limit
                                (Python accelerator, PHP, Perl, Lua,
                                Smalltalk, OCaml)
                                Bindings: Python, PHP, Perl, Lua, Smalltalk,
                                  OCaml
  https://lists.apache.org/thread/6kl6g40tpl8zt3opd8fwn6bsgyddzhd5

CVE-2026-66859  8.7  important c_glib multiplexed processor crashes on a
                                message it cannot route
                                Bindings: c_glib
  https://lists.apache.org/thread/n9rogg2166hl9y4ycq5njpvnxndr8y5o

CVE-2026-82458  8.7  important Container element count not bounded by the
                                bytes available
                                Bindings: Go, Rust, netstd, OCaml, Erlang,
                                  JavaME, C++, Java, Kotlin, D
  https://lists.apache.org/thread/7xqf651pvjykw0xr9vw0ooz0bwx7wzy7

CVE-2026-82459  8.2  important Integer underflow in C++ THeaderTransport
                                allows an unauthenticated remote peer to
                                terminate a 32-bit process
                                Bindings: C++
  https://lists.apache.org/thread/zf8ppfpl6nqhp53sxnz6osnjw93g9fw2

CVE-2026-83632  9.2  critical  C++ THttpTransport grows its line buffer
                                without bound
                                Bindings: C++
  https://lists.apache.org/thread/zjv6hjmhl4tb4l4l1dk4bmc2whxh0lb4

CVE-2026-83663  8.7  important TFramedTransport and THeaderTransport
                                re-enter Read once per frame that carries no
                                payload (Go)
                                Bindings: Go
  https://lists.apache.org/thread/yjz317wq7h86q9k8ws6ton0ojgl8hjct

CVE-2026-83745  8.7  important WebSocket frame decoders allocate the payload
                                buffer from the declared length, not the
                                bytes received (Node.js, D)
                                Bindings: Node.js, D
  https://lists.apache.org/thread/64y7f0b89mnq4xoqcn4h26to8kskolgc

CVE-2026-85086  6.9  moderate  Perl TLS client disables certificate
                                verification by default
                                Bindings: Perl
  https://lists.apache.org/thread/c7f9g4027ok0gocyso2y84r2mhgc2xmy

CVE-2026-85087  6.9  moderate  Python ≥3.12 host-name check silently becomes
                                a no-op
                                Bindings: Python
  https://lists.apache.org/thread/l2rgp3dqhpy2w347forzdt9g7o2d6k0d

CVE-2026-85088  6.9  moderate  The C++ and D clients fall back to the
                                certificate Common Name when subjectAltName
                                entries are present but do not match
                                Bindings: C++, D
  https://lists.apache.org/thread/zcgm7lx6037lvgvn87rc1tj3p0zhv371

CVE-2026-85476  8.2  important c_glib `read_all` spins when the underlying
                                read returns 0
                                Bindings: c_glib
  https://lists.apache.org/thread/1zdvscq7p3hf3z30s26h4tm9dvljm1jj

CVE-2026-85483  6.3  moderate  c_glib TZlibTransport reports a full read
                                after a premature stream end
                                Bindings: c_glib
  https://lists.apache.org/thread/ro1y0ckzfzcc45yk9qkt1p6t4g2jvrfy

CVE-2026-85493  8.7  important TProtocolUtil.skip follows peer-chosen
                                nesting to any depth the stack allows (Dart,
                                Java ME)
                                Bindings: Dart, JavaME
  https://lists.apache.org/thread/oqr0h2k1cg9hho3oh8trmovmxc04fl5m

CVE-2026-85494  8.7  important Framed transport and binary protocol size a
                                read buffer from a peer-declared length with
                                no effective maximum (multi-language)
                                Bindings: Python, Ruby, Erlang, Lua, Dart,
                                  JavaME, D, Perl, PHP
  https://lists.apache.org/thread/rm0m34gt6fh1flvt16wty559hfg191qr

CVE-2026-86535  8.7  important A JSON member name can stall the Node
                                server's event loop indefinitely
                                Bindings: Node.js
  https://lists.apache.org/thread/94cvvzzl0rh707bn2j4zt844v547508g

CVE-2026-86536  6.3  moderate  A map key from the wire can replace a decoded
                                object's prototype in generated JavaScript
                                Bindings: Node.js, JavaScript, TypeScript
  https://lists.apache.org/thread/xckvfky30kdnk8vqnhy0wndthvc9nymp

CVE-2026-86537  8.7  important A truncated HTTP request stops the D
                                library's server, allowing an 
unauthenticated
                                remote attacker to deny service
                                Bindings: D
  https://lists.apache.org/thread/k14jfr1xwc0vtmm2s7xro6lt7q4y6s7m

CVE-2026-87117  8.7  important PHP `thrift_protocol` accelerator
                                dereferences a missing container-element 
spec
                                Bindings: PHP
  https://lists.apache.org/thread/y05tvpv19ow44j16gtbcy9ht7lb0qjpy

CVE-2026-90440  8.2  important An exception escaping a libevent callback
                                stops the D library's non-blocking server,
                                allowing an unauthenticated remote attacker
                                to deny service
                                Bindings: D
  https://lists.apache.org/thread/s8fjltl6c1pkm7vg9v4qkr89b5b74jbg

CVE-2026-91135  9.2  critical  C++ `THeaderTransport::transform()` heap
                                buffer overflow (write direction)
                                Bindings: C++
  https://lists.apache.org/thread/rbpwlhlxnv2qgyk8cfscp2d2fd3p0ojb

CVE-2026-91137  8.7  important PHP `thrift_protocol` accelerator: zero-byte
                                container elements
                                Bindings: PHP
  https://lists.apache.org/thread/bf12g1b11r4x9x3wsy4mgwfgd0t779h7

CVE-2026-92834  6.3  moderate  C++ WebSocket server transport does not read
                                a full request length
                                Bindings: C++
  https://lists.apache.org/thread/bjor9ttx7hk23gzcx60ohz0f20xzvgv0

CVE-2026-93925  8.7  important C++ `THeaderTransport::writeVarint32()` stack
                                buffer overflow on a negative protocol id
                                Bindings: C++
  https://lists.apache.org/thread/b4rrkrwoyqb9g7hk58d3fx09cbvp1tg9

CVE-2026-93926  8.7  important C++ `THeaderTransport::untransform()` leaks
                                the zlib stream on the error path
                                Bindings: C++
  https://lists.apache.org/thread/9353rb8mpoq4ltff88h1j2y3hfy6blgb

CVE-2026-94633  8.7  important Dart `TBinaryProtocol.readMessageBegin`
                                allocates from the pre-versioned name length
                                Bindings: Dart
  https://lists.apache.org/thread/cxkbblyht7988p2o6yvnmd6536qmt88k

CVE-2026-94634  8.2  important Python `TJSONProtocol` has a string length
                                limit that is off by default
                                Bindings: Python
  https://lists.apache.org/thread/dgy8ox9t4bh1xhf74ovf29ht87x7dno4

CVE-2026-94635  8.7  important Lua `TBinaryProtocol:readMessageBegin`
                                bypasses `checkStringSize` on the
                                pre-versioned name
                                Bindings: Lua
  https://lists.apache.org/thread/ow8994gb5g8ssmmbkbl48xqb0tpvqyr3

CVE-2026-94636  8.2  important Python `TZlibTransport` stops enforcing its
                                decompressed-size limit once the limit is
                                exactly used up
                                Bindings: Python
  https://lists.apache.org/thread/1rpq0d0g6yzjjzl1z27lwmvhzkn6rbrs

CVE-2026-94637  8.2  important Go `THeaderTransport` does not bound the
                                inflated size of a ZLIB frame
                                Bindings: Go
  https://lists.apache.org/thread/6hxll1jcnod9gfr225tz7my08lpj3jmt

CVE-2026-94638  6.3  moderate  PHP `thrift_protocol` C extension ignores the
                                configured `maxStringSize`
                                Bindings: PHP
  https://lists.apache.org/thread/v60w786pqr7njzz9425grby8yjrgmbsj

CVE-2026-94639  8.2  important Java `TSaslNonblockingServer`: residual of
                                CVE-2026-61373 (thread-death black hole + no
                                cross-connection budget)
                                Bindings: Java
  https://lists.apache.org/thread/5okpz47dv8hy0s3r6tmrplg3y7jzhhyw

CVE-2026-94642  8.7  important PHP `TSimpleServer` exits the whole process
                                on any non-transport exception
                                Bindings: PHP
  https://lists.apache.org/thread/5tjwbbyympbj16lblocv9b12s32sg113

CVE-2026-94644  8.2  important PHP `TJSONProtocol` string/number readers
                                have no size bound
                                Bindings: PHP
  https://lists.apache.org/thread/8y04vvxw7ozxxh3c44vhoy7jsd6bonzq

CVE-2026-94645  8.2  important Node.js `TJSONProtocol` uses a peer-declared
                                container size as an unbounded loop bound
                                Bindings: Node.js
  https://lists.apache.org/thread/p96mokqfy16mnqfyon46mf6g8nr9ghb6

CVE-2026-94646  8.7  important Node.js `server.js` ends the process on any
                                per-connection error (+ two triggers)
                                Bindings: Node.js
  https://lists.apache.org/thread/5hjh0gz8wf6bo7ydxjpqj92m42hwmfo8

CVE-2026-94648  8.2  important dart `TJsonProtocol`/`TJSONProtocol` has no
                                string size bound
                                Bindings: Dart
  https://lists.apache.org/thread/f9w4q6ttlc3k9404x4do25gdhqodtjnn

CVE-2026-94650  8.2  important c_glib generated struct readers have no
                                recursion-depth guard (native stack
                                exhaustion)
                                Bindings: c_glib
  https://lists.apache.org/thread/poskkt3p754b2f293g63934hw160o86j

CVE-2026-94651  8.2  important Java `TSaslNonblockingServer`
                                `Computation.run` orphans a connection on a
                                pre-auth parse error
                                Bindings: Java
  https://lists.apache.org/thread/rflzpdvtk8yhpzg99wkf5yf277nn7267

CVE-2026-94652  6.3  moderate  C++ `TEvhttpServer` leaks its
                                `RequestContext` when the processor throws
                                before calling back
                                Bindings: C++
  https://lists.apache.org/thread/nodwz7gjvogkkh3w1jwbsslk1c7t0727

CVE-2026-94653  8.2  important PHP framed/memory/HTTP transports re-slice
                                the buffer on every read (quadratic)
                                Bindings: PHP
  https://lists.apache.org/thread/8zbv1y4wzr3nn5mzmdph7b0n6tm0lc4m

CVE-2026-94654  8.2  important Python `TNonblockingServer` busy-loops and
                                stops selecting all fds after an
                                8192-byte-boundary frame
                                Bindings: Python
  https://lists.apache.org/thread/kx3xdttoypl8j4dcxmqbq9dwy1w0kr7j

CVE-2026-94655  8.2  important Lua `TJsonProtocol` string/number readers
                                have no size bound and are quadratic
                                Bindings: Lua
  https://lists.apache.org/thread/wdjyf4y115ybgdzz5m3gspo97lcmz1dt

CVE-2026-94656  8.2  important rb `TJsonProtocol`/`TJSONProtocol` has no
                                string size bound
                                Bindings: Ruby
  https://lists.apache.org/thread/lg97w2yvg3c6z06l8m5xs3j3v2m6mvj8

CVE-2026-94657  8.2  important javame `TJsonProtocol`/`TJSONProtocol` has no
                                string size bound
                                Bindings: JavaME
  https://lists.apache.org/thread/lpcmo2xjfyfww474xdyyfypkqthk9s14

CVE-2026-94658  8.7  important Lua `TFramedTransport`/`THttpTransport`
                                re-slice the buffer on every read 
(quadratic)
                                Bindings: Lua
  https://lists.apache.org/thread/hv6b1nyk2p15gy5pmtprwo7z9m46mfcx

CVE-2026-96277  8.7  important Ruby `SimpleServer` ends `serve()` on any
                                non-Transport/Protocol exception
                                Bindings: Ruby
  https://lists.apache.org/thread/k1t5r9sz7k5tn57cnf5khw2ywlxv6098

CVE-2026-96286  8.2  important Perl servers end `serve()` when serving one
                                connection fails
                                Bindings: Perl
  https://lists.apache.org/thread/o5386v7ytbbjv9sx7dbszw46ypod5yd9

CVE-2026-96287  8.2  important Perl `FramedTransport` reads and TLS socket
                                writes re-slice the remaining buffer on 
every
                                call (quadratic)
                                Bindings: Perl
  https://lists.apache.org/thread/tcg16jr59z5nry066dw7ym60vl25dxt9

CVE-2026-96288  8.2  important Erlang generated struct reads have no
                                recursion-depth guard (unbounded memory)
                                Bindings: Erlang
  https://lists.apache.org/thread/vxnk7cmdtoqjn97b8szlqym1mxx0xtzb

CVE-2026-96289  8.2  important php `--gen php:inlined` struct readers (and
                                `TProtocol::skipBinary`) have no
                                recursion-depth guard
                                Bindings: PHP
  https://lists.apache.org/thread/kv1zkwlt82lkkv20g29txr5pjnvo0pf8

CVE-2026-96292  8.2  important Lua `THttpTransport:_parseHeaders` matches
                                each header line with a backtracking pattern
                                (quadratic)
                                Bindings: Lua
  https://lists.apache.org/thread/3wmvtvv56rky5wtszn4zr8w12kg928qn

CVE-2026-96294  8.7  important nodejs web server: no `error` listener on an
                                upgraded WebSocket connection
                                Bindings: Node.js
  https://lists.apache.org/thread/52gwhsy947hj9qhgn0dql726z1q927g4

CVE-2026-96990  8.2  important Erlang thrift_json_protocol reads a whole
                                message with no size bound
                                Bindings: Erlang
  https://lists.apache.org/thread/hrgcqlms4ksrz4qkqdjwoxxggdty7dgh

Jens Geyer, for the Apache Thrift PMC

--
Drafted with AI assistance (Claude Opus 5.5); reviewed and sent by Jens 
Geyer.

