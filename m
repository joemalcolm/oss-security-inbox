Received: (qmail 20472 invoked by uid 550); 9 May 2026 18:19:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20442 invoked from network); 9 May 2026 18:19:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1778350731;
	bh=B4TpXp3gzsUnxlAG7xkLPDvF6FXnrPhrLc5vyp6HYOc=;
	h=Date:To:From:Subject;
	b=i7UVZ5jmCedavFSEquQCrVFCYtbFBbqw3LjecuUZ+12WEhBnxNp6MAeW2kTClSRRA
	 fWa7WaOlQXgwi6m0Z2so2LVq73HUJk727ZECfZk6CJpDYc+eBV5nc3zLpUa00wgHHk
	 9vl5nguLV4q9+s6Gj10Gr/S6WNvj93caG80bN82oEvNB1LsleTCWD/ycSlgZ90dqIw
	 DdaXTmxOl6hnLHBGuZJqOARKFF9loCdUZgAdyUBwYFaGTcqmSnkNdqRfbANGYGpNIN
	 FgLDiWrlSnqPNeLE4KMYU2JqzGCZ0EWf/WRJ7hqJEmITLvxpwIAHZjB+3Dtbo+2S/1
	 Vd/0/TkE5/MCQ==
Message-ID: <958c7edc-400f-44e9-aac4-78161e999db4@pipping.org>
Date: Sat, 9 May 2026 20:18:49 +0200
MIME-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Sebastian Pipping <sebastian@pipping.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] uriparser 1.0.2 fixes CVE-2026-44927 and CVE-2026-44928

Hello oss-security,


just a quick note that uriparser 1.0.2 released today is fixing
vulnerabilities CVE-2026-44927 and CVE-2026-44928.

Some key links are:

- The change log of release 1.0.2
   https://github.com/uriparser/uriparser/blob/uriparser-1.0.2/ChangeLog

- The fixing pull requests
   - https://github.com/uriparser/uriparser/pull/304
   - https://github.com/uriparser/uriparser/pull/305

- The official CVE metadata
   - https://nvd.nist.gov/vuln/detail/CVE-2026-44927
   - https://nvd.nist.gov/vuln/detail/CVE-2026-44928

Best



Sebastian

