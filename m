X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3003" "Wednesday" "4" "July" "2018" "17:15:13" "-0400" "will martin" "wmartinusa@gmail.com" "<CAK3kuDWdbaN_SKessVpbpu2eE-8D3Q2GmEW2bAy4-Pfvs6j0og@mail.gmail.com>" "85" "[oss-security] Re: [SECURITY] CVE-2018-8026: XXE vulnerability due to Apache Solr configset upload (exchange rate provider config / enum field config / TIKA parsecontext)" nil nil nil "7" "2018070421:15:13" "[oss-security] Re: [SECURITY] CVE-2018-8026: XXE vulnerability due to Apache Solr configset upload (exchange rate provider config / enum field config / TIKA parsecontext)" (number mark "U       wmartinusa@g Jul  4   85/3003  " thread-indent "\"[oss-security] Re: [SECURITY] CVE-2018-8026: XXE vulnerability due to Apache Solr configset upload (exchange rate provider config / enum field config / TIKA parsecontext)\"\n") "<0cdc01d413b7$f97ba580$ec72f080$@apache.org>" ("<0cdc01d413b7$f97ba580$ec72f080$@apache.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23683 invoked by uid 550); 4 Jul 2018 21:21:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13332 invoked from network); 4 Jul 2018 21:15:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TuUJl1iwwrJd/AhERm8+oxDQGUUrsprYFQNeJkq1HK8=;
        b=hxw2mwm4WOez/cj8Jzuopvls9TGkkq+31zServtq7OSbGRj4t53kP5HEt7OydF2lu7
         jnJABPILJv4HuaZF3nqL6CYfFp4Fy56Je1B7vtJOdsBVe2q1T/FYXIGUperAJLv3ZNaO
         9+ViNNGPu8ByXNsdc9hBphanugkCxNaRzwD4Wm2pg+6lvOVbn2CoHrJwcaK0/brm7eV0
         s3dqeYVF67IlR4Zlm+PxGrm7gSQ+gYGn+Zt532LpVCch/demCVbZeavlHhgFB+AfFS71
         wUiY21ZyRO0LnhiQtfAU2KVceLi0w6vQ2UePxkbl4eEf1TkMXaqGhCHeU6dcGPB5vdZF
         4N5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TuUJl1iwwrJd/AhERm8+oxDQGUUrsprYFQNeJkq1HK8=;
        b=QaI+qJhnu5YZZ2vwFNWFgWnVV1qFCRmAMVQVb9pMrLrNMmcXgd9LZBurVKQwCTRMK5
         A+XJBc/0KH+gYULctfNSxwUAiR7pklgPLUnxHt6lha8m0RW1bPT0cXnjZ7gtpj4F0ekX
         o/6WxWXd/dFf6380pUfDnOpTR12ITD8pewJWMaFs//PogaqNk1j1wmbHnhO6o5JGKSmk
         7qzYwRrunjx+SUqIwgLYW0NiIg2K5PDo64f9dLb1hWR3wY7fDwBynesTqQoHQt9DDuar
         mt6/gCiz3VCN7cv5kRDBCCLrRvyA2N3CaIeCvoXPBuV7b2JKpchczEvehwP/PLtHaalv
         J9jA==
X-Gm-Message-State: APt69E3cPU7lSDWoFBcpADfTgAl+pQcJsacvE+psBvz3pBj3fGdmbddu
	rjKcyv4V6BvbkYwl5+dYnnjKF44DoEWYbg1UZ4k=
X-Google-Smtp-Source: AAOMgpeew3zuwJomO6a01oaYnhI3IABHJ6ouy63MsN1eUgdyVDFbSgq8eR9anQggl+kuMumIOSmFNL2OPVKaB9jPjF0=
X-Received: by 2002:a19:7403:: with SMTP id v3-v6mr2400172lfe.97.1530738924678;
 Wed, 04 Jul 2018 14:15:24 -0700 (PDT)
MIME-Version: 1.0
References: <0cdc01d413b7$f97ba580$ec72f080$@apache.org>
In-Reply-To: <0cdc01d413b7$f97ba580$ec72f080$@apache.org>
From: will martin <wmartinusa@gmail.com>
Date: Wed, 4 Jul 2018 17:15:13 -0400
Message-ID: <CAK3kuDWdbaN_SKessVpbpu2eE-8D3Q2GmEW2bAy4-Pfvs6j0og@mail.gmail.com>
To: general@lucene.apache.org
Cc: announce@apache.org, dev@lucene.apache.org, solr-user@lucene.apache.org, 
	security <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d97365057032ed1b"
Subject: [oss-security] Re: [SECURITY] CVE-2018-8026: XXE vulnerability due to Apache Solr
 configset upload (exchange rate provider config / enum field config / TIKA parsecontext)

--000000000000d97365057032ed1b
Content-Type: text/plain; charset="UTF-8"

The cve id was reserved in April. The jira ticket 1 mo ago. Is this the
first notice to this list?

Thx

On Wed, Jul 4, 2018, 12:56 PM Uwe Schindler <uschindler@apache.org> wrote:

> CVE-2018-8026: XXE vulnerability due to Apache Solr configset upload
> (exchange rate provider config / enum field config / TIKA parsecontext)
>
> Severity: High
>
> Vendor:
> The Apache Software Foundation
>
> Versions Affected:
> Solr 6.0.0 to 6.6.4
> Solr 7.0.0 to 7.3.1
>
> Description:
> The details of this vulnerability were reported by mail to the Apache
> security mailing list.
> This vulnerability relates to an XML external entity expansion (XXE) in
> Solr
> config files (currency.xml, enumsConfig.xml referred from schema.xml,
> TIKA parsecontext config file). In addition, Xinclude functionality
> provided
> in these config files is also affected in a similar way. The vulnerability
> can
> be used as XXE using file/ftp/http protocols in order to read arbitrary
> local files from the Solr server or the internal network. The manipulated
> files can be uploaded as configsets using Solr's API, allowing to exploit
> that vulnerability. See [1] for more details.
>
> Mitigation:
> Users are advised to upgrade to either Solr 6.6.5 or Solr 7.4.0 releases
> both
> of which address the vulnerability. Once upgrade is complete, no other
> steps
> are required. Those releases only allow external entities and Xincludes
> that
> refer to local files / zookeeper resources below the Solr instance
> directory
> (using Solr's ResourceLoader); usage of absolute URLs is denied. Keep in
> mind, that external entities and XInclude are explicitly supported to
> better
> structure config files in large installations. Before Solr 6 this was no
> problem, as config files were not accessible through the APIs.
>
> If users are unable to upgrade to Solr 6.6.5 or Solr 7.4.0 then they are
> advised to make sure that Solr instances are only used locally without
> access
> to public internet, so the vulnerability cannot be exploited. In addition,
> reverse proxies should be guarded to not allow end users to reach the
> configset APIs. Please refer to [2] on how to correctly secure Solr
> servers.
>
> Solr 5.x and earlier are not affected by this vulnerability; those versions
> do not allow to upload configsets via the API. Nevertheless, users should
> upgrade those versions as soon as possible, because there may be other ways
> to inject config files through file upload functionality of the old web
> interface. Those versions are no longer maintained, so no deep analysis was
> done.
>
> Credit:
> Yuyang Xiao, Ishan Chattopadhyaya
>
> References:
> [1] https://issues.apache.org/jira/browse/SOLR-12450
> [2] https://wiki.apache.org/solr/SolrSecurity
>
> -----
> Uwe Schindler
> uschindler@apache.org
> ASF Member, Apache Lucene PMC / Committer
> Bremen, Germany
> http://lucene.apache.org/
>
>
>

--000000000000d97365057032ed1b--
