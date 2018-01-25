X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1569" "Thursday" "25" "January" "2018" "11:35:59" "+0200" "Aki Tuomi" "aki.tuomi@open-xchange.com" "<1876333558.159.1516872958654@appsuite-guard.open-xchange.com>" "40" "[oss-security] CVE-2017-15132: dovecot: auth client leaks memory if SASL authentication is aborted." nil nil nil "1" "2018012509:35:59" "[oss-security] CVE-2017-15132: dovecot: auth client leaks memory if SASL authentication is aborted." (number mark "U       aki.tuomi@op Jan 25   40/1569  " thread-indent "\"[oss-security] CVE-2017-15132: dovecot: auth client leaks memory if SASL authentication is aborted.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5991 invoked by uid 550); 25 Jan 2018 10:52:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6090 invoked from network); 25 Jan 2018 09:36:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1516872960;
	bh=6PJ4IhPdUtM8Q8NGpgGTZvb7E51B8kVaQK3rvFsiQcY=;
	h=Date:From:To:Subject:From;
	b=T9FgkHBLI8UVEewVq8F+DSR+yCiqiRJi9/vU71BFRap46LRLA8CRr77bl80+R8PW1
	 t4EBwHyGVDooCsGIRIXtt1NLEMzZnEOdawrS6WtZgkiCRE9F5gRPvUia8eQkhNvwHZ
	 iwF8d+HAvfbSWkgYbxfED18lUmYaWMMNw0g2tgNrBbwfTmYFp64iqFJbydwwDi/Zvd
	 axg8jeHZg9P1IsnZAAdvX0FGJTGPQVgCKb10GWy3wWRG7amptMpH0PVXdFYPZ8AGWs
	 n4Frwk0cDFHfZ/whBdmCGUKBKuXLEPq8zx8okftYrxNKK+TEbkgtCV5ULzsmRWkGpm
	 4R2P9GaqTxh1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1516872960;
	bh=6PJ4IhPdUtM8Q8NGpgGTZvb7E51B8kVaQK3rvFsiQcY=;
	h=Date:From:To:Subject:From;
	b=T9FgkHBLI8UVEewVq8F+DSR+yCiqiRJi9/vU71BFRap46LRLA8CRr77bl80+R8PW1
	 t4EBwHyGVDooCsGIRIXtt1NLEMzZnEOdawrS6WtZgkiCRE9F5gRPvUia8eQkhNvwHZ
	 iwF8d+HAvfbSWkgYbxfED18lUmYaWMMNw0g2tgNrBbwfTmYFp64iqFJbydwwDi/Zvd
	 axg8jeHZg9P1IsnZAAdvX0FGJTGPQVgCKb10GWy3wWRG7amptMpH0PVXdFYPZ8AGWs
	 n4Frwk0cDFHfZ/whBdmCGUKBKuXLEPq8zx8okftYrxNKK+TEbkgtCV5ULzsmRWkGpm
	 4R2P9GaqTxh1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1516872960;
	bh=6PJ4IhPdUtM8Q8NGpgGTZvb7E51B8kVaQK3rvFsiQcY=;
	h=Date:From:To:Subject:From;
	b=T9FgkHBLI8UVEewVq8F+DSR+yCiqiRJi9/vU71BFRap46LRLA8CRr77bl80+R8PW1
	 t4EBwHyGVDooCsGIRIXtt1NLEMzZnEOdawrS6WtZgkiCRE9F5gRPvUia8eQkhNvwHZ
	 iwF8d+HAvfbSWkgYbxfED18lUmYaWMMNw0g2tgNrBbwfTmYFp64iqFJbydwwDi/Zvd
	 axg8jeHZg9P1IsnZAAdvX0FGJTGPQVgCKb10GWy3wWRG7amptMpH0PVXdFYPZ8AGWs
	 n4Frwk0cDFHfZ/whBdmCGUKBKuXLEPq8zx8okftYrxNKK+TEbkgtCV5ULzsmRWkGpm
	 4R2P9GaqTxh1Q==
Date: Thu, 25 Jan 2018 11:35:59 +0200 (EET)
From: Aki Tuomi <aki.tuomi@open-xchange.com>
To: oss-security@lists.openwall.com
Message-ID: <1876333558.159.1516872958654@appsuite-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; 
	boundary="----=_Part_158_277251643.1516872958649"
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev21
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] CVE-2017-15132: dovecot: auth client leaks memory if SASL
 authentication is aborted.

------=_Part_158_277251643.1516872958649
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Score: 5.3, AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L
Affected versions: 2.0 up to 2.2.33 and 2.3.0
Fixed versions: 2.2.34 (not released yet), 2.3.1 (not released yet)

We have identified a memory leak in Dovecot auth client used by login
processes. The leak has impact in high performance configuration where
same login processes are reused and can cause the process to crash due to memory exhaustion.

Patch to apply this issue can be found from https://github.com/dovecot/core/commit/1a29ed2f96da1be22fa5a4d96c7583aa81b8b060.patch

To our best knowledge, this patch should apply to all versions.

This issue can be mitigated on vulnerably systems by limiting login process to single request per process, which is also the default value.

Regards,
Aki Tuomi
Dovecot oy

------=_Part_158_277251643.1516872958649
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.56

iQEbBAABCgAGBQJaaaT+AAoJEBk7Y2OzREIGcY8H93doAw8B/0TYxUMNB+KHQrKa
FKW/5z4/87Sn303vjtWAcNWegjVM4mz8Gt0XFmaUI4kP19TKFfdSsL/pe+2Cgfd8
BrYdGmpKkshADlrfc5NF570HMNG3Ez1stfrZCI9zW6WbHgGeqkYI0fWQHZ8ClwHv
oI18k4viBTt/uHAU5Y3m1ddol5nUtot/r1qyDVqpHog29tjh79K8BiJsHscYgjpT
l3IxjPAxGwM+BzLFJ9cNjbHRDKstRzU4eesfvSVB4SWxZPTyhUlaJ7d+fS4PJCa1
50SX6v+mspbSTwKZaCJXK3mWhYmI4qc3z27RzigXPqZlHI/cZUpmBFBDoW1Hmg==
=amVr
-----END PGP SIGNATURE-----

------=_Part_158_277251643.1516872958649--
