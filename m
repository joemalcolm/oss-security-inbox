X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["630" "Monday" "10" "September" "2018" "14:45:56" "-0400" "Christopher Shannon" "christopher.l.shannon@gmail.com" "<CACHnxzxipvde-bzy=9ssjMJQMj8ipRmSf2Uowif_MgEZvCxSxg@mail.gmail.com>" "19" "[oss-security] Re: [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification" nil nil nil "9" "2018091018:45:56" "[oss-security] Re: [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification" (number mark "U       christopher. Sep 10   19/630   " thread-indent "\"[oss-security] Re: [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification\"\n") "<CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>" ("<CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18163 invoked by uid 550); 10 Sep 2018 18:52:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13730 invoked from network); 10 Sep 2018 18:46:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=uP6mQS3SuiJkiHCY46y16BkXBv25OICe2MjCTT/ygl0=;
        b=b5V4DVe6WyeE/1gzCODatCcTbg7wc8lwuvbNvURUmUAOx9YTAqGAyx+4wqEkNUvRjA
         VFUxAMfhvB5kTAuWTJjnOMUGVtsndMPiX8quKrzTjckcDt+nEZN21xQXRZqEE2Wh1yPf
         /GngfSPPAabsQ+l2XViAJWoaoSXOOXDu5YS2QtZcTaRMt2/8kptennketOonRUcdCj32
         mp0qF2MVy8xo57yvste8bY3gS3JMHLKq7iJxw0npZKiETnLphIp05hHNXHvVa4dG1nXU
         FzELdJRl6kMxpXRlZ6E5mH/kFamTp+ibBt78s7W2La7bENXU0ZpX/3sP82Lu5QG26dI2
         T4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=uP6mQS3SuiJkiHCY46y16BkXBv25OICe2MjCTT/ygl0=;
        b=i/TDfZ4RqOMPxdocbU0NFk8+Dk2PmvwNUmuPBVlTMd49rEgefPMon3EL/sFrgFkNP7
         ciBGeqPGHS9IqePqP768ao1+H4BPeoJzSYxwf6tk3d27SJgkhKZVGpaI5Z9tLOWskMNi
         ST49QQwW4HbvenFrsPIPLBRy/OK4ArF2U1kwd9l5xBJ+DstP3rx21HcjTNParwX9BKBA
         FSUKlOtqMACQ5Ucr57cYkRSXiybxBDXH+nynQsS7ehl+Efs2AYAv35t1VIOavI+1EkX4
         fmWhQTTwm1TpXDCVsMgJY7SLqJiO9vXN9YB2/dYpc0YoyzHmENqIXWMGMEuMboROwyfk
         SgWw==
X-Gm-Message-State: APzg51CbtjkpnCDNg0abnSTzca3rVruPI8D9Ame7GnNtFQx6Q9CbkABl
	LEYinuHoGrYhOCcpJ0HCxBKXCAGSoI/MZAqysTOUsvQK
X-Google-Smtp-Source: ANB0VdYujE21rdM56qEP1NHpClPLmxmfaoL+UGRbgLxFND21tcLBzzbnQHhdoERpFs30K8MUdKfmmjbd0GGXsrl6nIM=
X-Received: by 2002:a81:f95:: with SMTP id 143-v6mr10278938ywp.91.1536605182801;
 Mon, 10 Sep 2018 11:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>
In-Reply-To: <CACHnxzys9=nsLrTd9CHOM9Um0UQPQV50PHoy906iqQ=3wDV6vg@mail.gmail.com>
From: Christopher Shannon <christopher.l.shannon@gmail.com>
Date: Mon, 10 Sep 2018 14:45:56 -0400
Message-ID: <CACHnxzxipvde-bzy=9ssjMJQMj8ipRmSf2Uowif_MgEZvCxSxg@mail.gmail.com>
To: dev@activemq.apache.org, users@activemq.apache.org
Cc: The Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: [ANNOUNCE] CVE-2018-11775: ActiveMQ Client - Missing TLS Hostname Verification

I just realized I had a typo in the announcement, the versions
affected should be:
Apache ActiveMQ 5.0.0 - 5.15.5

The file will be updated shortly.
On Mon, Sep 10, 2018 at 2:40 PM Christopher Shannon
<christopher.l.shannon@gmail.com> wrote:
>
> The following security vulnerability was reported against Apache
> ActiveMQ 5.15.5 and older versions.
>
> Please check the following document and see if you=E2=80=99re affected by=
 the issue.
>
> http://activemq.apache.org/security-advisories.data/CVE-2018-11775-announ=
cement.txt
>
> Apache ActiveMQ 5.15.6 has been released with appropriate fixes and is
> available for upgrade.
