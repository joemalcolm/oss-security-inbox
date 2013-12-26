X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/12/26/2
Message-ID: <52BC87E6.4080604@redhat.com>
Date: Fri, 27 Dec 2013 01:17:50 +0530
From: Ratul Gupta <ratulg@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: rubygem-nokogiri Multiple DoS vulnerabilities
Content-Type: text/plain; charset=utf-8

Hello,

1) https://bugzilla.redhat.com/show_bug.cgi?id=1046663

Nokogiri gem for Ruby was found to be affected by a DoS vulnerability, 
where an error when parsing XML documents can be exploited by an 
attacker to cause an infinite loop and subsequently exhaust memory and 
cause a crash via a specially crafted XML document.

2) https://bugzilla.redhat.com/show_bug.cgi?id=1046664

Nokogiri gem for Ruby was found to be affected by a DoS vulnerability, 
where an error when parsing XML entities and can be exploited to exhaust 
memory and cause a crash via a specially crafted XML document including 
external entity references.

Can CVE's please be assigned to these issues?

-- 
Regards,

Ratul Gupta / Red Hat Security Response Team

