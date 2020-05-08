X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["478" "Friday" "8" "May" "2020" "18:16:09" "+0200" "Florian Weimer" "fweimer@redhat.com" "<875zd6o112.fsf@oldenburg2.str.redhat.com>" "14" "[oss-security] Incentives for pre-release reporting" "^Date:" nil nil "5" "2020050816:16:09" "[oss-security] Incentives for pre-release reporting" (number mark "        fweimer@redh May  8   14/478   " thread-indent "\"[oss-security] Incentives for pre-release reporting\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Incentives for pre-release reporting" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17560 invoked by uid 550); 8 May 2020 16:16:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17542 invoked from network); 8 May 2020 16:16:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588954587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Rbio4jjPJILOPwNlkmrF7ScYC+UXwQm76S8qfHCBpQM=;
	b=GGDQbnVJAQjzbzmNCxshA6YEOd9GyYjKi4+PpVpk/5ts2xFbnovGalKCOuLBSsySJ29H2x
	qwpdx1PR48YgS/Il8DSi4mWpQeifVYqFu0X7R/mdnrcyIA1jlp9SxkWRne9yxHpUrEq4lj
	ju7D5rypGHtgYN89M4vVPKSbPHV95Zo=
X-MC-Unique: -frGXJcVNMmAqLMqDHffFQ-1
Message-ID: <875zd6o112.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Date: Fri, 08 May 2020 18:16:09 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Incentives for pre-release reporting
To: oss-security@lists.openwall.com

My recollection (which could be wrong) suggests that vulnerabilities in
unreleased, not really shipping versions do not usually receive CVE IDs.

This has the problem that we cannot reward researchers with a CVE ID
assignment if they report issues in features under development.  If they
waited until after the release, they'd get one, so that is creating the
wrong incentive.

Am I wrong about the CVE program requirements here?  How do projects
handle this?

Thanks,
Florian

