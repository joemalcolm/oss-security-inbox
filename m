X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["598" "Sunday" "30" "April" "2017" "20:28:26" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170430182826.ovpqricwr7ucjtg7@eldamar.local>" "19" "[oss-security] radicale: CVE-2017-8342: prone to timing oracles and simple bruteforce attacks" nil nil nil "4" "2017043018:28:26" "[oss-security] radicale: CVE-2017-8342: prone to timing oracles and simple bruteforce attacks" (number mark "U       carnil@debia Apr 30   19/598   " thread-indent "\"[oss-security] radicale: CVE-2017-8342: prone to timing oracles and simple bruteforce attacks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15436 invoked by uid 550); 30 Apr 2017 18:28:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15412 invoked from network); 30 Apr 2017 18:28:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XtiqsMEkZg/mQf+uHAve14vOkDdPfEVYJ+JTtlcURlE=;
        b=hbe9OgxEe72DRb26m9aI3anw9dMP8GNJE2OlbLuMpRMAqMIcK8OUvXwSB6KVUEPDV5
         2KYgM/naL799D/cSXQ1RMliXdlWnYFlziJ4L1fGRGXBOqCsVGhuAMoRTuDSudaiTM/mq
         wCauWUc0VOoGyQgU5BwXchiNc+rqcC00nG6oTPNpz7TjNC7wBq+Ges/pmu+w/w7BMIcK
         xTOHvNlIOZVUPzZzbssZy76/hntvx1Fao5eynTn2FSieFTm+XxBN6gqpjV5E/DaXlvm8
         BixHLMZ6ZcLtLzx9i+4bHJsJFSkLcZs8TwQkPIH6tgycguEQDjHRwGCt1HYiq3PV5GmY
         fHUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=XtiqsMEkZg/mQf+uHAve14vOkDdPfEVYJ+JTtlcURlE=;
        b=t3mGvaibsEaG51+8QY2tBEwY2JKZC7hHNskI9ARB+HWCrIkDtuXBNclWGh0/b6kFtB
         FCajHgu5kOIL8PqBuMn80cDO4RNpERgXLCvFi+0rfq66+TbaQ0PN8FrHoBKrpqyF1+4o
         Ip6FMiGR3WvmHReEvRLvy6laNowOsFhaNQSiBEhQ9rpbXE8utiuUuUO5OkPygz6sAAca
         g9UXxkh9XQ6XYBZzQUwQgOEiFgeJGIUdiDNV6GDmQubMwusH+nO/p/s6d7Fz0JnbAAm2
         1T8otFC/itnHTjBiWJNo2hhN8XFhGm/yq7ohja1VfkMV7yCdavgmC65GgsEC4PE9ml0h
         TyQg==
X-Gm-Message-State: AN3rC/4CO8eLTwOkOWAKwqtKb20RFTCnFDVcEEJGGNid0Wyb6yuehxwZ
	bB3Hfg/UGuO9T6mj
X-Received: by 10.223.150.74 with SMTP id c10mr13814550wra.85.1493576907949;
        Sun, 30 Apr 2017 11:28:27 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 30 Apr 2017 20:28:26 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170430182826.ovpqricwr7ucjtg7@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: [oss-security] radicale: CVE-2017-8342: prone to timing oracles and simple
 bruteforce attacks

Hi

The following CVE assignment was done via the
https://cveform.mitre.org:

Radicale, a simple calendar and addressbook server, before 1.1.2 and
2.x before 2.0.0rc2 is prone to timing oracles and simple brute-force
attacks when using the htpasswd authentication method.

References:
https://bugs.debian.org/861514
https://github.com/Kozea/Radicale/commit/059ba8dec1f22ccbeab837e288b3833a099cee2d
https://github.com/Kozea/Radicale/commit/190b1dd795f0c552a4992445a231da760211183b
https://github.com/Kozea/Radicale/blob/1.1.2/NEWS.rst

CVE-2017-8342 was assigned for this issue.

Regards,
Salvatore
