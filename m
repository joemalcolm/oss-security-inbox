X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["591" "Tuesday" "4" "May" "2021" "10:42:40" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" nil "19" "[oss-security] hivex CVE-2021-3504" nil nil nil "5" nil nil (number mark "U       huzaifas@red May  4   19/591   " thread-indent "\"[oss-security] hivex CVE-2021-3504\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] hivex CVE-2021-3504" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19684 invoked by uid 550); 4 May 2021 05:12:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19663 invoked from network); 4 May 2021 05:12:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620105167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DGG9tAcKRMWBakuXOgzryj7uJG9CJO4tPiCcEtxzDe0=;
	b=i18IHZbL3J0VIUKb+PYZFfgdnijJMS13Xj5pYCKsUvUkRh4LJlmpmsG1OdqgmPUeGqXj+D
	g5eVKu8W+4rak3FzLDoziiyWyEZb5SxwVAoMOOxISR1sawAnJRXdmRx7qEb8+Qp5RLLqqd
	RPnclX8H/GKr7h577gxq2aiWj8sE0fY=
X-MC-Unique: 45QbZq4bPaOz8S6qaKVplw-1
To: oss-security@lists.openwall.com
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <0a7efdf7-1e3b-5738-e8ad-50fa9cb7ae16@redhat.com>
Date: Tue, 4 May 2021 10:42:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=huzaifas@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] hivex CVE-2021-3504

Hello,

A flaw was found in the hivex library. It is caused due to a lack of
bounds check within the hivex_open function. An attacker could input a
specially crafted Windows Registry (hive) file which would cause hivex
to read memory beyond its normal bounds or cause the program to crash.
The highest threat from this vulnerability is to system availability.

This issue has been patched upstream at:
https://listman.redhat.com/archives/libguestfs/2021-May/msg00013.html

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=1949687



-- 
Huzaifa Sidhpurwala / Red Hat Product Security

