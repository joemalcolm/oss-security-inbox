Received: (qmail 5312 invoked by uid 550); 14 Jun 2023 22:33:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5268 invoked from network); 14 Jun 2023 22:33:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2023; t=1686782006;
	bh=Gdmio0qgiYQec7JgSFi8MP33gN5LeAlqdtZ+wFzm6ZQ=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=omlGqMtS9+GeXtYJ+Dmh03/l5uDwyEj09tM98nonJPtwIFMCt5olqm4voeeM7Y8iJ
	 OpCuJ/QOXdgSNd/TsgDKGa0jbZD0uJz3xW+1RhTz1kFo4VWNKmX1ZYfFDykSbwcc8w
	 L7eeEnNMqmdUXK63Y/z+ZOysjcqTgcP+WzmxGE1GnjTkqmE58Qu2ctfcmPXmH76De+
	 N4APGs6g58D+poKnjiVhQdxDlZHsesAqw5a6YxJ9qkHLJqFhArVa6mZSX8eyAUoh9u
	 k/zDVvmlWj3SuOjGr1e88G8t0S4PEqslNAR9fcZlx9dqPatjkogb5cqLJfC6X5mCac
	 SDztwdmDMGnaA==
Date: Wed, 14 Jun 2023 18:33:25 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <ZIpANf8DGHFYVBFR@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] RCE in acme.sh < 3.0.6

Hi,

I don't think this has been raised here:

The acme.sh ACME client[1] prior to version 3.0.6[2] has
an RCE vulnerability allowing a hostile server to
execute arbitrary commands on the client[3].

I was unable to determine whether a CVE has been
requested for this issue; both the original discussion
and a second GitHub issue[4] have been inconclusively
closed for comments (I've reached out to the author).

The issue is also being discussed on Mozilla's
dev-security-policy[5].

-Jan

[1] https://github.com/acmesh-official/acme.sh
[2] https://github.com/acmesh-official/acme.sh/releases
[3] https://github.com/acmesh-official/acme.sh/issues/4659
[4] https://github.com/acmesh-official/acme.sh/issues/4665
[5] https://groups.google.com/a/mozilla.org/g/dev-security-policy/c/heXVr8o83Ys
