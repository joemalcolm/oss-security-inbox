X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/23/2
Message-ID: <CAKG8Do71TReFYRvbj9isxStB6SOmn1dvrmq=50JwbbyYV_HosQ@mail.gmail.com>
Date: Thu, 23 Mar 2017 15:57:01 +0100
From: Cedric Buissart <cbuissar@...hat.com>
To: oss-security@...ts.openwall.com
Subject: pcs: CVE-2017-2661 Improper node name field validation when creating clusters leads to XSS
Content-Type: text/plain; charset=utf-8

Hi,

The CVE-2017-2661 has been assigned to the following issue:

Reflected cross-site scripting vulnerability was found in pcs due to
improper validation of Node name field when creating new cluster or adding
existing cluster.

Upstream fix :
* web UI: fixed XSS vulnerability
https://github.com/ClusterLabs/pcs/commit/1874a769b5720ae5430f10c6cedd234430bc703f

Red Hat would like to thank Microsoft for reporting the vulnerability.

-- 
Cedric Buissart,
Product Security

