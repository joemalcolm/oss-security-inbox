Received: (qmail 24218 invoked by uid 550); 6 Apr 2026 03:12:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14051 invoked from network); 6 Apr 2026 02:54:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=samba.org;
	s=42; h=To:From:Date:Message-ID:CC;
	bh=9xqSXy8HmH2JPUtRBe9NTDrroq0jsQoPZDD0AhUhK7U=; b=0jE/wASprm29dvoumdYFuSpD7t
	f9WN5C+HlB32W8kG0Sngj9K6xwMTvCh1AqWXfYV9MdwLqgHB75FLGCMHvKXvrAHWKDowJKHVj4uA5
	3eU8l2VS4ajf+JEsNDbW2P+EwSpuuNoHu+OKxdRR/+horip5JICD27u6sSZVNN22B4XBA7Y6j/nf4
	e2CNTyA7nEETecvm68y7XdPiABYeMiqLfaybFz+ZXSslqGeMv4KbLvSj6fnRy7FjryyGurfLwy2//
	bvSuz/1tlUPRY5EI26fXZ5jzauqYnp3iHXRsMqhh/i8CT5IGAPRNYwczHVwCZ2qwpYhO10aB1/V6U
	nskTVZbPIgOWhKk7XNtD15Op0ualMm7X1pFk4AjHw6/uH1+BBpYdZnPVPzr2MtUSd8HeYSojXkQKA
	PJcKbLcBiZhEGcP1dgkSWGz3uARLtm0SgxdjRePv6tbaGcaxYCJzISKsdsR7EW+QYhXMjzRg2NHYq
	Fv8XHALOOLXFSMP7AnSzKGCg;
Message-ID: <d9b75448-c072-40ec-9740-1c68d4cee279@samba.org>
Date: Mon, 6 Apr 2026 14:53:49 +1200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Douglas Bagnall <dbagnall@samba.org>
To: samba-technical <samba-technical@lists.samba.org>,
 samba <samba@lists.samba.org>, oss-security@lists.openwall.com
Content-Language: en-NZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Heads-up: Upcoming Samba security releases (2026-04-09)

This is a heads-up that there will be Samba security updates for
4.22, 4.23, and 4.24 on Thursday, April 9, 2026. Please make sure
that your Samba servers will be updated soon after the release!

Impacted components:
 - File Services, CVSS 10.0, affecting some configurations
 - File Services, CVSS 10.0, affecting some configurations
 - File Services, CVSS 7.1 affecting some configurations
 - File Services, CVSS 6.5 affecting uncommon configurations
 - AD DC CVSS 8.0, affecting some configurations
 - AD DC CVSS 7.5, affecting uncommon configurations

cheers,
Douglas Bagnall
Samba Team and Catalyst IT
