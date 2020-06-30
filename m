X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["406" "Tuesday" "30" "June" "2020" "10:50:09" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20200630105009.46d2de6d@lenovo>" "15" "[oss-security] libvncserver: old websocket decoding patch" nil nil nil "6" "2020063008:50:09" "[oss-security] libvncserver: old websocket decoding patch" (number mark "U       scorneli@red Jun 30   15/406   " thread-indent "\"[oss-security] libvncserver: old websocket decoding patch\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] libvncserver: old websocket decoding patch" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31954 invoked by uid 550); 30 Jun 2020 08:50:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31936 invoked from network); 30 Jun 2020 08:50:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593507025;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4EaQkbeuGNtSY6Ltgb0ZN8bg8LnYeXSjgipG7yyLfH8=;
	b=Ec3qqtURV94/LDBXx8nU8A5ZmZNxpzCr7dZI4NeAltsZlkKr6L5cLyRXwEm1zTF+nR6/1/
	1LLMOb4z5umj9g2vN7TPlx7rQRw9ERskSyA5qsU+Xf0q/ClSb8XGKMRkU+FsFWnXX5apcb
	H6n5Pj6Wbd/L6pLKOAOfRrsChNRs9D0=
X-MC-Unique: x7nImAFIOPKJZUAx0oRuJw-1
Date: Tue, 30 Jun 2020 10:50:09 +0200
From: Stefan Cornelius <scorneli@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20200630105009.46d2de6d@lenovo>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=scorneli@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: [oss-security] libvncserver: old websocket decoding patch

Hi,

Upstream libvncserver fixed a websocket decoding issue >3years ago in
https://github.com/LibVNC/libvncserver/commit/aac95a9dcf4bbba87b76c72706c3221a842ca433

AFAICT, this never got a CVE and wasn't backported by some
distributions.

Thanks and kind regards,

[I sent a heads-up about this to distros last Friday, 'embargo' ran out
on Monday 20:00 UTC]
-- 
Stefan Cornelius / Red Hat Product Security

