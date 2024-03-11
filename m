Received: (qmail 5619 invoked by uid 550); 11 Mar 2024 20:29:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5577 invoked from network); 11 Mar 2024 20:29:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=UI6S1uvgOauckYiK5vMBx0Eut9xsRhwt9ynigZCCFt8=; t=1710189241; x=1710837241; 
	b=u9v/+Wy9s4GwEueXPldhBP4Bnsf9sRuGPQgxpy/MScur7qmJMzfiUvhoKjmsOCvRLYUSR0x4HAl
	wvMVQjRRAysPShPTz2hvox985UBxBBUE6d2A1TO2HUgxR3WvE0qgC6ckr63iukEx1517DY9tON6Sb
	lgAWnFLbfDen0RPN/lS8SAzYQ83g575kaHJab/JYdp2WABvUKg6td6FrFSPSyEssQri4ar9Pq9MJL
	zR/F2L1kXluXqblbP7eNnfqUnHNoRXzOnfmjQYzTnPPknkLoj6MIlBZdL857j4ATAMa3TJWJMILnw
	0ixlKRLXl+xjFMp4QAfFJwAr95WDiKuwTGag==;
Date: Tue, 12 Mar 2024 05:33:46 +0900
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <gb6h5yblly7xer6jg6sgn7syzrze3jviotrmfsp3ifgy6rg2jr@igvcqdasmnof>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20231221-36-1cdb04-dirty
Subject: [oss-security] Certificate policy: OCSP becomes optional and CRLs mandatory for
 public CAs on Friday

This is more of a meta-security issue, but posting it since I expect
that this change will affect development priorities of
certificate and TLS-related OSS projects to some degree.

Last July, the CA/Browser Forum approved ballot SC-063
<https://cabforum.org/2023/07/14/ballot-sc-063-v4-make-ocsp-optional-require-crls-and-incentivize-automation/>.
The central changes to existing policy are:

  * Makes providing OCSP services optional for CA/B-approved CAs,
  i.e. those which ship in most browser and OS trust stores.

  * Requires CAs to provide CRLs that are updated in a timely manner.

  * (New policies related to short-lived certificates, not discussed
  further in this post.)

The first two changes come into effect on 2024-03-15 which is this
Friday. CAs that provide OCSP services are free to continue doing so
under prior guidelines.

The proposal provides the following rationale for these changes (slightly
edited for brevity):

  OCSP requests reveal details of individuals’ browsing history to the
  operator of the OCSP responder. These can be exposed accidentally
  (e.g., via data breach of logs) or intentionally (e.g., via
  subpoena). Due to privacy concerns, several certificate consumer
  products represented in the CA/Browser Forum do not perform online
  OCSP checks by default - or have signaled interest in transitioning to
  privacy-preserving methods of communicating revocation status. […]
  Concern surrounding OCSP is further elevated considering the
  disproportionately high cost of offering these services reliably at
  the global scale of the Web PKI.

  Given this ballot makes operating OCSP services optional
  for CAs, allow relying party software applications and certificate
  consumer user agents to consistently and reliably evaluate certificate
  revocation status using a privacy-preserving check [using CRLs].

Personal opinion: It seems unlikely that most CAs will stop offering
OCSP now or even in the short-to-medium term. However OCSP support
(including OCSP stapling support) in open-source software has overall
been limited outside of HTTPS-related projects with a lot of developer
resources, and I suppose could have even less resources dedicated to
it in the future as a result of this change. Meanwhile some projects
may need to implement updates to handle large and relatively
rapidly-updating CRLs efficiently. In addition, I guess that OS level
mechanisms similar to root certificate stores may be needed to
centralize CRL updates; having each application pull down potentially
large CRL updates once a week seems inefficient.

 -Valtteri
 
