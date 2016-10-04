X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1012" "Tuesday" "4" "October" "2016" "13:00:22" "-0400" "Steve Richert" "steve@collectiveidea.com" "<DD111A77-208D-4A66-8A39-93872A2FBA24@collectiveidea.com>" "24" "[oss-security] CVE Request" "^Date:" nil nil "10" "2016100417:00:22" "[oss-security] CVE Request" (number mark "U       steve@collec Oct  4   24/1012  " thread-indent "\"[oss-security] CVE Request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7375 invoked by uid 550); 4 Oct 2016 17:14:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32441 invoked from network); 4 Oct 2016 17:00:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=collectiveidea-com.20150623.gappssmtp.com; s=20150623;
        h=from:mime-version:subject:message-id:date:to;
        bh=ybaUFE57/CRsVtm/AqebSOMIGavCLyjfElIBrjRW9Ho=;
        b=l9oIFpM6uj1KaEppZLPGR7eUU0Ed2AvEwl/UKjPmnostcX2Dh/3REuGEPcJI/eFbva
         QHyX+urfpLFpJVGPiSxuhea4QahFCgwKQwKK31yKKPGGtjlph29SMfplhWRnDY5jveZi
         Y8ON0R6m4UjLPrMW3Dpm3lgKybzFDT2uEZb0MybQmIY74WqjwaYTV27L94/IM1K+Chx/
         PeDL9F+FigdRXBvRAayh5wiusxZQLy1scT028cptUiwUsJIWOt2oobbpMebs2uIcv9e3
         bqvPNxzaH7n1xbftUmnLdRx6sYBgDEJP6fZaEasSXmHOHHYEUxPkjZdJHYsKoY7GT6NB
         NiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=ybaUFE57/CRsVtm/AqebSOMIGavCLyjfElIBrjRW9Ho=;
        b=YmYgya4HVh62qmKbz3WGCj4XRqCxnN92QORDpEhqVEBdL6rhWiCQE5yiZpB9gVCaCr
         nUWBGf0kFaB0F2gHQ3o76tkg8d6yDqI+coPt56P+LZw5cIjZ/CNVG5nwrAkiGrOhTDh2
         RMbafxpfRmVn4ezxye8XDTGGBxMWaM2wD9lBQ3VaY+wNPp+1LgJPvSHrr2RMxS3bcx9c
         tCNXoAWVEpCdNpkVOJwksTX0wnNKuOisZAdUbWB0gKGXKTSbuOeKxF3kTzHNtILdjYK7
         4uyv78EC34j2TyXpI0vR1bZEnLPEQsXOoH0QHBQxwozvEwhapct4wua+/iy7AnYwRF/q
         vZMw==
X-Gm-Message-State: AA6/9RmAxCG7Pnf/wOsWugCEvAo/TxPVtOBQ+pkqtlq7OiCbzhw/jGIvkH4jxd3GQ1DFHQ==
X-Received: by 10.107.13.194 with SMTP id 185mr5260845ion.122.1475600433124;
        Tue, 04 Oct 2016 10:00:33 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_B785EAD6-E268-45FA-B423-EBFD214970F1"
Mime-Version: 1.0 (Mac OS X Mail 10.0 \(3226\))
Message-Id: <DD111A77-208D-4A66-8A39-93872A2FBA24@collectiveidea.com>
X-Mailer: Apple Mail (2.3226)
Date: Tue, 4 Oct 2016 13:00:22 -0400
From: Steve Richert <steve@collectiveidea.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request
To: oss-security@lists.openwall.com

--Apple-Mail=_B785EAD6-E268-45FA-B423-EBFD214970F1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello,

I'd like to request a CVE to track a security vulnerability found in Bundle=
r (bundler.io <http://bundler.io/>). Bundler allows the user to specify sou=
rces from which Ruby gems are installed. If a secondary source is specified=
, even if scoped to a specific gem, that source is silently applied to all =
declared gems. This allows an attacker to introduce arbitrary code into an =
application via gem name collision on the secondary source, which will unex=
pectedly (and without warning) take priority over the primary source.

The issue seems to exist in all 1.x versions of Bundler. Bundler 2 is still=
 in development and seems to resolve the issue. The Bundler team does not c=
urrently plan on releasing a patch for 1.x versions.

No CVE has been requested previously that I'm aware of.

Thank you!=

--Apple-Mail=_B785EAD6-E268-45FA-B423-EBFD214970F1--
