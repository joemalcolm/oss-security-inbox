X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/20/1
Message-ID: <4C6E36AE.8060204@kernel.sg>
Date: Fri, 20 Aug 2010 16:02:54 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request - kernel: jfs: don't allow os2 xattr namespace overlap with others
Content-Type: text/plain; charset=utf-8

Upstream commit: aca0fa34bdaba39bfddddba8ca70dba4782e8fe6

Description from the commit: It's currently possible to bypass xattr 
namespace access rules by prefixing valid xattr names with "os2.", since 
the os2 namespace stores extended attributes in a legacy format with no 
prefix.

This patch adds checking to deny access to any valid namespace prefix 
following "os2.".

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
