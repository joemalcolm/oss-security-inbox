Received: (qmail 3793 invoked by uid 550); 26 Feb 2025 03:46:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23761 invoked from network); 26 Feb 2025 01:24:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1740533043;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=x6YXHbCiYlgLvkdVEuOQME+xgGJvtEtq217++N1yKQo=;
	b=CQ5j61ysEkaQ9MUKusGT9OW8kEm40l/usjYxbg7pUnTg/dgZAHPUhxrFp/JUnORFSeDMoq
	6+VH/RfMziKIDQYPe65gx9P2jwlWPzV65MHJQfIg7grQqIRS35jjX1OjQPtAz4A5OmIR1c
	2YGAGGWU3k3MjI/QLU4CCtxYnFH9QtYNfPpujULVug9vsQBaGLKdSMylPNZ1EY80/AfaGV
	JqAs3YRRmNxAK4EPLEyAFAV2M0KyTNZ2ZAv4twEOtNQ0GohyYtEoL6GA8OPbr4kOtQ594M
	EAzEX7QL9MKGhh63kDVLp44OXvcPKsc6djXI3OYeD4+Ws8dtGA+9sP1x8kECuQ==
Date: Wed, 26 Feb 2025 02:24:01 +0100
From: Stig Palmquist <stig@stig.io>
To: oss-security@lists.openwall.com
Cc: cna@security.metacpan.org
Message-ID: <ddczwhgeisbimwpzjdswtqhrdcglwgwqzglnvobywztbpvg3wu@oh5eb3ygy5hq>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-MBO-RS-ID: d68832da5dda7aef295
X-MBO-RS-META: itzdyda88gyrqjeximor5kngpi1mj4dq
Subject: [oss-security] CPAN Security Group is CNA for Perl and CPAN Modules

CPAN Security Group has been authorized as a CVE Numbering Authority
(CNA) today.

https://www.cve.org/Media/News/item/news/2025/02/25/CPAN-Security-Group-Added-as-CNA

Our scope is vulnerabilities in Perl and CPAN Modules (including
End-of-Life Perl versions) found at perl.org, cpan.org or metacpan.org,
excluding distributions of Perl or CPAN Modules maintained by
third-party redistributors.


To request a CVE, or for updates to CVEs we have issued, please use:
cve-request@security.metacpan.org

For questions, disputes or other CNA related queries, please use:
cna@security.metacpan.org

New CVEs will be published to our cve-announce mailing list:
https://lists.security.metacpan.org/cve-announce/


For more information, see our blog post:
https://security.metacpan.org/2025/02/25/cpansec-is-cna-for-perl-and-cpan.html

-- 
Stig Palmquist
