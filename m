X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["431" "Friday" "17" "February" "2017" "21:23:19" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170217202319.o47gjtnty37vvubb@eldamar.local>" "19" "[oss-security] OpenID Connect authentication module for Apache: CVE-2017-6059 CVE-2017-6062" nil nil nil "2" "2017021720:23:19" "[oss-security] OpenID Connect authentication module for Apache: CVE-2017-6059 CVE-2017-6062" (number mark "U       carnil@debia Feb 17   19/431   " thread-indent "\"[oss-security] OpenID Connect authentication module for Apache: CVE-2017-6059 CVE-2017-6062\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1412 invoked by uid 550); 17 Feb 2017 20:23:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1393 invoked from network); 17 Feb 2017 20:23:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NMBHzkBwLiYq9c9fiP1tqbkFEbrwdqAV5oBamEjM8Mw=;
        b=muZJnQLYQqlYUXPNUAvPu8v98mD0MTOj3fd86AQWRKGxqVOKrpcXXB7L/FTONfCNuo
         /Icu4cj70MfaQsd9UKqJejSGuj+OQ2GjMRKS/+W+u7CBdybpxNT7T9/dlieZb9Szy0WW
         nvvtddurYFJW9bVDwunJtsLx+uPiZYQOsEYzeZ7WIE0fgPPdUZ517H+APVDALWHUTvwv
         zU+E0w6cvdEV10dRjZhlRs0usOLvSumRsOZwDa66C72DEQA202WPWngUJepEq22Hoe3n
         bO6gaFt2zdIa4GTV0ULMi/5Avz1k6kYslmJizyMTxCBf8A4NauXZW/YZalMJQCcnoNsB
         zGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=NMBHzkBwLiYq9c9fiP1tqbkFEbrwdqAV5oBamEjM8Mw=;
        b=TUUxHzjzcoD42cgyQmIdYz3sSK6N4Crbicu+T4cynjkhiai3NB2m7ZyXSjQ/1buJSS
         OuAQFsGW4HZn70Q0Ib9ShJPqSH2XzNsCDfpQe97nEJqFzfv2sp6Hw293YDiW2veuOk12
         jgXWvcC2Y7lduGB7ahDyQYPVwjJsC1Fjsj6QIXoL6/SOK/OMA6BwdnThq2p+CtDffAaY
         RYFpPchvGEkX+8NN+W/RoVKrMtD531RvGiWLJ0sozGoV66f5xcJP1Bu321nPCEI74w7q
         2tc1my+BcSdS+TrTxapeNtGlG0h4OhI/kbE+Ed7zwfCb3z/iXMGwyobjIA8m3ZUPJVYZ
         gJbg==
X-Gm-Message-State: AMke39k5UbhLhvpRgSonA4XsvInB9X1ICCbbSkJf64//Cb7+zwqCOmRkxeKhAVD1eZQjOw==
X-Received: by 10.223.179.79 with SMTP id k15mr550729wrd.32.1487363001245;
        Fri, 17 Feb 2017 12:23:21 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 17 Feb 2017 21:23:19 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170217202319.o47gjtnty37vvubb@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] OpenID Connect authentication module for Apache: CVE-2017-6059
 CVE-2017-6062

Hi

MITRE has assigned two CVEs for the OpenID Connect authentication
module for Apache (https://github.com/pingidentity/mod_auth_openidc):

CVE-2017-6059:

https://github.com/pingidentity/mod_auth_openidc/issues/212

mod_auth_openidc showss user-supplied content on error pages.

CVE-2017-6062:

https://github.com/pingidentity/mod_auth_openidc/issues/222

OIDCUnAuthAction pass does not scrub request headers

Regards,
Salvatore
