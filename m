Received: (qmail 22227 invoked by uid 550); 21 Sep 2022 09:37:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11549 invoked from network); 20 Sep 2022 19:57:13 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACrzQf0YSZEz/NmRLUga/7bkOPrctejAASYQoMfajzPXerlRoN8xlH1J
	vd11TFAJ+WuekgLfjGQHUbKUjfh8NZjlxZrqRa4=
X-Google-Smtp-Source: AMsMyM5FqZCwERADHbA6A9DCPc8nwP/iBZRfT5pELfHu8M41D6l+/RFHasrI6wJpxByhGRMw5hND28+kq093FuvWb4w=
X-Received: by 2002:a05:6214:5287:b0:4ac:c99b:fdeb with SMTP id
 kj7-20020a056214528700b004acc99bfdebmr20855422qvb.41.1663703819263; Tue, 20
 Sep 2022 12:56:59 -0700 (PDT)
MIME-Version: 1.0
References: <c44d5503-8393-4048-2b2b-5bc3ddac3a43@apache.org> <20220902204301.GA3212087@millbarge>
In-Reply-To: <20220902204301.GA3212087@millbarge>
From: Jed Cunningham <jedcunningham@apache.org>
Date: Tue, 20 Sep 2022 13:56:47 -0600
X-Gmail-Original-Message-ID: <CAJ7ievqw=vXF-NL31ni7tHb7LHuz7e3x5hGQ_4YF2=3ybgbByA@mail.gmail.com>
Message-ID: <CAJ7ievqw=vXF-NL31ni7tHb7LHuz7e3x5hGQ_4YF2=3ybgbByA@mail.gmail.com>
To: Jedidiah Cunningham <jedcunningham@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000028beab05e9213b65"
Subject: Re: [oss-security] CVE-2022-38170: Apache Airflow: Overly permissive
 umask for deamons

--00000000000028beab05e9213b65
Content-Type: text/plain; charset="UTF-8"

Hi Seth,

Thanks for the feedback, and I agree. We will start adding links to the PR
fixing the issue going forward, starting with our announcements today.

Thanks,
Jed

On Fri, Sep 2, 2022, 2:43 PM Seth Arnold <seth.arnold@canonical.com> wrote:

> On Fri, Sep 02, 2022 at 03:55:07AM +0000, Jedidiah Cunningham wrote:
> > In Apache Airflow prior to 2.3.4, an insecure umask was configured for
> numerous Airflow components when running with the  `--deamon` flag which
> could result in a race condition giving world-writable files in the Airflow
> home directory and allowing local users to expose arbitrary file contents
> via the webserver.
>
> Hello Jedidiah,
>
> Thanks for contributing to the oss-security list; I believe your
> contributions would be far more valuable if they included some further
> details -- providing links to issues and commits is common, but you could
> also include the details in the email if that's easier for whatever reason.
>
> Thanks
>

--00000000000028beab05e9213b65--
