X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["572" "Monday" "19" "June" "2017" "11:26:35" "-0600" "Jeff Law" "law@redhat.com" "<7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>" "16" "[oss-security] Re: Qualys Security Advisor -- The Stack Clash" "^Date:" nil nil "6" "2017061917:26:35" "[oss-security] Re: Qualys Security Advisor -- The Stack Clash" (number mark "        law@redhat.c Jun 19   16/572   " thread-indent "\"[oss-security] Re: Qualys Security Advisor -- The Stack Clash\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13835 invoked by uid 550); 19 Jun 2017 17:32:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5736 invoked from network); 19 Jun 2017 17:26:49 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com E0AE94E4C8
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=law@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com E0AE94E4C8
Message-ID: <7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Mon, 19 Jun 2017 17:26:38 +0000 (UTC)
Date: Mon, 19 Jun 2017 11:26:35 -0600
From: Jeff Law <law@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Qualys Security Advisor -- The Stack Clash
To: oss-security@lists.openwall.com


I would consider those two GCC BZs (68065, 66479) a separate an distinct
issue.

It is far more important to address design issues around the existing
-fstack-check first.  I think we've got a pretty good handle on how to
address those problems and discussions with the upstream GCC community
have already started.

In an ideal world we'll get to a place where the new -fstack-check does
not change program semantics, never misses probes and is efficient
enough to just turn on and forget everywhere.  The existing
-fstack-check fails all three of those criteria.

Jeff

