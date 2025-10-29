Received: (qmail 15765 invoked by uid 550); 29 Oct 2025 17:45:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23772 invoked from network); 29 Oct 2025 08:50:01 -0000
DMARC-Filter: OpenDMARC Filter v1.4.2 edithae.camelia.dev 54CA22E4B8E
Authentication-Results: camelia.dev; dmarc=pass (p=quarantine dis=none) header.from=camelia.dev
Authentication-Results: camelia.dev; spf=pass smtp.mailfrom=camelia.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=camelia.dev; s=mail;
	t=1761727780; bh=39l1b0wiN1fisHgTJrFvVfDeqtRdIxRwoqxryUkaKo0=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=MuXxJEFUNERSyoGOyVJscdqGz2acmc/YAqvNyFHLuEuDyl/Anx6ugN0Hw+9mVO5dR
	 QMyB8r7h2OwS23ynWd419VQjEk/vEAZXvJXE6jhAPcBIeUVlmQ17olMfwQX+5Du4+z
	 clBHAD5T5vcv7EP8ZeffGU473cYqkQ1Hc8jMOlHQbrmSf7MuFZPwA3/ZWB51yvBook
	 oqCUjDMidASfdPBuQriLVh5I3GXOMuHWsIzczz4xu11/C7r2l58VEdNpoIlUzbrAb6
	 MdtP8MPPqnGoBJ7N8B+oIMJvLBcIiVoNifg6IaNuHU98nz9gjnSf+Q7rHG2emDcuje
	 y+4sIcV7rhU8A==
X-Virus-Scanned: amavis at camelia.dev
Date: Wed, 29 Oct 2025 08:49:48 +0000
From: Camelia Lavender <cam@camelia.dev>
To: oss-security@lists.openwall.com
In-Reply-To: <2134361509.6292.1761726167021@appsuite-pro-sync-core-mw-groupware-1.appsuite-pro-sync-core-mw-hazelcast-headless.appsuite-dev.svc.cluster.local>
References: <2134361509.6292.1761726167021@appsuite-pro-sync-core-mw-groupware-1.appsuite-pro-sync-core-mw-hazelcast-headless.appsuite-dev.svc.cluster.local>
Message-ID: <DB28AB9A-808E-4D20-8401-58863BBDEFDB@camelia.dev>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Autocrypt: addr=cam@camelia.dev; keydata=
 mDMEZxb6PRYJKwYBBAHaRw8BAQdAoSyxfx6E3Xs+xzYjRM1mu/9eEE47sIv2cw9mceAQBFS0IkNh
 bWVsaWEgTGF2ZW5kZXIgPGNhbUBjYW1lbGlhLmRldj6JApQEExYKAjwCGwMFCRLMAwAFCwkIBwIC
 IgIGFQoJCAsCBBYCAwECHgcCF4ACGQEWIQR2TroXf4myj1yW6eTbzHDvvDYOlwUCaEH8rTEUgAAA
 AAAQABhwcm9vZkBhcmlhZG5lLmlkeG1wcDpjYW1lbGlhQGNhbWVsaWEuZGV2NhSAAAAAABAAHXBy
 b29mQGFyaWFkbmUuaWRpcmM6Ly9pcmMubGliZXJhLmNoYXQvYzRtZWxpYUMUgAAAAAAQACpwcm9v
 ZkBhcmlhZG5lLmlkaHR0cHM6Ly9jb2RlYmVyZy5vcmcvY2FtZWxpYS9mb3JnZWpvX3Byb29mRhSA
 AAAAABAALXByb29mQGFyaWFkbmUuaWRodHRwczovL2dpdC5jYW1lbGlhLmRldi9jYW1lbGlhL2Zv
 cmdlam9fcHJvb2aWFIAAAAAAEAB9cHJvb2ZAYXJpYWRuZS5pZG1hdHJpeDp1L2M0bTplbnZzLm5l
 dD9vcmcua2V5b3hpZGUucj1kQmZRWnhDb0dWbVNUdWpmaXY6bWF0cml4Lm9yZyZvcmcua2V5b3hp
 ZGUuZT1LdGR1YjVMNkRBeE9SZkc2YnhodWNQY05vQndWeTZjeU11MEJqZ1ZKVVlFMRSAAAAAABAA
 GHByb29mQGFyaWFkbmUuaWRkbnM6Y2FtZWxpYS5kZXY/dHlwZT1UWFQ6FIAAAAAAEAAhcHJvb2ZA
 YXJpYWRuZS5pZGh0dHBzOi8vZmVkaS5jYW1lbGlhLmRldi9AY2FtZWxpYQAKCRDbzHDvvDYOlyfb
 AQD4HXpjaiwrN8blld7l18TLnqYT/PNpjPUjP3X717XTZAD/WNmzNSTgYFshYEjkUdyL8IZvG5MK
 kQxjzKQ6RMxN5A64OARnFvo9EgorBgEEAZdVAQUBAQdAqshBrvkB2JxzAd9DCJSxAakNE03oaUZw
 B0/0bHoKWj4DAQgHiH4EGBYKACYWIQR2TroXf4myj1yW6eTbzHDvvDYOlwUCZxb6PQIbDAUJEswD
 AAAKCRDbzHDvvDYOl9tCAQD9qMqFI89k6mcoLVYdsdhFvbTRsAGPEdJBoBDdLyRBkgEA9y+6cqvX
 QMqUCmEQUGfTktfaK2fkLHoQqGlpQ371owI=
Subject: [oss-security] CVE-2025-30189: Dovecot IMAP Server: Using auth caching
 causes the first lookup to be cached for all lookups




-------- Original Message --------
From: Aki Tuomi via Dovecot-news <dovecot-news@dovecot.org>
Sent: October 29, 2025 8:22:46 AM UTC
To: "dovecot@dovecot.org" <dovecot@dovecot.org>, "dovecot-news@dovecot.org"=
 <dovecot-news@dovecot.org>
Subject: [Dovecot-news] CVE-2025-30189 notification

Affected product: Dovecot IMAP Server
Internal reference: DOV-7830
Vulnerability type: CWE-1250 (Improper Preservation of Consistency Between =
Independent Representations of Shared State)
Vulnerable version: 2.4.0, 2.4.1
Vulnerable component: auth
Report confidence: Confirmed
Solution status: Fixed in 2.4.2
Researcher credits: Erik <erik@broadlux.com>
Vendor notification: 2025-07-25
CVE reference: CVE-2025-30189
CVSS: 7.4 (CVSS3.1:AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:N)

Vulnerability Details:
Using auth caching with oauth2 passdb, passwd passdb or userdb, or passwd u=
serdb, causes the first lookup to be cached for all the lookups. This is be=
cause the cache key is "%u" which no longer actually expands to same as "%{=
user}".

Workaround:
Disabling auth cache will prevent the issue.

Fix
Install non-vulnerable version of Dovecot. Patch can be found at https://gi=
thub.com/dovecot/core/compare/a70ce7d3e2f983979e971414c5892c4e30197231%5E..=
.34caed79b76a7b82a2a9c94cf35371bec6c2b826.patch
