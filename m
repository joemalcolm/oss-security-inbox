X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["436" "Thursday" "27" "July" "2017" "07:17:44" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170727051744.3zhfqpibx3v6262d@eldamar.local>" "14" "[oss-security] Cacti: CVE-2017-11691: Cross-site scripting vulnerability in user profile management page (auth_profile.php)" "^Date:" nil nil "7" "2017072705:17:44" "[oss-security] Cacti: CVE-2017-11691: Cross-site scripting vulnerability in user profile management page (auth_profile.php)" (number mark "        carnil@debia Jul 27   14/436   " thread-indent "\"[oss-security] Cacti: CVE-2017-11691: Cross-site scripting vulnerability in user profile management page (auth_profile.php)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18250 invoked by uid 550); 27 Jul 2017 05:17:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18229 invoked from network); 27 Jul 2017 05:17:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NkW8kefGDL8Yi4fD6E0mUDKBSubzmRBpAdQFw9i/ScU=;
        b=SSotpoHghtQhj8HBQW5WgaLedHga6BQ7oTy4JV7Zo2MLO7LdFU0RjUEeSFQwWtaC4U
         FmTXkMk8D0Bn30AO0xM4dsHxmRJQpAgTMSZU4sc30orF1BSvHj2PTziIuU28HCypzsX8
         8ZqZFeDoCpmHxsJZR0q4DBOigPcTiKLdGKt3wMx7IN0Bg9XXMK0WIG7GaI04pY8m9WRC
         RvfKDtcjR1HEbRUGhh6pZ0RIIaPnauqFxDlPFSqiJQoypvrVMb8POldM2ZtDWU5Zb36o
         cqhnx+cqFWJYVndX68+8DoOsbxwZ2XtcMbstdZhoBLpXzKm56GTXHNN8AOv+8NAMKIn1
         W2jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=NkW8kefGDL8Yi4fD6E0mUDKBSubzmRBpAdQFw9i/ScU=;
        b=jLxvYUEutL0q4ez12qpqETvOpo3IOpsG+g+Edht2BGS15xe21vli7dyVjmirVlubYv
         rI+nL1cSxr2U/CRT0Pfof4CmAAy57Sfx8wOfszzXaf0p/cZAjdqdjSLKGiNMcAt6nrkq
         8BCjY4i2EdvRLYVElO6t2mHyOEfVER9vdSuwBiQr4Ui4NuDQPkSI9lrZ8fjJLsvJL0/W
         KQFGvrNFx0Ta0JpWGoBgsLEA5WuM6rXTZqFU+58DjqdQ01KptWp9DJq0WYvoSy1BgYZg
         fnLZFepQHu4uIyR2Hs4UprJKElR0S9PLRKQCc1VXlByAlbKyjGVoacHBB95ZI7CCmiOl
         EWiQ==
X-Gm-Message-State: AIVw113YmEoceL4A0eYp00DHulY7J71GqrUagnFbt2vEOu5CcOgl7xnC
	MQpHnpUxyBAXTT6u
X-Received: by 10.223.138.238 with SMTP id z43mr2311018wrz.219.1501132666731;
        Wed, 26 Jul 2017 22:17:46 -0700 (PDT)
Message-ID: <20170727051744.3zhfqpibx3v6262d@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Thu, 27 Jul 2017 07:17:44 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] Cacti: CVE-2017-11691: Cross-site scripting vulnerability in user
 profile management page (auth_profile.php)
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

A Cross-site scripting vulnerability exists in cacti before [1] in the
user profile managment page (auth_profile.php), allowing inject
arbitrary web script or HTML via specially crafted HTTP Referer
headers.

Upstream report: https://github.com/Cacti/cacti/issues/867
Upstream fix: https://github.com/Cacti/cacti/commit/104090aeead4aa433bf1f18cd6d52dcfeb71236c

MITRE has assigned CVE-2017-11691 for this issue.

Regards,
Salvatore
