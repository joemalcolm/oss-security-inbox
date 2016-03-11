X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1487" "Friday" "11" "March" "2016" "09:46:39" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3y2K8-_OSDEKnfx6k2Fv+PQBY+B7Y6hMMO4tWc=8UchQ@mail.gmail.com>" "43" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016031116:46:39" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        kseifried@re Mar 11   43/1487  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<56E2EBCD.2060808@igalia.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56DD3786.2040408@x41-dsec.de>" "<56E2EBCD.2060808@igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9938 invoked by uid 550); 11 Mar 2016 16:46:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9917 invoked from network); 11 Mar 2016 16:46:51 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=4mmmpXYSHwL41amO4cvxso1ytTU9zHeL7ymuWsT9F6k=;
        b=OC77jbwPRDkNF+9Ta2oCZcQpcD9JD7e3z9L1SkuTk9vHQTMNDLqbG7gVH9tdu7YRJi
         y6ImpDQoI/Ek51HccYlKW73U0VrT3uNx0mPjjt7pWX7Hz6Q5Pi2pl+ygxi+kcxetT2NA
         czvh73h/qa2L7L+eYwHo29tOFlBUzz1BUEX9Q3n/YxCnGIaR7KDEAXT36zdvmsXLgE/i
         76VYrqTNMvvRKtQ+YtrIqkXtYZZOkvqpP+yBfhNcUbGYKl3pcL16+NYPoYj4fiQt0AT+
         rI87GgXViWsdizmnhhKF5AiLw37m+rKjTK00glpM3lLl16Lvn5JrmwRlUcghK7M19hPC
         1xGw==
X-Gm-Message-State: AD7BkJKXMZERdtjikAxtZxzZJOmERG1h0hWfZfMPY2ndUAyAKIITkLMSMio5LvLmWlq4ekKS0DonEbYhpvrpEgUn
MIME-Version: 1.0
X-Received: by 10.13.223.14 with SMTP id i14mr5553431ywe.20.1457714800072;
 Fri, 11 Mar 2016 08:46:40 -0800 (PST)
In-Reply-To: <56E2EBCD.2060808@igalia.com>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
	<56DD3786.2040408@x41-dsec.de>
	<56E2EBCD.2060808@igalia.com>
Message-ID: <CANO=Ty3y2K8-_OSDEKnfx6k2Fv+PQBY+B7Y6hMMO4tWc=8UchQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114fd644d7d68a052dc8ace0
Date: Fri, 11 Mar 2016 09:46:39 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: oss-security <oss-security@lists.openwall.com>, "Boyle, Stephen V." <sboyle@mitre.org>

--001a114fd644d7d68a052dc8ace0
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 11, 2016 at 9:01 AM, Carlos Alberto Lopez Perez <
clopez@igalia.com> wrote:

> On 07/03/16 09:10, Markus Vervier wrote:
> > It seems to me MITRE currently wants to improve CVE quality but does not
> > have the resources
> > to do a real and fair validation.
>
> According to Wikipedia [1], Mitre has 7,613 employees and a revenue of
> US$ 1.421 billion.
>
> I fail to understand how a corporation of that size lacks resources for
> improving anything they really want to improve.
>
> ---
> [1] https://en.wikipedia.org/wiki/Mitre_Corporation
>
>
So I don't know the exact details but broadly speaking Mitre handle a lot
of US government projects, and one of Mitre's mandates is cyber security,
so under that mandate the us Gov (specifically the DHS as I understand it)
has funded several projects, such as CVE. So CVE is something Mite
administers, and is paid to do so through US Gov funding. It's not like CVE
is some profitable product that Mitre sells. So Mitre has to work within
the funding constraints of the government, it's not like they can trivially
allocate 10 million a year to it internally.

CC'ing Stephen Boyle, if I said something completely wrong please, please
correct me =).



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114fd644d7d68a052dc8ace0--
