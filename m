X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["747" "Wednesday" "27" "June" "2018" "07:58:05" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2VHcobRNJHiz_eKmf6qnrRvmvicjat21QXjwYWFY7wYZw@mail.gmail.com>" "29" "Re: [oss-security] CVE for PyYAML RCE-factory API" "^Date:" nil nil "6" "2018062711:58:05" "[oss-security] CVE for PyYAML RCE-factory API" (number mark "        alex.gaynor@ Jun 27   29/747   " thread-indent "\"Re: [oss-security] CVE for PyYAML RCE-factory API\"\n") "<20180627033113.GC14157@hunt>" ("<CAFRnB2U-tEMNDwXgY-_-VxA8A8anCF22YeJT_ELsGLjRUy-1xg@mail.gmail.com>" "<20180627033113.GC14157@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20275 invoked by uid 550); 27 Jun 2018 11:58:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20251 invoked from network); 27 Jun 2018 11:58:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=BRcf1UJbw3KM2gR2zgshXxfFqLpP2JSvmZZfIYw2H+Y=;
        b=LjB7Hk5mqqfCCWAqRRFw+Ie4JybfBjVUkg3ok3G8Vlv3D0myJ3cy12WG2/VmpmFhk1
         NgV8tanBy5FJh1YoMd+NHuZgzHntjOMwdxcdhBxmqAPJLbR+MroyF5TmKStNdVWjGbRN
         trlcaJJ4Z7cWHQd7zHojJS6/5Osbzorqne2fl5fZaXh7LJDnSlHywvbYNbpSdS3P3pHp
         6hz15sT0Q4GLG4koMlorXr4XuLn+GyAPNt42wO7PuokHwZg1+I9Fvvax94y8wrs/TpXu
         jY6OtF5qdeorfl2EWkyHWo6cFR5GNTpJREkiYF6jJcAiCgOfdR9sJIJY7CU0lSXyLxRo
         rfMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=BRcf1UJbw3KM2gR2zgshXxfFqLpP2JSvmZZfIYw2H+Y=;
        b=lSZg6UbwcOFTEK2lcub7YfAHa4jbrznhfnW4gnvp7Rg0NmIbDWyZkhyA/2D+Y3hjEt
         5VURnwYTPqkPJ0Bms7wcxPbAsZqYbZf80B4w0e+yu7OrJSi8rCJ0bu3jMxRCOjTZo/kZ
         4DxiK9E/ueCGfx71Akpv+qfT8tm7qhJevl/iB3S9pGwTUzmCnErZffyoIlZbRsdnxBVS
         Gnp5mXBv6n1C7APyIEG5MKjKWwucz3vUBQEdDS7JV2TcwtHnJaRT3bPVMPfZLnCTpkEb
         cxvG7JcXxCsVJlk0jg8/9JkzZGO54E0rI8eRzzBQntwHZ2g1+m/7d/iXjdr7LgtcEek4
         amYg==
X-Gm-Message-State: APt69E1S/UBXvt+s8cIVtjKdg3V1Beepc2NqsfCFikeIE4kle8LztEgw
	RtpTZplhkV87cArAfHNDJritdtkJ5C2Qm39wUCYb8cPq
X-Google-Smtp-Source: AAOMgpeQDVzW4dUs3gsi36hyUZWtKv/0/ppxF76ry2egUlPDVoaqRDHci32o73HwteVpvdIznf/ZdcBNIKv/TNkSgeo=
X-Received: by 2002:a2e:91d6:: with SMTP id u22-v6mr4137814ljg.64.1530100697462;
 Wed, 27 Jun 2018 04:58:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2U-tEMNDwXgY-_-VxA8A8anCF22YeJT_ELsGLjRUy-1xg@mail.gmail.com>
 <20180627033113.GC14157@hunt>
In-Reply-To: <20180627033113.GC14157@hunt>
Message-ID: <CAFRnB2VHcobRNJHiz_eKmf6qnrRvmvicjat21QXjwYWFY7wYZw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000008afbcb056f9e5437"
Date: Wed, 27 Jun 2018 07:58:05 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for PyYAML RCE-factory API
To: oss-security@lists.openwall.com

--0000000000008afbcb056f9e5437
Content-Type: text/plain; charset="UTF-8"

Thanks -- this issue was assigned CVE-2017-18342.

Alex

On Tue, Jun 26, 2018 at 11:32 PM Seth Arnold <seth.arnold@canonical.com>
wrote:

> On Tue, Jun 26, 2018 at 09:18:39PM -0400, Alex Gaynor wrote:
> > Because of the degree to which this API presented a footgun, I would like
> > to request a CVE for it.
>
> This makes sense to me. You can make CVE requests on:
>
> https://cveform.mitre.org/
>
> Thanks
>


-- 
"I disapprove of what you say, but I will defend to the death your right to
say it." -- Evelyn Beatrice Hall (summarizing Voltaire)
"The people's good is the highest law." -- Cicero
GPG Key fingerprint: D1B3 ADC0 E023 8CA6

--0000000000008afbcb056f9e5437--
