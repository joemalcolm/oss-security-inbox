Received: (qmail 28454 invoked by uid 550); 7 Sep 2022 12:20:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18373 invoked from network); 7 Sep 2022 05:36:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=GqN+Bbfol47W2BNgfW2nDa91CN3dkVl3xidYhnjFBOo=;
        b=npGu/QDNnu3Hdl12eY4hz0+V+zMs511aJM/4E1GUjRO6iR1WkSgppH5Zhueq+pnRVJ
         ELUHlRHsU8Wm5S8FLClAMUOYE7vXhPcN4PAui8rAo/MJOWj0zJgjUWbLJFhuXF8wJ6yu
         1fCyxFYzzaOAwjoYIXcp/WbzJp6DEP5qn96RltdOJ9lH+aS77IoOADx6g60Efv9HaF7e
         QR6yZQFipBZBxXZDC4TJJDNBF70UZQPlolrqcLKsNHI87/fFGwn5di6jgEocyiPWzp+o
         UbLlv8XHzHbdsN5lJcWSZXlmKIZdCt7CTTzX/eWWAbphfVcezjpPiJoriqLrQoVX4Tfp
         oIIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=GqN+Bbfol47W2BNgfW2nDa91CN3dkVl3xidYhnjFBOo=;
        b=gBuo5MAFtB6m0cFMLN7AjF4SQAdDHYSCpIb7N6Wdi5jYoOtYj5qw/ZECUlYFSFJBDu
         6NUJPF76Hq6YvUP8oilh/TaaQZfXt/EdtfLQQnOLIuyg4YD/F912Cj0X10E5as5+Mi7P
         k9ENw9X7bI9W1FqXz0JnpA3brzOyvpMRPP8YnFA94YTzZ8WgLicZvjXIql0F//2Ws8+I
         vjIWhDINFzeqFK4kmsPfmLH8aqNVJUeoNRist7q11+OPHGFjn7/SVUScU7eaLbgWb6XR
         W7k7NreXei4e4rao7EWlzIuo7a4YQIbKPLZmkQx5wC8kEW5NMLZZNBuXghcxsvWU/I/9
         D78Q==
X-Gm-Message-State: ACgBeo0bbucqckQH9Mhfh/gX4gjGjSFR8mAaO2nfbEJ9128txZ3Y0vjo
	aVOhztiGYdoQTz0cKU9qucmsSGhAOjbTFDBJFTt/wqBzxMk=
X-Google-Smtp-Source: AA6agR5hMDqKZ5rkd6ucZhtcWpZAt56IR4pO/8kpVq1wv6RzoI/rlHsa0BwkOY+Sanp/kWDOyH8pZZIlhQ3py1lCrKY=
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr872986wrr.583.1662528989652; Tue, 06
 Sep 2022 22:36:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org> <CAH8yC8k8C-gp9upSpJLsXrhBB5-qSnKGeP34+32A-_s5YG3UTA@mail.gmail.com>
 <20220907013017.GA1357227@millbarge>
In-Reply-To: <20220907013017.GA1357227@millbarge>
From: Georgi Guninski <gguninski@gmail.com>
Date: Wed, 7 Sep 2022 08:36:17 +0300
Message-ID: <CAGUWgD8f4V3uYf7wLjfHarRSwPo1PgqwDSWcNX6LaO_Cgco8vA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

On Wed, Sep 7, 2022 at 4:32 AM Seth Arnold <seth.arnold@canonical.com> wrote:

>
> Could an application that handles secrets and uses GMP use prctl(2)'s
> PR_SET_DUMPABLE command to prevent dumping the core file? It'd also
> prevent using ptrace-based debugging, so it's not without costs, but if
> it handles secrets, that's probably also a good idea.
>
on ubuntu 20 a lot of stuff depends on libgmp:

$ apt-cache rdepends libgmp10 | wc -l
2442
$ apt-cache rdepends libgmp10 | grep -i crypt | wc -l
28

some examples:
  gcc-9
  gawk
  g++-9
  dnsmasq-base
  cpp-9-s390x-linux-gnu

will the infidels who argue that crash in python is nothing
still will claim that gmp crash in any of the 2442 packages
is still nothing?
