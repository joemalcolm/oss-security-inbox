X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["861" "Sunday" "18" "September" "2016" "14:31:24" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160918123124.poc7x5skdijl2j3m@eldamar.local>" "24" "[oss-security] CVE Request: GnuTLS: OCSP validation issue (GNUTLS-SA-2016-3)" nil nil nil "9" "2016091812:31:24" "[oss-security] CVE Request: GnuTLS: OCSP validation issue (GNUTLS-SA-2016-3)" (number mark "U       carnil@debia Sep 18   24/861   " thread-indent "\"[oss-security] CVE Request: GnuTLS: OCSP validation issue (GNUTLS-SA-2016-3)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12066 invoked by uid 550); 18 Sep 2016 12:31:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12045 invoked from network); 18 Sep 2016 12:31:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=BhkuYjA8VdsUw5Rfk1Bqg8qhxD3Aa18eJJZvr9uGh+g=;
        b=oMW3JyLVShCqYI50w0YsL+eK7uJdA0MGBwqq/yO1eQHuKTRHMJ1Nt7PqmSWBww86R4
         rU0dzGTZQPVlRNyy3tSlK9lDbw/s/gNe+JWTCdtTTG0W4YQQmHEJPmWmAEl2QmfTtcMg
         1cOCaykZJOYdLxGAWCfvr/y6kJhV9JgExnjzYm5FANkbT49/ySB7tkv7OHxxJoc0s0Rh
         /DAvRgPtKOSqlwfqspxqUijcnzXUC7bjkvrPJovOC1YkkQZ4/cOzeghLrm9Re0VnkvMD
         aoFtHkrQ6Vu9FCgycrOWWOlRRtwCDdYVrYfTrii8IUlBxZvP8Y57sOS7dOmOAeAJgcyq
         /yGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent;
        bh=BhkuYjA8VdsUw5Rfk1Bqg8qhxD3Aa18eJJZvr9uGh+g=;
        b=O/Kh8hUAojA1/AFHA15856P72649nxA2InCaDUfIa8MpNpxcmatQJb51Bw9X4NVFe1
         J/MHbG2KRXjakKwljlRnlGef83Vcy9TqX6nQqZ8ZBaUVE5vBw9rz6052DIo2CtI0xvzP
         dm4Ki5qOeQh8m+fHCNXYml3TbLXskNFx65aes2/lAgNp4pkpnr/p4uHJUcOgChMVatL4
         ahSKht4EPgr0BicU7FpU1T1dUFPVjgHe0Ihq1yRq40zEk7V5IgXCO8xjq6qDAnaTwUgK
         ifYM1CD9TIGegiHEzVyMa1ToCKcCdreeN9qwx5Ex01Qp3YaTaEL34JOPtgTubl9hgdug
         MAmQ==
X-Gm-Message-State: AE9vXwOQgXt5eiPH15HMIP9/mbeISSRUJf0DgKd18aIJkip8xtndscCIgIMSlxgxO5Qypg==
X-Received: by 10.194.5.230 with SMTP id v6mr22810277wjv.92.1474201885919;
        Sun, 18 Sep 2016 05:31:25 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 18 Sep 2016 14:31:24 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160918123124.poc7x5skdijl2j3m@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20160910 (1.7.0)
Subject: [oss-security] CVE Request: GnuTLS: OCSP validation issue (GNUTLS-SA-2016-3)

Hi

Some days ago new GnuTLS version were released for GNUTLS-SA-2016-3
(OCSP validation issue):

> Stefan Bühler discovered an issue that affects validation of
> certificates using OCSP responses, which can falsely report a
> certificate as valid under certain circumstances. That issue affects
> gnutls 3.3.24, 3.4.14, 3.5.3 and previous versions. Write-up[0] by
> Stefan Bühler
> Recommendation: Upgrade to GnuTLS versions 3.4.15, 3.5.4 or apply the
> patch referenced in the mail above.

Upstream fix is at [1]. This is as well tracked in Red Hat's bugzilla
at [2].

Could you please assign a CVE for this issue?

Regards,
Salvatore

 [0] https://lists.gnupg.org/pipermail/gnutls-devel/2016-September/008146.html
 [1] https://gitlab.com/gnutls/gnutls/commit/964632f37dfdfb914ebc5e49db4fa29af35b1de9 
 [2] https://bugzilla.redhat.com/show_bug.cgi?id=1374266
