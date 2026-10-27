X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/27/10
Message-ID: <27852fe1-a371-47d5-b1eb-8b1e27fa6531@oracle.com>
Date: Tue, 27 Oct 2026 14:53:23 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Vulnerabilities in golang.org/x/net
Content-Type: text/plain; charset=utf-8

-------- Forwarded Message --------
Subject: 	[security] Vulnerabilities in golang.org/x/net
Date: 	Tue, 27 Oct 2026 19:53:49 +0000
From: 	announce@...ang.org
To: 	golang-nuts@...glegroups.com


Hello gophers,

We have tagged version v0.62.0 of golang.org/x/net in order to address the 
following security issues:

   * html: avoid quadratic complexity when coalescing text nodes

     When coalescing adjacent text nodes in addText and fosterParent,
     appending to an existing TextNode's Data via string concatenation
     (n.Data += text) reallocated and copied the accumulated string on every
     token. Inputs containing many short text runs separated by ignored end
     tags (such as "a") caused O(n^2) allocations and byte copies.

     Accumulate coalesced text in per-node byte slices during parsing and
     materialize Data strings once at the end of parse.

     Thanks to Markus Magnuson for reporting this issue.

     This is CVE-2026-78661 and Go issue <https://go.dev/issue/82224>.

   * html: check all ancestor namespace transitions when rendering raw text

     In childTextNodesAreLiteral, walking up the tree previously stopped at
     the nearest foreign ancestor once an HTML integration point was found.
     However, that integration point may itself be a descendant of an element
     that was foster-parented into a foreign namespace (such as or
     fostered under ), causing a parser to resolve the
     subtree in a different foreign namespace upon re-parsing the rendered
     output.

     Continue walking the full ancestor chain and verify that every
     transition from a non-empty namespace occurs at an HTML integration
     point before emitting literal text.

     Thanks to Ali Sherif (<https://www.linkedin.com/in/ali-sherif-13812b276>)
     for reporting this issue.

     This is CVE-2026-97045 and Go issue <https://go.dev/issue/82622>.

Cheers,
Go Security team

-- 
You received this message because you are subscribed to the Google Groups 
"golang-announce" group.
To view this discussion visit 
https://groups.google.com/d/msgid/golang-announce/01d2301f.CAAACabVFtIAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBq4QFN%40mailjet.com
