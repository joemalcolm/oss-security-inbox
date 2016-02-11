X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["701" "Thursday" "11" "February" "2016" "16:05:53" "-0500" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2V=ZFt83v6sBnYOj8-nwfRk-G-pf6bB9y9RS250mz_zSQ@mail.gmail.com>" "22" "[oss-security] STARTTLS for this list?" "^Date:" nil nil "2" "2016021121:05:53" "[oss-security] STARTTLS for this list?" (number mark "        alex.gaynor@ Feb 11   22/701   " thread-indent "\"[oss-security] STARTTLS for this list?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5178 invoked by uid 550); 11 Feb 2016 21:06:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5123 invoked from network); 11 Feb 2016 21:06:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=G6FWgy1sYX3gm/21b6FKHMaASKLTmWHrGe37GdjTz5E=;
        b=SrscLd+YYLvIAuGF29McLu6HDPmapSGGKKqYCyF9boQ6/OfaUjtEXTiP2r1IGg9qJO
         lxa5eiO53/mdNYQWG+c4+lXKwIqctStJvJjVnnqxrwnzUn7xHLSurc6QuW1jdIz/Qn6e
         Op3ldo0hVD0f2xU4vI/WY9zOR9YLII1kjJ+/QwDsHd29WNFa8jvsLNcr9q7Pp9GnoMFk
         yegzYTh/8tesL8SgYspEbOvuRp5OOl9Gr0J84X4dsrq0aAyhuZ//MzDXl0F/f1wwz3q8
         NwuW9gycocX8EcD5zr8UKyIvyjzM7i/6gXGS8xjshcBEcGFaK3LJp52UoclixiI5pcjv
         +TcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=G6FWgy1sYX3gm/21b6FKHMaASKLTmWHrGe37GdjTz5E=;
        b=WwCVsAmPYwbGYZpD0Io97QXiJ1fqsyE6Ycr8Ya+EYE24KaSSCHGZ9KHpdpkljXiHaN
         szMy6sdO4sqT5Jf5Bgq/FqsNBCOiektw2W1uG45WRV2AG/UCcXGR7y86cZFbAXqb5lL6
         /06cI58oMmvOc7QLx2SVhhqSczxIjoV2WhJI76W2D1YB8XT5Uy9TwOzpBo/8HGWqPTH6
         KA1BrafJayWMhMAnayWA2v3LRVCtNnQp6IVSqyKKfVrCunsh0KLSSFGMtptXhAOtmHuB
         bMEeJbZwjbl2VA5K3mbCGeq9vzToRROW9hSmG9RRFGtftZ8SymmCTF4QLlWDndc44Smf
         ZhZg==
X-Gm-Message-State: AG10YOSudYvfnLoDMJMOh+Nf/KXll1rbZvgEd33Vze56qu7/DaVKoCJeza34HPOZC6EQZNRMyOgPLog3TJ7DbA==
MIME-Version: 1.0
X-Received: by 10.107.138.90 with SMTP id m87mr50372368iod.127.1455224753576;
 Thu, 11 Feb 2016 13:05:53 -0800 (PST)
Message-ID: <CAFRnB2V=ZFt83v6sBnYOj8-nwfRk-G-pf6bB9y9RS250mz_zSQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113fe78e816379052b84eaee
Date: Thu, 11 Feb 2016 16:05:53 -0500
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] STARTTLS for this list?
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a113fe78e816379052b84eaee
Content-Type: text/plain; charset=UTF-8

Hi all,

Not sure if anyone saw, but gmail has been rolling out UI indicators for
MTAs which don't use TLS:
https://gmailblog.blogspot.com/2016/02/making-email-safer-for-you-posted-by.html

I was surprised to see this indicator on mail from oss-security. Does
anyone know who has the keys to `list.openwall.com` so they can turn on
STARTTLS for outbound email?

Alex

-- 
"I disapprove of what you say, but I will defend to the death your right to
say it." -- Evelyn Beatrice Hall (summarizing Voltaire)
"The people's good is the highest law." -- Cicero
GPG Key fingerprint: 125F 5C67 DFE9 4084

--001a113fe78e816379052b84eaee--
