X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["988" "Sunday" "12" "March" "2017" "17:41:49" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170312164149.4ivltlh32pglgfgm@eldamar.local>" "25" "[oss-security] Roundcube: CVE-2017-6820: XSS issue in handling of a style tag inside of an svg element" nil nil nil "3" "2017031216:41:49" "[oss-security] Roundcube: CVE-2017-6820: XSS issue in handling of a style tag inside of an svg element" (number mark "U       carnil@debia Mar 12   25/988   " thread-indent "\"[oss-security] Roundcube: CVE-2017-6820: XSS issue in handling of a style tag inside of an svg element\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31997 invoked by uid 550); 12 Mar 2017 16:42:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31976 invoked from network); 12 Mar 2017 16:42:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cNMJtzDAfiyouwiOl+I4vdGqJt20vAmC8AEoa7vDn0I=;
        b=SsybcCMl9A3O8aNooGD+4wEVC+6XJxvDooXviBeqXu4g5Ie+PE8lUPNXgus/Pf6qKD
         Wngn655vvcsHic74RHcM0ITRdiONqSXRiIBjMYD5cBINMQ1lRF+odeSd8jKxkeSOo0s6
         43yKcEZBgz0wvhdHHqusKyw3WeWX9m1jCP0+ofpcH/JXAUyyTjNl0KWT4yX/SbYctdV0
         qTQMRqCCMd7Rj2B+Ze8ovxG6qRw9j1nFPQkwWqof2J1YPPA1iYUhJTI7hDTf7LwlxuyB
         cZSEd2pWNN4ONA8xnhASJhEEsFOa4mms1uOFkKSyOlLwnpVaPzMpO8GHKwJSPe6Yx6fx
         MyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=cNMJtzDAfiyouwiOl+I4vdGqJt20vAmC8AEoa7vDn0I=;
        b=TpIgLwNeJMidcWnZyPpIYKie0OEGfR5/P0ze8AJfuorgW08oV0lvotC1JILBrk96p1
         Ov+LdyNqUoi4TWtDFK6i/MC6c1WSEW0wXcFG7rbdf5kbuDOQX6M0QcMSYA930MmJaIpz
         QrLWX7jcYeZcDvkcKV2lJBgKgHEYeQAYHtpLxNyaA42fLCm9vrgfqidnUTEvXUx0IPeE
         vMXkWdoIy4YAXUl49IwOGN2QqiTh3yImMWzoVwX0uGedr7KJGWDNLstSxaFFbClL5Fw5
         /YVuP81lFjMYCDWQ782oeV1ZIWRl585TpjY4+wAwkNpaoUX9G5YGplppIO942bp275gJ
         jKdw==
X-Gm-Message-State: AFeK/H36nb+YMvplbzg6q1+BupkianQVlJA4pYEHjStfsz0UgBSCyfp5cUHThg1pXoOjOA==
X-Received: by 10.28.156.69 with SMTP id f66mr6700104wme.56.1489336911456;
        Sun, 12 Mar 2017 09:41:51 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 12 Mar 2017 17:41:49 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170312164149.4ivltlh32pglgfgm@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Roundcube: CVE-2017-6820: XSS issue in handling of a style tag
 inside of an svg element

Hi

I have requested a CVE for the following Roundcube issue, wich got
assigned CVE-2017-6820[*].

rcube_utils.php in Roundcube before 1.1.8 and before 1.2.4 is
susceptible to a cross-site scripting vulnerability via a crafted
Cascading Style Sheets (CSS) token sequence within an SVG element..

https://github.com/roundcube/roundcubemail/releases/tag/1.1.8
https://github.com/roundcube/roundcubemail/releases/tag/1.2.4
https://roundcube.net/news/2017/03/10/updates-1.2.4-and-1.1.8-released

Upstream fix (sequence of two commits):

https://github.com/roundcube/roundcubemail/commit/fa2824fdcd44af3f970b2797feb47652482c8305
https://github.com/roundcube/roundcubemail/commit/cbd35626f7db7855f3b5e2db00d28ecc1554e9f4

Regards,
Salvatore

 [*] ideally that would be done by the upstream project on it's own
 before publishing an issue in case it was privately reported, since
 it was not immediately clear to me if one was already requested or
 some other vendors/distributors have done it.
