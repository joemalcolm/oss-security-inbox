X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["667" "Saturday" "14" "January" "2017" "08:19:00" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170114071900.lxx3d4qoibwvgru7@eldamar.local>" "19" "[oss-security] Duplicates of CVE-2015-8789 CVE-2015-8790 for libebml from TALOS reports?" "^Date:" nil nil "1" "2017011407:19:00" "[oss-security] Duplicates of CVE-2015-8789 CVE-2015-8790 for libebml from TALOS reports?" (number mark "        carnil@debia Jan 14   19/667   " thread-indent "\"[oss-security] Duplicates of CVE-2015-8789 CVE-2015-8790 for libebml from TALOS reports?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32295 invoked by uid 550); 14 Jan 2017 07:19:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32277 invoked from network); 14 Jan 2017 07:19:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VabBLFTeti5t4srSYOxrRUSV0AjgX+baGL5q7Eo6wqg=;
        b=ssio8g4Lx5soatNSzt22U4Uzp5RoA1w12pbfaRRhnPAJBwuqsurhXH2kDcWHZROI2H
         vshSQQK1keX6VE6mvHZrF24D/XiIi8Qkwgsdc/rNGz5UxVI3lNwYuXTfS6jSghvDpa84
         CtRLgAvc+KWH+SZHO8RIKSLR4cwcItopcEfSHSWffKddeZQRpGScCaqcTMhpHx2ywILg
         qLLEvBnPa1o60QxaBlNzmC+iKl1r499lS3kIJ+620xK0BKBWNeDsySGaPx7mnkvXjAHs
         le5e6dXEumaCjj+ClNR448huSgGMLh1YU2SME3ZLt5wo/JjLyeCvZWCsoFK6BircK1w0
         +VGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=VabBLFTeti5t4srSYOxrRUSV0AjgX+baGL5q7Eo6wqg=;
        b=SzMZbDsmRbNnZHnsAZVQ1qifAcP22V7e5z3oVlW5406JnaiKSMmdl+zlNAzcgJLad3
         sD+PBMu0xshTvjR2jD+AWCgT9/dgfyynio9iIxO49GfH92h1qqvZHbTNz9G6Sc03i53j
         Gu/UfEGSR6jlnIAhULAOElGOvHCTtVBSkXIN+vS62iaq7FI1wCOoH/tigZWGBWeYx4x5
         kYokwHaTZaEtbC3P9nxZhOAAUkVnxt7o1gPi9NXabB7rx9x0bB2RsHSOCIuL13WOa2Mh
         EJrAbhDALDTL5qdTLdrXyVlmMKg1Od09f/HS5xKSCt/c1xJr6/psYPuvbVotFTsV1Rrx
         no2g==
X-Gm-Message-State: AIkVDXIrzTUPkmXUKpkYbEOtSTHKeCjqOyU9E+dtF4ZbaWiHHQovBuSkWqdx92UOjNTUKQ==
X-Received: by 10.28.72.3 with SMTP id v3mr5475364wma.20.1484378343310;
        Fri, 13 Jan 2017 23:19:03 -0800 (PST)
Message-ID: <20170114071900.lxx3d4qoibwvgru7@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Date: Sat, 14 Jan 2017 08:19:00 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] Duplicates of CVE-2015-8789 CVE-2015-8790 for libebml from TALOS
 reports?
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

CVE-2015-8789: following some downstream reports, this leads to commit
https://github.com/Matroska-Org/libebml/commit/88409e2a94dd3b40ff81d08bf6d92f486d036b24
which mentions Cisco TALOS-CAN-0037 report. Looking at
http://www.talosintelligence.com/reports/TALOS-2016-0037/ . That
mentions CVE-2016-1515. So I guess CVE-2016-1515 is a duplicate of the
CVE-2015-8789 assignment.

Similarly:

CVE-2015-8790: leads to
https://github.com/Matroska-Org/libebml/commit/ababb64e0c792ad2a314245233db0833ba12036b
referring to Cisco TALOS-CAN-0036,
http://www.talosintelligence.com/reports/TALOS-2016-0036/ which in
turns has the CVE-2016-1514 mentioned. 

Regards,
Salvatore
