X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2007" "Wednesday" "17" "August" "2016" "15:28:05" "-0400" "Chaim Sanders" "chaim@chaimsanders.com" "<CAE8hE=qv3Gbb2iyZyQ9Vfk0GiqXJPAdruQ3y9ucdVRzfBb2Aag@mail.gmail.com>" "43" "[oss-security] ModSecurity's OWASP CRS v3.0.0-rc1 Released." nil nil nil "8" "2016081719:28:05" "[oss-security] ModSecurity's OWASP CRS v3.0.0-rc1 Released." (number mark "U       chaim@chaims Aug 17   43/2007  " thread-indent "\"[oss-security] ModSecurity's OWASP CRS v3.0.0-rc1 Released.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28057 invoked by uid 550); 17 Aug 2016 19:41:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22355 invoked from network); 17 Aug 2016 19:28:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=DVtfILyUT81suVoxQhcGITcDzQAFXY+UezaEISPVXQE=;
        b=p3LulnOCw9shPtAtu7FLllF3fN3GQR2lMCbDw3TxitZsIw/iQ19+BbYZGpAU4juiOU
         iOCfmeJmqKtkcf/eE9ICDxRkgnbWcQUN/B9jzudddnpkf8HbavyeKx4Zr6CYe7CLRSbJ
         9yf8NfYOXPR2F1T8uztfgvpG3vcQMtgtwF7IQFt8e8fq42KIzEUy/mKbBtIfoitb91vA
         aJNOMNtH/s9dWE81Uw3P3zQ+tSU2ssga00iEv0+KsNcK/ly5WbKroZybAQBGmB/TByf3
         eh5oK2BncBXIVWPk1PaciHLqg3aFdWz/p1IUAknsEy2SjdmHLHEa9avmaPciIihRYZ60
         Rh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=DVtfILyUT81suVoxQhcGITcDzQAFXY+UezaEISPVXQE=;
        b=mqyPZf2TZeeOtn8LDIkb2qPLjBoKNADykNW33mVyKOWQfIv6I8hRVqPu0Ulz/t3Zd4
         Y3y9cHfMdorVoxvdmr+C8ZKDhPN0dsF+wsdi+sfhr83QJ+gjngiDTBmTj700kFZkX5jO
         GQOau/EIQuao0ApGWBXBLoKlzxwzGf5Mes3WsggsvRIYwu67cqiFp2TYt6BdRVLyasy2
         +sOTngBuKxtnl1Fg18y7o7dwTU/ycLRG8y++oM3hsHPkj3mLEU3vMJkqzvl97puFE2FL
         bwty1OV+d4gyk8PBrdlp7U2I5hNPXJGH6VaUYRc+xpeqwY/cLRK97eh+u7l7DMZEZOJu
         DN6A==
X-Gm-Message-State: AEkoouv6xp3sOZUh7GsvCP2xHqyVApqxkpHKjw4Q9AAjHlzi3t+NWxFmVW4LIk/LDswvDAj/6BBaEHtWp/fXjg==
X-Received: by 10.176.69.194 with SMTP id u60mr20267151uau.123.1471462105834;
 Wed, 17 Aug 2016 12:28:25 -0700 (PDT)
MIME-Version: 1.0
Sender: chaim.sanders@gmail.com
From: Chaim Sanders <chaim@chaimsanders.com>
Date: Wed, 17 Aug 2016 15:28:05 -0400
X-Google-Sender-Auth: uZtgiIvcIiy88wI4y1VHb-02JVw
Message-ID: <CAE8hE=qv3Gbb2iyZyQ9Vfk0GiqXJPAdruQ3y9ucdVRzfBb2Aag@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] ModSecurity's OWASP CRS v3.0.0-rc1 Released.

The OWASP Core Rule Set team is proud to announce the first of two
planned release candidates for the upcoming OWASP ModSecurity Core
Rule Set v3.0.0.

This new release represents a huge step forward in terms of both
capabilities and protections including:

- A 95% reduction in false positives for a typical CRS deployment
using the default configuration.
- Extended effectiveness and detection capabilities in numerous areas;
namely Remote Command Execution and PHP injections (Walter Hop).
- A simple to use, adjustable paranoia level that allows users to
tailor their ruleset experience.
- The capability to allow existing sites to try out the Core Rules by
enabling the rules for only limited percentage of requests (Christian
Folini).

Please see the CHANGES document for a detailed list of new features
and improvements.
(https://github.com/SpiderLabs/owasp-modsecurity-crs/blob/v3.0.0-rc1/CHANGES)

Our desire is to see the Core Rules project used as part of a defense
in depth strategy to help effectively fight web application weaknesses
with few side effects. As such we attempt to cut down on false
positives as much as possible in the default install. This RC1
therefore offers an opportunity for individuals to provide feedback
and to report any other issues they may face. This is no longer aimed
at ModSecurity experts. This is the Core Rules for the rest of us.

Please use the CRS GitHub
(https://github.com/SpiderLabs/owasp-modsecurity-crs/releases/tag/v3.0.0-rc1)
or the Core Rules mailing list to tell us about your experiences,
including false positives or other issues with this release candidate.
Our current timeline is to seek public feedback on RC1 for the next
month, followed by an RC2 and subsequently a release.

 For more information, please see the following blog post accompanying
this release:

https://www.trustwave.com/Resources/SpiderLabs-Blog/OWASP-ModSecurity-CRS-Version-3-0-RC1-Released/


Sincerely Chaim Sanders, on behalf of the Core Rules Set development team.
