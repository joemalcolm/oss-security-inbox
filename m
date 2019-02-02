X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1517" "Friday" "1" "February" "2019" "19:24:48" "-0800" "Mike Jumper" "mjumper@apache.org" "<CALKeL-M=gtsf36gurDm3N4h9z+8n63Q4DDWkZn8ULW2fKTbcgw@mail.gmail.com>" "48" "Re: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie" "^Cc:" nil nil "2" "2019020203:24:48" "[oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie" (number mark "U       mjumper@apac Feb  1   48/1517  " thread-indent "\"Re: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie\"\n") "<20190201122721.GA17576@eldamar.local>" ("<CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>" "<20190201122721.GA17576@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14081 invoked by uid 550); 2 Feb 2019 08:30:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7222 invoked from network); 2 Feb 2019 03:25:16 -0000
X-Gm-Message-State: AJcUukc3b0kJtqQfeUspOyTe+b5HFqca5vyF8q7EQHlHIX5xvLxMZOZQ
	JNfWzjeRcypIQdJCsd9BgTFkSqkZQqz2s0fui9JWrw==
X-Google-Smtp-Source: ALg8bN4SfY+86lh6pE3e5uUMK33PPQx7wqwXRSJVqsKUpzLgas/w0jBZPwtUdJOGjmlDJNhbP4OfCE2JfyN8qiulS8w=
X-Received: by 2002:aca:2409:: with SMTP id n9mr21092665oic.40.1549077901987;
 Fri, 01 Feb 2019 19:25:01 -0800 (PST)
MIME-Version: 1.0
References: <CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>
 <20190201122721.GA17576@eldamar.local>
In-Reply-To: <20190201122721.GA17576@eldamar.local>
X-Gmail-Original-Message-ID: <CALKeL-M=gtsf36gurDm3N4h9z+8n63Q4DDWkZn8ULW2fKTbcgw@mail.gmail.com>
Message-ID: <CALKeL-M=gtsf36gurDm3N4h9z+8n63Q4DDWkZn8ULW2fKTbcgw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000013e97f0580e0ce5b"
Cc: oss-security@lists.openwall.com
Date: Fri, 1 Feb 2019 19:24:48 -0800
From: Mike Jumper <mjumper@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag
 missing from session cookie
To: Salvatore Bonaccorso <carnil@debian.org>

--00000000000013e97f0580e0ce5b
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 1, 2019, 04:27 Salvatore Bonaccorso <carnil@debian.org wrote:

> Hi Mike,
>
> On Wed, Jan 23, 2019 at 02:21:30PM -0800, Mike Jumper wrote:
> > CVE-2018-1340: Secure flag missing from Apache Guacamole session cookie
> >
> > Versions affected:
> > Apache Guacamole 0.9.4 through 0.9.14
> >
> > Description:
> > Prior to 1.0.0, Apache Guacamole used a cookie for client-side storage
> > of the user's session token. This cookie lacked the "secure" flag,
> > which could allow an attacker eavesdropping on the network to
> > intercept the user's session token if unencrypted HTTP requests are
> > made to the same domain.
> >
> > Mitigation:
> > Users of Apache Guacamole 0.9.14 or older should upgrade to 1.0.0.
> >
> > Credit:
> > We would like to thank Ross Golder for reporting this issue.
>
> Would it be possible to confirm, is this
> https://issues.apache.org/jira/browse/GUACAMOLE-549
> https://github.com/apache/guacamole-client/commit/884a9c0ee987f9cb49a69
> ?
>

That is the correct JIRA issue, yes, however there are multiple relevant
commits.

With respect to the security aspect of the changes, the relevant pull
request is:

https://github.com/apache/guacamole-client/pull/273

There are other relevant pull requests, though they deal mainly with
eliminating cookies entirely:

https://github.com/apache/guacamole-client/pulls?utf8=%E2%9C%93&q=is%3Apr+is%3Aclosed+GUACAMOLE-549

- Mike

--00000000000013e97f0580e0ce5b--
