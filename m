X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1409" "Wednesday" "24" "April" "2019" "16:11:08" "+0530" "Ishan Chattopadhyaya" "ichattopadhyaya@gmail.com" "<CAHPRk5HKN=LmhXz4xoKE6LCp6GbcEQQob9JWA9pV8kqQfuJVkw@mail.gmail.com>" "34" "[oss-security] Re: CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure" nil nil nil "4" "2019042410:41:08" "[oss-security] Re: CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure" (number mark "U       ichattopadhy Apr 24   34/1409  " thread-indent "\"[oss-security] Re: CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure\"\n") "<CABVqxwCYodUFPHcR407OMiOSThCXyd3d+6xZz1ODGcyRTsznsQ@mail.gmail.com>" ("<CABVqxwCYodUFPHcR407OMiOSThCXyd3d+6xZz1ODGcyRTsznsQ@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29795 invoked by uid 550); 24 Apr 2019 11:18:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28610 invoked from network); 24 Apr 2019 10:41:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lrtRnm8RwVrv0wd1Oj39Oifg1FKYVin3IuLFajWAbR4=;
        b=rDCrW/5tzqZgQbr5hmSEHbanmBezpZ0wxeDugjJK+Hj/YSlWq+ZuTj45+qJAiiIKUk
         S3T2pus9bhKHssvKp+2jGnN3yjCSgvd9KdzVCguw6Cqx+equa297PN1IDj1/Eqb+EN2d
         oiMsu7NNt/LTSvr8SLDcPnkM5wgYwxObqzQe+ZNSK8MbGXI/HuJlEEjS9LVmi4MgIZsY
         6wePnZ3SxPb5WZdwFERSIVzppqN5lfVhxvNIOPY6e/VCIPM5S/K/D26SQ0TGoHRhczQH
         gB4rP9iXARzkTDP7gpyqEnlqDy52STgPNMHQfIPDIf6TyY8i+0VaUpu+TYFmDwTE62ce
         ikuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lrtRnm8RwVrv0wd1Oj39Oifg1FKYVin3IuLFajWAbR4=;
        b=puwXuyZ38dh+E7Ykn0DV1aK9v7eSL8jKAtzIIKu8G+0VY6Zh3N8P7Wp2qPjZOqvHSe
         xpHfeD7A8sn8nD5Lxi20qkkZS6ImanrhOPQ4cGTurBoV3XZ4eb/vjRu+HI9DrKT+EoI5
         gX6UwLJfdWUYqw1VjRSC8i0e9YaRDBiKLk9YjGxB8kwUT2MxZZHcDpkHtbn32LROLoHe
         oefzTZxToTxPlzT+/v1lb35uYOlAfsnCkZXVvFyZM7XPhREOGM8w4LZcH8WAQsb1SRXJ
         DIUf4h+qLxj+DSdOjl82kqUxBzgRh590g4pd/lAQxvVBSFlJhM9MtwT0RUKd81OwWi9U
         K2Nw==
X-Gm-Message-State: APjAAAUobrTphInStZBffJzoJfbQbqtPPp7bAb+II33woE1B2xkWCkfZ
	X4D01nNu0GWjCTlb3R3bbVCXn73sMXFMOgA+wHduJHuJ
X-Google-Smtp-Source: APXvYqwdCUDQptItnp+tJmSxvC3PS8f3VizJ4wpNdRq0jQQ+nJBIm1zAOwLeSdlf7ixSDA6U6fJ7mRDxNPKYqetC/2A=
X-Received: by 2002:a81:3514:: with SMTP id c20mr17713109ywa.243.1556102480908;
 Wed, 24 Apr 2019 03:41:20 -0700 (PDT)
MIME-Version: 1.0
References: <CABVqxwCYodUFPHcR407OMiOSThCXyd3d+6xZz1ODGcyRTsznsQ@mail.gmail.com>
In-Reply-To: <CABVqxwCYodUFPHcR407OMiOSThCXyd3d+6xZz1ODGcyRTsznsQ@mail.gmail.com>
From: Ishan Chattopadhyaya <ichattopadhyaya@gmail.com>
Date: Wed, 24 Apr 2019 16:11:08 +0530
Message-ID: <CAHPRk5HKN=LmhXz4xoKE6LCp6GbcEQQob9JWA9pV8kqQfuJVkw@mail.gmail.com>
To: java-user@lucene.apache.org
Cc: Lucene Dev <dev@lucene.apache.org>, Apache Security Team <security@apache.org>, 
	oss-security@lists.openwall.com, solr-user@lucene.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure

This fix has also been backported to Solr 6.6.6 for users who are
stuck with Solr 6.x.

(Sorry, I hadn't updated the issue and hence this was missed in the
original mail.)

On Wed, Apr 24, 2019 at 12:35 PM Noble Paul <noble@apache.org> wrote:
>
> CVE-2018-11802: Apache Solr authorization bug disclosure
> Severity: Important
> Vendor: The Apache Software Foundation
> Versions Affected: Apache Solr 7.6 or less
>
> Description:
> jira  ticket : https://issues.apache.org/jira/browse/SOLR-12514
> In apache Solr the cluster can be partitioned into multiple
> collections and only a subset of nodes actually host any given
> collection. However, if a node receives a request for a collection it
> does not host, it proxies the request to a relevant node and serves
> the request. Solr bypasses all authorization settings for such
> requests. This affects all Solr versions that uses the default
> authorization mechanism of Solr (RuleBasedAuthorizationPlugin)
>
> Mitigation:
> A fix is provided in Solr 7.7 version and upwards. If you use Solr's
> authorization mechanism, please upgrade to a version newer than Solr
> 7.7.
>
> Credit: This issue was discovered by Mahesh Kumar Vasanthu Somashekar.
>
> ---------------------------------------------------------------------
> To unsubscribe, e-mail: java-user-unsubscribe@lucene.apache.org
> For additional commands, e-mail: java-user-help@lucene.apache.org
>
