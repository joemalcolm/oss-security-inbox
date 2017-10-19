X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["982" "Thursday" "19" "October" "2017" "09:57:45" "+0530" "Dollar Strike" "dollarstrike163@gmail.com" "<CAK2DMuLGKwK2coeWMsZkEYaa9jH31HR8q3Wr9tN5TxWXyOBq0Q@mail.gmail.com>" "38" "Re: [oss-security] Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20" nil nil nil "10" "2017101904:27:45" "[oss-security] Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20" (number mark "U       dollarstrike Oct 19   38/982   " thread-indent "\"Re: [oss-security] Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20\"\n") "<52301d2a-72db-417a-91cf-f2d37cf1a44e@chbi.eu>" ("<8a886780-1b10-6412-06bf-e61aef4a8a2c@chbi.eu>" "<52301d2a-72db-417a-91cf-f2d37cf1a44e@chbi.eu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28340 invoked by uid 550); 19 Oct 2017 09:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5404 invoked from network); 19 Oct 2017 04:27:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=rNBzpI/1CP27JgIDeLcQkdB7id8ipg0phojedagHr7s=;
        b=pYyWkgifpFCb4B8gHzNc75TN7tq0YvJYez5+Refdcegl0DSVAAhbixEx0GHGuvRVMd
         AqTOqgrz/2JdvAvaWnT7Q4X7AgEUQtX9+MS0/2o2dyHdBYWooCVMjmIpU4BIJS0lDEaD
         NxTIwIb/6dX3RZYPwIjzhyXxFqfFN39RnWPQLtv6meCbKAniQb+qyBvnWBVBDg86Pjj/
         SBxJJGAvreS+Xqd8jHaCf6Edwx8/sen5Fe9RujCECLQrgCFJwUN/0lEuAFNZzJMLrt4B
         UYZBAYu7gyOwQ9nV1SxAp57dldPBJR4SKEmFuyvdwQdeBGazeWj2IdFQU8iqH/3bsLPn
         kFFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=rNBzpI/1CP27JgIDeLcQkdB7id8ipg0phojedagHr7s=;
        b=DeJYH8l+enKQdH6qIrh495gF6pIrHr0toAsFQbTLWE1hdLgbADZ0nY+v2FFan2Gauh
         4QQbcGUuLka6xdhlj8ZGdYHC5CSd1llyU00fq12ECbZWJflw0hwjykaHp5fbKFi2IE+v
         vroDgyUVvO3iRKeQsSi9uijtbX226NRJ/xDY7fQPMkQdsjazDmfpnfmO5K5jJE8Jjd4O
         FPi4a6JHaSvAsnIiwypmDSX9BUijEvElVxLcFG+tVZCcUrwO8MXoogoVLP//SRb9OAEH
         IxE4qxIqQ0IQyRiJndnBVuRyAEsh7QCeW4oZRItkdg/KgBFQGEcGE2vKNU6NyoBngi5L
         fglQ==
X-Gm-Message-State: AMCzsaVX4AF9l9DM4ed+3rTJFTU8tCtfZKqAE3rsV4kiDeh/Qv4kHTDz
	Z7YpOKHHy0w6TdVPKnQv5vODNyattp8F8b6c6zQSUw==
X-Google-Smtp-Source: ABhQp+QbAnMrcVUKM2zia0JlKn6TSGCs7DjS8HDGornq9rd7B9C1bNVzYj8Ut7kZ7z75jpZVyKHjIWKVtJ4aPEfPEAs=
X-Received: by 10.107.3.193 with SMTP id e62mr383163ioi.88.1508387265604; Wed,
 18 Oct 2017 21:27:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <52301d2a-72db-417a-91cf-f2d37cf1a44e@chbi.eu>
References: <8a886780-1b10-6412-06bf-e61aef4a8a2c@chbi.eu> <52301d2a-72db-417a-91cf-f2d37cf1a44e@chbi.eu>
From: Dollar Strike <dollarstrike163@gmail.com>
Date: Thu, 19 Oct 2017 09:57:45 +0530
Message-ID: <CAK2DMuLGKwK2coeWMsZkEYaa9jH31HR8q3Wr9tN5TxWXyOBq0Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a113ecaee266fa1055bdec7f7"
Subject: Re: [oss-security] Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20

--001a113ecaee266fa1055bdec7f7
Content-Type: text/plain; charset="UTF-8"

I just skimmed through the fix, I am trying to understand how does this
function if (is_int(strpos(strtolower($a_val), "javascript"))) sanitize the
input as below payloads


1. %22%7D%5D%7D%29%3Balert%280%29%3B     --------> "}]});alert(0);
2. %27%27%3B%21--%22%3CXSS%3E%3D%26%7B%28%29%7D  ---> '';!--"<XSS>=&{()}

On Wed, Oct 18, 2017 at 10:28 PM, <chbi@chbi.eu> wrote:

>
> > A stored XSS vulnerability in the media object component allows an
> > authenticated user to inject JavaScript to gain administrator privileges.
> >
> >
> > Fix:
> > https://github.com/ILIAS-eLearning/ILIAS/commit/
> b2a4660afec1e87d41c83c8e381f549bc6dfc70f
> >
>
> CVE-2017-15538 has been assigned.
>
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-15538
>
>
> --
> chbi
> https://chbi.eu
>
> GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
>      https://chbi.eu/chbi.asc
>
>

--001a113ecaee266fa1055bdec7f7--
