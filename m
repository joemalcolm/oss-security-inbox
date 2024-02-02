Received: (qmail 30405 invoked by uid 550); 2 Feb 2024 12:07:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30387 invoked from network); 2 Feb 2024 12:07:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=tuKBNtepuK/X1ZkmwV80lOfIFvzQ2VxvxKma7nZay/c=; t=1706875819; x=1707523819; 
	b=swC7zQsmp3oHn/eF8b+ZcRvrsQMouzAARX+d16upRrbqBJQ0bpms8cN7Hk/jykhOmdwyRItVPrI
	WrFS4tXLNevfD5TBauoBrio7BSZrtGiG11nBIbYdCYgOGmt/OmvBnklUvrUFeA/n2E5KPOPy3on04
	ai357a3b11gRPMJfKx3gouDSpaePyPabuoo3p2UyMshBVydTk0rxc8+O9vO6OUXNVrs9FfRafGZyB
	D0MLTK8bYKyXo2jIy5N7GAivw3KNRu3YXOymg0EPeXwBADXZbFPDuuesjOl54txtLDNyZ6a39JI6v
	Jkd+PwPesvyYgjOK942/xuZ6jbra66B/G+0A==;
Date: Fri, 2 Feb 2024 14:10:05 +0200
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <gls7xbf5iixk7edjmkojbhc7zjxebrzczvoqce6ljjn4lwalie@mavmx3pl4fto>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20231221-36-1cdb04-dirty
Subject: [oss-security] CVE-2024-23832: Mastodon: Remote user impersonation and takeover

The Mastodon project [1] has published a Github advisory for a
high-severity issue which allows user impersonation and account
takeover with the identifier CVE-2024-23832. The team's Fediverse
postings indicate that everyone should urgently update their
instances. CVSS 3.1 is given as 9.4/10.

The advisory at
<https://github.com/mastodon/mastodon/security/advisories/GHSA-3fjr-858r-92rw>
states:

  Due to insufficient origin validation in all Mastodon, attackers can
  impersonate and take over any remote account.

  Every Mastodon version prior to 3.5.17 is vulnerable, as well as 4.0.x
  versions prior to 4.0.13, 4.1.x version prior to 4.1.13, and 4.2.x
  versions prior to 4.2.5.

Details are not currently posted, but an update on Feb 15 is
promised. Commit
<https://github.com/mastodon/mastodon/commit/a6641f828b9e6f5806be01754318279c2532ae82>
appears to be the fix.

 -Valtteri

[1] "Mastodon is a free, open-source social network server based on
ActivityPub where users can follow friends and discover new ones."
