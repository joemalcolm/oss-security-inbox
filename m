X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1448" "Monday" "22" "May" "2017" "13:05:34" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1495476334.15944.2@mail.igalia.com>" "31" "[oss-security] How to request a CVE for open source projects" "^Date:" nil nil "5" "2017052218:05:34" "[oss-security] How to request a CVE for open source projects" (number mark "        mcatanzaro@i May 22   31/1448  " thread-indent "\"[oss-security] How to request a CVE for open source projects\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32102 invoked by uid 550); 22 May 2017 18:48:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8166 invoked from network); 22 May 2017 18:06:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Message-Id:To:Subject:From:Date; bh=r/YVNerHQG3x8P4JqJJ/++W6OhZbOwtaFl0I/XF1w2E=;
	b=SXmyhWrhT/FLQnRx85/fX8Kcg2fJh0LOgp0m9ubTb2cOFYS6Shk2F8ekT5p9CdUTteFEgq4dVzyplT8BbAU4GVvNCj+BfwTI9vLUcAqrM0Ohz+hnwPBckcC9ourFAU4tLmVWo34e4FcOHT+XhwMYJnBtzy6ypc440yKs3972OGRFNoumnY4U46t+FP9WkGJjCD9s3oTl3ZZDYm+GyJpslKDy01CYqFYlGAfh6zL4g8tQLXmbrVcwCivmEKG7/p+mu+xqthl6TdnhXojWrRpl/+WnmxYKxg84S5y1vlCcyb0/yRVwDaauSgTlDJRHmHq83B2swFCcChv/CRQTU0h1ZA==;
Message-Id: <1495476334.15944.2@mail.igalia.com>
X-Mailer: geary/0.11.3
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Date: Mon, 22 May 2017 13:05:34 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] How to request a CVE for open source projects
To: oss-security@lists.openwall.com

Hi,

I'm aware that the CVE form [1] can now be used to request CVEs. 
However, it does not seem to be designed for requesting CVEs in open 
source products. The field "Vendor of the product(s)" says "Please 
ensure vendors are on the products and sources list," indicating the 
intent of MITRE to restrict usage of the form to specific products. 
This list [2] says "For open source software products not listed below, 
request a CVE ID through the Distributed Weakness Filing Project CNA." 
So, clearly we are supposed to request a CVE through the DWF project. 
(Or perhaps via Red Hat, since it seems like it's willing to allocate 
CVEs for miscellaneous Linux-related issues.)

Anyway, I attempted to request a CVE using the DWF project's request 
form [3] several months ago, but have not yet received any response 
[4]. So I am hesitant to request further CVEs from the DWF project, for 
fear that I won't receive a response and will wind up needing to make a 
duplicate CVE request somewhere else.

How are other people getting open source CVEs right now? Has anybody 
else had luck getting a CVE via DWF? Should I be trying to do this 
through Red Hat instead? Or just by filling out MITRE's CVE form even 
though we're not really supposed to be using it?

Michael

[1] https://cveform.mitre.org/
[2] http://cve.mitre.org/cve/request_id.html#cna_coverage
[3] http://iwantacve.org/
[4] https://bugzilla.gnome.org/show_bug.cgi?id=752738#c15

