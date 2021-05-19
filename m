X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1882" "Wednesday" "19" "May" "2021" "10:08:13" "+0200" "Julien Pivotto" "roidelapluie@prometheus.io" nil "63" "[oss-security] Prometheus 2.26.1-2.27.1 released to fix an Open Redirect security issue" nil nil nil "5" nil nil (number mark "U       roidelapluie May 19   63/1882  " thread-indent "\"[oss-security] Prometheus 2.26.1-2.27.1 released to fix an Open Redirect security issue\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Prometheus 2.26.1-2.27.1 released to fix an Open Redirect security issue" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7516 invoked by uid 550); 19 May 2021 09:51:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13328 invoked from network); 19 May 2021 08:08:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=prometheus-io.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=t/KnLpsgUAWBT5+P0IipSLRVise1eHSNIxGzOm7M2gE=;
        b=CeWSBU0iE6S5WNqrA4igsZieUvW/vu7leqgmb0pfmgcLARHdbXUwjBz1HrScXFQ4Pa
         VD/ymj9n6jdlIQYEAOokVj2nWUdMVii7cQN268VtyHXRvnT6rgLLOemK9RZc5qL9JpCa
         1aNg8gjFtIFvvjnYwxkmqmjYiQ20EQdDWjH8EkK6cnsvjib6cLMd7493a7HL27FZx0yS
         vhbbAz2wbbcjp1mbahfO+x0CCsvJ3YS4wdrAn8TWS/To5cuOcJoc4tbTImIyZzrqSi33
         5miL7HHPEIib8av/lmS7QDTB0RNAconmhuYwMjh56pXcb4v2U5aQM3R+QfGdvPtwa4bK
         HOyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=t/KnLpsgUAWBT5+P0IipSLRVise1eHSNIxGzOm7M2gE=;
        b=aVpfh/RaT3IO6Vn6oFBHzy2Bi//lG2M0lWCuOT+97tiTABJP0VNh++tMS5lWx8fXJa
         o9Xe64IrqTRIOIGlgjZJbJHzMzx7EhWPrG60KYUDqm+tQ8Agjy9/kVjBzUHaLyX2l1il
         XjxSQyaXLbJH7UctMo9T4l4mwJqhF+aGjgfgpzK0l7YdnOdn6lvwXsyW2VFjterAeiQJ
         DYnO7DeM6D5Tv+vzjboZ3dvn47CM4rX/c/0W4oLbp97kzv+PYmu+AC/J7zjbc3GPoBMf
         qLaZb2pHZwWl3tYT5GlPjUU3Xua6t6oV7yXM7uiJry4cYuEyRLpGzvd+q1xUUVazsDFC
         wXBQ==
X-Gm-Message-State: AOAM532kKTsrB/J5I6+24h32/M3CnnoIsX/YPj+mvH+QoSOsgYHBHCaO
	3rQnpedU0O366/ScjUr1f/R43ey/e26EQPs3dcE=
X-Google-Smtp-Source: ABdhPJzEyM1exVUNHCg8HlKUvJCD6Wg6mdak54DYOmNuOlF8aBlUjojRq/cKs1siB5dpXrNWUmW8MA==
X-Received: by 2002:a7b:c3d4:: with SMTP id t20mr9890617wmj.13.1621411696438;
        Wed, 19 May 2021 01:08:16 -0700 (PDT)
Date: Wed, 19 May 2021 10:08:13 +0200
From: Julien Pivotto <roidelapluie@prometheus.io>
To: oss-security@lists.openwall.com
Message-ID: <20210519080813.GA17356@oxygen>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: [oss-security] Prometheus 2.26.1-2.27.1 released to fix an Open Redirect security
 issue

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

The Prometheus team has released bugfix releases about an Open Redirect
(CWE-601) security issue.
The issue has been assigned the CVE number CVE-2021-29622.

---

In 2.23.0, Prometheus changed its default UI to the New ui. To ensure a
seamless transition, the URL's prefixed by /new redirect to /.
Due to a bug in the code, it is possible for an attacker to craft an URL
that can redirect to any other URL, in the /new endpoint.

If a user visits a prometheus server with a specially crafted address
(e.g.: http://127.0.0.1:9090/new/new<url>), they can be redirected to an
arbitrary URL.

e.g. if a user visits
http://127.0.0.1:9090/new/newhttp://www.google.com/, they will be
redirected to http://google.com.

---

The security issue affects Prometheus v2.23.0 to v2.26.0, and v2.27.0.

Please find more information here:
https://github.com/prometheus/prometheus/security/advisories/GHSA-vx57-7f4q-fpc7

The Prometheus team thanks Aaron Devaney from MDSec for reporting this
issue.

Timeline:
May 12, 2021: Issue reported privately to Prometheus team
May 12, 2021: A fix is proposed and reviewed
May 13, 2021: CVE-2021-29622 issued by GitHub staff
May 18, 2021: Bugfix released for the last two minor releases of
Prometheus.

The releases can be found in the usual locations:

v2.26.1: https://github.com/prometheus/prometheus/releases/tag/v2.26.1
v2.27.1: https://github.com/prometheus/prometheus/releases/tag/v2.27.1

Thanks,

The Prometheus Team

--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh5CmvSpYcQvVEQy6nTU4CiqCjwgUCYKTHPAAKCRCnTU4CiqCj
wl5bAPwP3ZjJfVNyXT1QjwQT0KwIRIFPQ+SxFSj2Vu9OA3jHnAD+KPpaxySXslsX
yyCpYpxODSfPVl9x4fcRk5vUU5z/sAU=
=SXdm
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--
