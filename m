X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/07/3
Message-ID: <52CBAB2B.3040909@redhat.com>
Date: Tue, 07 Jan 2014 12:52:19 +0530
From: Ratul Gupta <ratulg@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: graphviz: stack-based buffer overflow in yyerror()
Content-Type: text/plain; charset=utf-8

Hello,

Graphviz, a collection of tools for the manipulation and layout of 
graphs, was recently reported to be affected by a buffer overflow 
vulnerability.

The vulnerability is caused due to an error within the "yyerror()" 
function (lib/cgraph/scan.l) and can be exploited to cause a stack-based 
buffer overflow via a specially crafted file.

Can a CVE please be assigned to this issue?

References:
http://secunia.com/advisories/55666/
https://bugzilla.redhat.com/show_bug.cgi?id=1049165

-- 
Regards,

Ratul Gupta / Red Hat Security Response Team

