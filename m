X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["867" "Sunday" "12" "February" "2017" "11:23:49" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0PmeERNq+=vPhL=UM-LWVarr_Ry06NPc_OhpzXztZLbg@mail.gmail.com>" "24" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" nil nil nil "2" "2017021218:23:49" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "U       kseifried@re Feb 12   24/867   " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<20170211233541.GA6315@openwall.com>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<b1a94becd9a94b39bd3c95c89bc05f1f@imshyb02.MITRE.ORG>" "<20170211233541.GA6315@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24156 invoked by uid 550); 12 Feb 2017 18:24:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24107 invoked from network); 12 Feb 2017 18:24:01 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=UJs7k2SzK4DpXBZS9oTruSivqOYikjI+x6UNUiv3K2M=;
        b=rETaiyeGc3bI/35LnFW92N/Q1SpmJXhCC4RDOe2SfnD6+6K/JYCz6mwLWzoFM4Sbyp
         Q4hQ/BnXRwzifxLWbV6jX10OSx+ObV6qXEGPepE2GY1vo3c7rTZBzuIZaKB8jWt2brqF
         6tJv2o4BHjFb1YjHZMzpxHsp3NuQB0XopRyQklIHGd/hHh3LNvt/83JTCfsCDQG9KMlj
         489BcEX5OZsaE0uOyJbGwuWp512aVHT8GwMIXtYM520ctu03K2pZ/qo5zbNGVWCxK926
         F3IyuDQGMmsIPV7c/1IfPjzumR+2aBAyckkhunaC/FT6spsJt/uBDA6eTL5Vw1zvI74O
         2rkA==
X-Gm-Message-State: AMke39kzYYN2pPZ9MhrzxUl7YFdsQsYlF5E8HxagcY54be24X5HemIpArQZgDpRicsnvuulXXYm8ViTmax3RXrzu
X-Received: by 10.202.75.76 with SMTP id y73mr10410814oia.16.1486923829887;
 Sun, 12 Feb 2017 10:23:49 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170211233541.GA6315@openwall.com>
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <b1a94becd9a94b39bd3c95c89bc05f1f@imshyb02.MITRE.ORG> <20170211233541.GA6315@openwall.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Sun, 12 Feb 2017 11:23:49 -0700
Message-ID: <CANO=Ty0PmeERNq+=vPhL=UM-LWVarr_Ry06NPc_OhpzXztZLbg@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a11c183b2b058bd0548596ed1
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process

--001a11c183b2b058bd0548596ed1
Content-Type: text/plain; charset=UTF-8

Daily update stuff already exists:

https://cve.mitre.org/cve/data_updates.html

We could also have the MITRE CVE ID feed new stuff into oss-security but it
would include non open source stuff.

As for the DWF it's simple: we're using git, so I guess if people really
want up to the minute updates they can simply subscribe to the repos in
GitHub, or pull and do it on their own end. I don't have plans for a
notification service yet, on of my main goals it to make the data more
easily available and then see what people need/do with it (and of course
co-opt the useful ideas and use them!).

-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11c183b2b058bd0548596ed1--
