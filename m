X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["730" "Tuesday" "24" "November" "2015" "21:38:35" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>" "21" "[oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" "^Date:" nil nil "11" "2015112504:38:35" "[oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" (number mark "        kseifried@re Nov 24   21/730   " thread-indent "\"[oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31905 invoked by uid 550); 25 Nov 2015 04:38:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31887 invoked from network); 25 Nov 2015 04:38:46 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=n1oraFN7c8k+zXB1SaiV92kIeKyWP3yfpSttmEZ541E=;
        b=LkX0dp6md2Nv6jNMUflJ4wH6eFvD8BjVJXACp0DGoyRiT80siAFaI01VHpscFV6Ple
         L4dumm8E6ZHBOxiaiJPDmY4asE22TFbuJ2Ny9e5OiJ6RHjLtJkB7aoyBZw9oHm5YStwY
         ZU6ZDH0UOMDPjVn7PvA+P0+otFyspbibwSuOcbM6M2xEz711Do+js4O3csyx3oH2PId+
         GQXIeClfugTeK8J42eBeOrxuRVgPYz4E2TDyldAzyEc9y4dROvJtwgiC4eHhsdAIx0+W
         eVLfQYnMP9FAjiyLMor86OMuhbY4IJvDNQxAHQf0qDfFobT/b5YgTMcMXVGRZeV9XhqU
         le/Q==
X-Gm-Message-State: ALoCoQkIXk3JrbZgwZJSj70wphLmIStPNxnHZzzXtOdUnzWz15K+uyUqZo9ndeaOq0cnGD8jiE04
MIME-Version: 1.0
X-Received: by 10.13.236.150 with SMTP id v144mr31267947ywe.20.1448426315315;
 Tue, 24 Nov 2015 20:38:35 -0800 (PST)
Message-ID: <CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c08298202347f0525560842
Date: Tue, 24 Nov 2015 21:38:35 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/
To: oss-security <oss-security@lists.openwall.com>

--94eb2c08298202347f0525560842
Content-Type: text/plain; charset=UTF-8

https://github.com/RedHatProductSecurity/Certificates-Shipped/

The idea is to create a comprehensive list of shipped certs/keys/etc by
open source vendors/distributions/projects so that:

1) we have a list of secrets maintained by external parties that we rely
upon
2) we can audit them and make sure we should be trusting them
3) also spot changes more easily (since the existing corpus is available)

I'm guessing there are some surprises waiting for us.

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c08298202347f0525560842--
