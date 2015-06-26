X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1042" "Friday" "26" "June" "2015" "02:10:40" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNXj5LEpieVXE=bByJCjiQ3pxTQd=CHVpAEGBFV7atEs-g@mail.gmail.com>" "27" "[oss-security] rubygems <2.4.8 vulnerable to DNS request hijacking (CVE-2015-3900 and CVE-2015-4020)" nil nil nil "6" "2015062609:10:40" "[oss-security] rubygems <2.4.8 vulnerable to DNS request hijacking (CVE-2015-3900 and CVE-2015-4020)" (number mark "U       reed@reedlod Jun 26   27/1042  " thread-indent "\"[oss-security] rubygems <2.4.8 vulnerable to DNS request hijacking (CVE-2015-3900 and CVE-2015-4020)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15646 invoked by uid 550); 26 Jun 2015 09:11:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15415 invoked from network); 26 Jun 2015 09:11:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=vRfxS3iIK6GsO8DFiCYz8yfKh1VV4l1Gaa4D001jLt8=;
        b=GTXVWdtj/rFCpncDlMF/Fb3xlClMB+BWnS3T2bNE7IAhK1MI5J//E530sGoIWreFV7
         vjINpV0IbkfgV5+3310acr77qMEXJ/r+f0QmYzZWiUJUhawzHdvryvQSv8yZ6ve34p5V
         GBgty1TZVODox496JxFjg481lTByyMbLpYQOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=vRfxS3iIK6GsO8DFiCYz8yfKh1VV4l1Gaa4D001jLt8=;
        b=D9mlvTNZmaXXgv6hMIMd53Do3v9JA9Jrobsx6sUl6BMXIatAAwrqblq67j0yigsK7+
         bN6z92Ss5JR0RH4gjrLK2SreJYZ4hzWzRD4/SYxvp+gj3X3Lf7VuF9zfh6e0rTlaI6w/
         LC/Am1Jo6I3sxshYKpZjVre2PI5LYJVUNGPEx/ExvESUXwnnxhCFxajeM2WJBo71DHqy
         1UsonR4Cxrnp9HxHHEDZ4l1DCUGAlW4E/A5Bj1+TIarQ/R/C/Hp2QPf1xHnmiSUQfjXs
         MMa9kLaVS1WU2Isex+4r906+HI2+DhY7taUisBvUK/xoMWlQCZB+cFZedxkRoH25zfUb
         ZlSg==
X-Gm-Message-State: ALoCoQmYLK8c8FlZDjYSs3H3uCtVSMTvgH31NTvGoG3FSCCJPdR8864F+DyPDpDO/B/EdSBScAyo
X-Received: by 10.153.5.2 with SMTP id ci2mr654920lad.28.1435309860088; Fri,
 26 Jun 2015 02:11:00 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALPTtNXj5LEpieVXE=bByJCjiQ3pxTQd=CHVpAEGBFV7atEs-g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11349ff25a83660519681e47
Date: Fri, 26 Jun 2015 02:10:40 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] rubygems <2.4.8 vulnerable to DNS request hijacking (CVE-2015-3900
 and CVE-2015-4020)
To: rubysec-announce <rubysec-announce@googlegroups.com>, ruby-security-ann@googlegroups.com, 
	oss-security@lists.openwall.com

--001a11349ff25a83660519681e47
Content-Type: text/plain; charset=UTF-8

A bit old news, but I didn't see anybody post about this, so figured I'd
pass it on so folks know to update. Haven't seen updates by the distros
either.

MITRE's summary (updated):
"""
RubyGems 2.0.x before 2.0.16, 2.2.x before 2.2.5, and 2.4.x before 2.4.8
does not validate the hostname when fetching gems or making API request,
which allows remote attackers to redirect requests to arbitrary domains via
a crafted DNS SRV record, aka a "DNS hijack attack."
"""

References:
*
https://www.trustwave.com/Resources/SpiderLabs-Blog/Attacking-Ruby-Gem-Security-with-CVE-2015-3900/
* http://blog.rubygems.org/2015/05/14/CVE-2015-3900.html
* http://blog.rubygems.org/2015/06/08/2.4.8-released.html
* http://blog.rubygems.org/2015/06/08/2.2.5-released.html
*
https://www.trustwave.com/Resources/Security-Advisories/Advisories/TWSL2015-007/?fid=6356
*
https://www.trustwave.com/Resources/Security-Advisories/Advisories/TWSL2015-009/?fid=6478

--001a11349ff25a83660519681e47--
