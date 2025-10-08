Received: (qmail 25644 invoked by uid 550); 8 Oct 2025 00:39:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24563 invoked from network); 8 Oct 2025 00:39:52 -0000
Date: Tue, 7 Oct 2025 20:39:43 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aOWyz7tkcULTJKut@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] several vulnerabilities fixed in Go 1.25.2 and Go 1.24.8

Forwarding from
https://groups.google.com/g/golang-nuts/c/Gxn25BP4MXk/m/3KrM-XBOBAAJ
because I don't think I've seen it here on this list
yet.

----- Forwarded message from announce@golang.org -----

> Date: Tue, 7 Oct 2025 18:50:38 +0000
> From: announce@golang.org
> To: golang-nuts@googlegroups.com
> Subject: [security] Go 1.25.2 and Go 1.24.8 are released
> 
> Hello gophers,
> 
> We have just released Go versions 1.25.2 and 1.24.8, minor point releases.
> 
> These minor releases include 10 security fixes following the security policy <https://go.dev/security>:
> 
> -	net/mail: excessive CPU consumption in ParseAddress
> 
> 	The ParseAddress function constructed domain-literal address components through repeated string concatenation. When parsing large domain-literal components, this could cause excessive CPU consumption.
> 
> 	Thanks to Philippe Antoine (Catena cyber) for reporting this issue.
> 
> 	This is CVE-2025-61725 and Go issue https://go.dev/issue/75680.
> 
> -	crypto/x509: quadratic complexity when checking name constraints
> 
> 	Due to the design of the name constraint checking algorithm, the processing time
> 	of some inputs scales non-linearly with respect to the size of the certificate.
> 
> 	This affects programs which validate arbitrary certificate chains.
> 
> 	Thanks to Jakub Ciolek for reporting this issue.
> 
> 	This is CVE-2025-58187 and Go issue https://go.dev/issue/75681.
> 
> -	crypto/tls: ALPN negotiation errors can contain arbitrary text
> 
> 	The crypto/tls conn.Handshake method returns an error on the server-side when
> 	ALPN negotation fails which can contain arbitrary attacker controlled
> 	information provided by the client-side of the connection which is not escaped.
> 
> 	This affects programs which log these errors without any additional form of
> 	sanitization, and may allow injection of attacker controlled information into
> 	logs.
> 
> 	Thanks to National Cyber Security Centre Finland for reporting this issue.
> 
> 	This is CVE-2025-58189 and Go issue https://go.dev/issue/75652.
> 
> -	encoding/pem: quadratic complexity when parsing some invalid inputs
> 
> 	Due to the design of the PEM parsing function, the processing time for some
> 	inputs scales non-linearly with respect to the size of the input.
> 
> 	This affects programs which parse untrusted PEM inputs.
> 
> 	Thanks to Jakub Ciolek for reporting this issue.
> 
> 	This is CVE-2025-61723 and Go issue https://go.dev/issue/75676.
> 
> -	net/url: insufficient validation of bracketed IPv6 hostnames
> 
> 	The Parse function permitted values other than IPv6 addresses to be included in square brackets within the host component of a URL. RFC 3986 permits IPv6 addresses to be included within the host component, enclosed within square brackets. For example: "http://[::1]/". IPv4 addresses and hostnames must not appear within square brackets. Parse did not enforce this requirement.
> 
> 	Thanks to Enze Wang, Jingcheng Yang and Zehui Miao of Tsinghua University for reporting this issue.
> 
> 	This is CVE-2025-47912 and Go issue https://go.dev/issue/75678.
> 
> -	encoding/asn1: pre-allocating memory when parsing DER payload can cause memory exhaustion
> 
> 	When parsing DER payloads, memories were being allocated prior to fully validating the payloads.
> 	This permits an attacker to craft a big empty DER payload to cause memory exhaustion in functions such as asn1.Unmarshal, x509.ParseCertificateRequest, and ocsp.ParseResponse.
> 
> 	Thanks to Jakub Ciolek for reporting this issue.
> 
> 	This is CVE-2025-58185 and Go issue https://go.dev/issue/75671.
> 
> -	net/http: lack of limit when parsing cookies can cause memory exhaustion
> 
> 	Despite HTTP headers having a default limit of 1 MB, the number of cookies that can be parsed did not have a limit.
> 	By sending a lot of very small cookies such as "a=;", an attacker can make an HTTP server allocate a large amount of structs, causing large memory consumption.
> 
> 	net/http now limits the number of cookies accepted to 3000, which can be adjusted using the httpcookiemaxnum GODEBUG option.
> 
> 	Thanks to jub0bs for reporting this issue.
> 
> 	This is CVE-2025-58186 and Go issue https://go.dev/issue/75672.
> 
> -	crypto/x509: panic when validating certificates with DSA public keys
> 
> 	Validating certificate chains which contain DSA public keys can cause programs
> 	to panic, due to a interface cast that assumes they implement the Equal method.
> 
> 	This affects programs which validate arbitrary certificate chains.
> 
> 	Thanks to Jakub Ciolek for reporting this issue.
> 
> 	This is CVE-2025-58188 and Go issue https://go.dev/issue/75675.
> 
> -	archive/tar: unbounded allocation when parsing GNU sparse map
> 
> 	tar.Reader did not set a maximum size on the number of sparse region data blocks in GNU tar pax 1.0 sparse files. A maliciously-crafted archive containing a large number of sparse regions could cause a Reader to read an unbounded amount of data from the archive into memory. When reading from a compressed source, a small compressed input could result in large allocations.
> 
> 	Thanks to Harshit Gupta (Mr HAX) - https://www.linkedin.com/in/iam-harshit-gupta/ for reporting this issue.
> 
> 	This is CVE-2025-58183 and Go issue https://go.dev/issue/75677.
> 
> -	net/textproto: excessive CPU consumption in Reader.ReadResponse
> 
> 	The Reader.ReadResponse function constructed a response string through
> 	repeated string concatenation of lines. When the number of lines in a response is large,
> 	this could cause excessive CPU consumption.
> 
> 	Thanks to Jakub Ciolek for reporting this issue.
> 
> 	This is CVE-2025-61724 and Go issue https://go.dev/issue/75716.
> 
> View the release notes for more information:
> https://go.dev/doc/devel/release#go1.25.2
> 
> You can download binary and source distributions from the Go website:
> https://go.dev/dl/
> 
> To compile from source using a Git clone, update to the release with
> git checkout go1.25.2 and build as usual.
> 
> Thanks to everyone who contributed to the releases.
> 
> Cheers,
> Michael and Carlos for the Go team
> 
> -- 
> You received this message because you are subscribed to the Google Groups "golang-announce" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to golang-announce+unsubscribe@googlegroups.com.
> To view this discussion visit https://groups.google.com/d/msgid/golang-announce/459c470d.BAAAB6Txh8AAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBo5WD-%40mailjet.com.

----- End forwarded message -----
