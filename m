Received: (qmail 14252 invoked by uid 550); 1 Nov 2023 01:04:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17547 invoked from network); 31 Oct 2023 21:26:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=TjmuLlJLHn0Y5nGOPHMjA4/O+VEuMY5+CBxKo43O8q0=; t=1698787591; x=1699651591; 
	b=RWyomJmJhFNSF8JYCOnDq9JWhFuGSWD9o74ThQvq+WWFy5jBCYjYdvbF9sLgSAX/iO4v5q6OVdd
	ZvfIMNz8No7VQQUVGgjiUM688WISMFYn0OvtUTIi6doccoFJ6Fk4MPlI7/ZW1EKscIfTbBhFFBwde
	ZwA/E/fPkU6ezGzB0ckFHjFv5Pt6zhUyEUgJlDHpKBWLzIgtDq+PxFPRmMk7VwKkfDGHsIbCKIKkX
	vBurod1ViBHACVh7RRO8usTeTVEv+uMtB9J4wA5PcpCXrWToEu/ynT+56MXI9vwYUKBayz3UFhqnW
	xIXq+hG6Ym4sYOzElXwJXzr4EiqhpMG+XHKg==;
Date: Tue, 31 Oct 2023 23:26:12 +0200
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <mehcc45ulnpbayvi4alil52gazey6mybvc2ugvmvxj25kqn7bf@23o2kg6ldvdr>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20231006-6-ca2e93
Subject: [oss-security] CVE-2023-5631: XSS vulnerability in Roundcube webmail

Not associated with the project or ESET, but didn't see anything here about
this yet.

Roundcube is an open-source webmail client. Versions up to 1.6.4 are
vulnerable (including the 1.4.x and 1.5.x series) to an XSS exploit
caused by an issue in the sanitization of SVG image elements in HTML
emails. ESET describes CVE-2023-5631 as follows in their press release
at <https://www.eset.com/us/about/newsroom/press-releases/eset-research-winter-vivern-attacks-roundcube-webmail-servers-of-governments-in-europe-through-zero-1/>:

  By sending a specially crafted email message, attackers are able to
  load arbitrary JavaScript code in the context of the Roundcube user’s
  browser window. No manual interaction other than viewing the message
  in a web browser is required. The final JavaScript payload can
  exfiltrate email messages to the command and control server of the
  group.

The Roundcube project has released new versions for each of the abovementioned
release series. The official release notification is at
<https://roundcube.net/news/2023/10/16/security-update-1.6.4-released>.

According to ESET, the vulnerability is being actively exploited to
target "governmental entities in Europe".

 -Valtteri
