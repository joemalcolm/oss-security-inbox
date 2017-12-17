X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["689" "Sunday" "17" "December" "2017" "21:27:11" "+0100" "Raphael Geissert" "atomo64@gmail.com" "<CAA7hUgEumKFGGWbfVe=j3xyxBoA0cXSDzds-=pDozm+h6X597A@mail.gmail.com>" "22" "[oss-security] Net::LDAP ruby gem, missing certificate validation" nil nil nil "12" "2017121720:27:11" "[oss-security] Net::LDAP ruby gem, missing certificate validation" (number mark "U       atomo64@gmai Dec 17   22/689   " thread-indent "\"[oss-security] Net::LDAP ruby gem, missing certificate validation\"\n") "<2313476.vPjMFccExf@thickpad>" ("<2313476.vPjMFccExf@thickpad>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20447 invoked by uid 550); 17 Dec 2017 20:27:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20383 invoked from network); 17 Dec 2017 20:27:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=zwpP2XlUAOnrIaVT9GzSUH/3gux8/cFWyoGe+CuIjV4=;
        b=f6LaueKQPuTZ+nGujVG2kmrgPdenhVSLO4IQTT/m6Rik2yENuJRctX+xFCqoWL9ecD
         x6Zsenjjif23MGoyOPre1Mh4yOXRKWCV5cTQ5TVnDXr3Dec69gPZNW+3AFQ1++jJOL9V
         +mYCM2M3oHXCKN5xQ9n//i3umxVzBgrdWKzSSyR9aZleni2Yvl50S8nkwaXHd2ToFTEq
         KYPUypaEvfM2TNhjDATNT8S077DOd/QsX02Et6oG2yO/em3MfaG0SFwhzEEsmtO1VOvD
         2YLmL+MTf2JrftPVoI1PlPAAd0vF387ETYQhge0jNOQJkCSuy1o7SZVN0/4E1nbrsQXG
         XF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=zwpP2XlUAOnrIaVT9GzSUH/3gux8/cFWyoGe+CuIjV4=;
        b=DOJoWwlNDuzyBBbLhAYk9rVmCYWmLtQXbf+uCSKnM959LLuf1/E06QsBI9Wbh6+2iP
         /pT06OmtVDlBMmfCsD5prgEYY/mmgcbD4KxrW1rsueQ9M3pOQ0iRzabhM6ZN0ZIER2ya
         3gkbOw3Rr1Flk9zFJX0OrKBWSimp9k9UDNY4GQiEhKunyorptaQ1ZhIjMLrutPsUQ6Ov
         YpU/WQvoDp6+hQ8A0fEIGfnLFKjicKJcpd3ZpspjpYmGapNYDMTihpfYXq0kVK/xHCTG
         QbFJgPIyUeABS8JBIpgGmqKqQW0JZc8Q59ujj3Pr/ALtTxFtUsk1pgEZcDXWZhiVoXqC
         B+Uw==
X-Gm-Message-State: AKGB3mKpgwLRlWJvpk7VK2m3UcNMN4CfUGF3M9oDIkEWr+dosfrvkrhG
	vdpLFLm4/SepVkXIUwoEJSLCYeN6WNtvIHlENzimlg==
X-Google-Smtp-Source: ACJfBovoTPebb6HFDmIb1g6woNex6J81UwwWEJNN22mp/EPc8KgvsnMGaxjOEHGg84oRu+p2nIIOhahM4H+s5OjcwzA=
X-Received: by 10.36.211.22 with SMTP id n22mr18369829itg.5.1513542431987;
 Sun, 17 Dec 2017 12:27:11 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <2313476.vPjMFccExf@thickpad>
References: <2313476.vPjMFccExf@thickpad>
From: Raphael Geissert <atomo64@gmail.com>
Date: Sun, 17 Dec 2017 21:27:11 +0100
Message-ID: <CAA7hUgEumKFGGWbfVe=j3xyxBoA0cXSDzds-=pDozm+h6X597A@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary="001a11458fd002dc9505608f0fc9"
Subject: [oss-security] Net::LDAP ruby gem, missing certificate validation

--001a11458fd002dc9505608f0fc9
Content-Type: text/plain; charset="UTF-8"

Hi,

Just another heads up that I requested a CVE id for issue #258[1] in the
Net::LDAP ruby gem. Versions older than 0.16.0 did not verify that the LDAP
server's certificate matched the host it was supposed to be connecting to.

This has now been assigned CVE-2017-17718 by MITRE.

Older versions did not perform any kind of validation at all, but it was
properly documented as such. Based on the changelog I believe this to have
changed in 0.10.0 by verifying the certificate's trust chain.

[1]https://github.com/ruby-ldap/ruby-net-ldap/issues/258

Cheers,
-- 
Raphael Geissert

--001a11458fd002dc9505608f0fc9--
