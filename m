Received: (qmail 32283 invoked by uid 550); 29 Sep 2023 14:25:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9326 invoked from network); 29 Sep 2023 13:59:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=runout.at;
	s=mail; h=Subject:MIME-Version:Content-Transfer-Encoding:Content-Type:Date:To
	:Reply-To:From:Message-ID:Sender:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=Pehisk0MyzFhjn2rN5aFTbm7jzRLfNoWRK3mqsRdRFs=; b=CyN32se/u0Si4qN0N3+wZ07fPv
	JVeoviKxBLodlCN4TQPiTv44tIe/349FFZeZP4qtvfgoqeRhNWTqRd5ga3rQ1aoVHuRJhwdqT1wcW
	QSs4TDlDflIC6g/wA+SXyUX/dwca3kEP9fk0HUlJehvvW/sqSY9xTGQGKagEavXLoFAE=;
Message-ID: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
From: Markus Gschwendt <office+osssecurity@runout.at>
To: oss-security@lists.openwall.com
Date: Fri, 29 Sep 2023 15:59:09 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.0-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a01:190:5:1001:af4e:b82e:cc0a:bede
X-SA-Exim-Mail-From: office+osssecurity@runout.at
X-SA-Exim-Version: 4.2.1 (built Wed, 06 Jul 2022 17:57:39 +0000)
X-SA-Exim-Scanned: Yes (on smtp.runout.at)
Subject: [oss-security] Multiple Exim4 Zero Days

I bring this up as I have not yet seen any information here about
several CVEs related to Exim Mailserver which were published by ZDI on
2023-09-27 [1]:

* CVE-2023-42114 [CVSS 3.7]
* CVE-2023-42115 [CVSS 9.8]
* CVE-2023-42116 [CVSS 8.1]
* CVE-2023-42117 [CVSS 8.1]
* CVE-2023-42118 [CVSS 7.5]
* CVE-2023-42119 [CVSS 3.1]

There also seem to be issues in Exim's bug tracker related to those:
https://bugs.exim.org/show_bug.cgi?id=3D2999
https://bugs.exim.org/show_bug.cgi?id=3D3000
https://bugs.exim.org/show_bug.cgi?id=3D3001
https://bugs.exim.org/show_bug.cgi?id=3D3002
https://bugs.exim.org/show_bug.cgi?id=3D3003

According to ZDI the original reports were sent in June 2022.

I'm wondering if somebody knows anything about mitigations and/or why
there are still no fixes for these issues after more than a year.

Markus

[1] https://www.zerodayinitiative.com/advisories/published/
    search for exim

